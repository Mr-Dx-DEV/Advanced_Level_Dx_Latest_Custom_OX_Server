local function shouldIgnorePriceMultiplier(modName)
  for _, mod in pairs(Config.Mods.Cosmetics) do
    if mod.name == modName then
      if mod.ignorePriceMult then
        return true
      end
    end
  end
  return false
end

local function calculateTotalCost(mechanicConfig, vehicleValue, cart)
  local totalCost = 0
  local allowedMods = mechanicConfig.mods

  if Config.ModsPricesAsPercentageOfVehicleValue then
    for category in pairs(allowedMods) do
      local categoryData = allowedMods[category]
      categoryData.price = round(vehicleValue * (categoryData.percentVehVal or 0.01), 0)
    end
  end

  for category, mods in pairs(cart) do
    for modName, mod in pairs(mods) do
      local modIndex = mod.modIndex
      local ignorePriceMult = shouldIgnorePriceMultiplier(modName)
      local categoryData = allowedMods[category]
      if categoryData and categoryData.price and categoryData.priceMult then
        local price = categoryData.price
        if not ignorePriceMult then
          local multiplier = type(modIndex) == "number" and modIndex > 0 and (1 + modIndex * (categoryData.priceMult or 0)) or 1
          price = round(price * multiplier, 0)
        end
        if modIndex == -1 then
          price = 0
        end
        totalCost = totalCost + price
      end
    end
  end
  return totalCost
end

lib.callback.register("jg-mechanic:server:purchase-mods", function(source, mechanicId, vehicleValue, cart, paymentMethod)
  local mechanicConfig = Config.MechanicLocations[mechanicId]
  if not mechanicConfig then return false end

  local isEmployee = isEmployee(source, mechanicId, { "mechanic", "manager" }, false)

  if paymentMethod ~= "noPayment" and paymentMethod ~= "mechanic" and paymentMethod ~= "bank" and paymentMethod ~= "cash" then
    Framework.Server.Notify(source, "INVALID_PAYMENT_METHOD", "error")
    return false
  end

  if paymentMethod == "noPayment" then
    if not (mechanicConfig.type == "owned" and isEmployee and not Config.DisableNoPaymentOptionForEmployees) then
      Framework.Server.Notify(source, "INVALID_PAYMENT_METHOD", "error")
      return false
    end
  end

  if paymentMethod == "noPayment" then return 0 end

  local totalCost = calculateTotalCost(mechanicConfig, vehicleValue, cart)

  if paymentMethod == "mechanic" and isEmployee and Config.MechanicEmployeesCanSelfServiceMods then
    if not removeFromSocietyFund(source, mechanicId, totalCost) then
      return false
    end
  elseif paymentMethod == "bank" or paymentMethod == "cash" then
    local playerBalance = Framework.Server.GetPlayerBalance(source, paymentMethod)
    if totalCost > playerBalance then
      Framework.Server.Notify(source, Locale.notEnoughMoney, "error")
      return false
    end
    Framework.Server.PlayerRemoveMoney(source, totalCost, paymentMethod)
    if mechanicConfig.type == "owned" then
      addToSocietyFund(source, mechanicId, totalCost)
    end
  else
    return false
  end
  return totalCost
end)

lib.callback.register("jg-mechanic:server:open-mods-menu", function(source, netId)
  if Config.ChangePlateDuringPreview then
    local vehicle = NetworkGetEntityFromNetworkId(netId)
    SetVehicleNumberPlateText(vehicle, Config.ChangePlateDuringPreview)
  end
  return true
end)

lib.callback.register("jg-mechanic:server:self-service-mods-applied", function(source, mechanicId, netId, plate, cart, amountPaid, paymentMethod)
  if Config.ChangePlateDuringPreview then
    local vehicle = NetworkGetEntityFromNetworkId(netId)
    SetVehicleNumberPlateText(vehicle, plate)
  end
  if not Webhooks.SelfService then return true end

  local breakdown = {}
  local function getModNames(mods, delimiter)
    local names = {}
    for name in pairs(mods) do
      names[#names + 1] = name
    end
    return table.concat(names, delimiter)
  end

  for category, mods in pairs(cart) do
    breakdown[#breakdown + 1] = {
      key = Locale[category] or category,
      value = getModNames(mods, ", ")
    }
  end

  sendWebhook(source, Webhooks.SelfService, "Self-Service Tuning Completed", "success", tableConcat({
    { key = "Mechanic", value = mechanicId },
    { key = "Vehicle", value = plate },
    { key = "Paid", value = amountPaid },
    { key = "Payment Method", value = paymentMethod }
  }, breakdown))

  return true
end)

lib.callback.register("jg-mechanic:server:place-order", function(source, mechanicId, plate, cart, amountPaid, propsToApply, paymentMethod)
  local mechanicConfig = Config.MechanicLocations[mechanicId]
  if not mechanicConfig then return false end

  local identifier = Framework.Server.GetPlayerIdentifier(source)
  local orderId = MySQL.insert.await("INSERT INTO mechanic_orders (identifier, mechanic, plate, cart, props_to_apply, amount_paid) VALUES (?, ?, ?, ?, ?, ?)", {
    identifier,
    mechanicId,
    plate,
    json.encode(cart),
    json.encode(propsToApply),
    amountPaid
  })

  TriggerEvent("jg-mechanic:server:order-placed-config", orderId, mechanicId, plate, cart, amountPaid, propsToApply, paymentMethod)
  sendWebhook(source, Webhooks.Orders, "Orders: Order Placed", "success", {
    { key = "Mechanic", value = mechanicId },
    { key = "Order #", value = orderId },
    { key = "Vehicle", value = plate },
    { key = "Paid", value = amountPaid },
    { key = "Payment Method", value = paymentMethod }
  })
  return true
end)

lib.callback.register("jg-mechanic:server:self-service-repair-vehicle", function(source, mechanicId, vehicleValue, paymentMethod)
  local mechanicConfig = Config.MechanicLocations[mechanicId]
  if not mechanicConfig then return false end

  local repairEnabled = mechanicConfig.mods.repair.enabled
  local repairPrice = mechanicConfig.mods.repair.price
  local repairPercent = mechanicConfig.mods.repair.percentVehVal
  if not repairEnabled then return false end

  if Config.ModsPricesAsPercentageOfVehicleValue then
    repairPrice = round(vehicleValue * (repairPercent or 0.01), 0)
  end

  if paymentMethod ~= "bank" and paymentMethod ~= "cash" then
    Framework.Server.Notify(source, "INVALID_PAYMENT_METHOD", "error")
    return false
  end

  local playerBalance = Framework.Server.GetPlayerBalance(source, paymentMethod)
  if repairPrice > playerBalance then
    Framework.Server.Notify(source, Locale.notEnoughMoney, "error")
    return false
  end

  Framework.Server.PlayerRemoveMoney(source, repairPrice, paymentMethod)
  if mechanicConfig.type == "owned" then
    addToSocietyFund(source, mechanicId, repairPrice)
  end
  return true
end)

lib.callback.register("jg-mechanic:server:count-currently-on-duty", function(source, mechanicId)
  local onDuty = GlobalState and GlobalState.mechanicsOnDuty
  if not onDuty then return 0 end
  local count = 0
  for playerId, onDutyMechanicId in pairs(onDuty) do
    if DoesEntityExist(GetPlayerPed(playerId)) and onDutyMechanicId == mechanicId then
      count = count + 1
    end
  end
  return count
end)