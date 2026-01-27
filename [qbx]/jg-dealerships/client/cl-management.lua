-- Open dealership management UI
RegisterNetEvent("jg-dealerships:client:open-management", function(dealershipId, fromAdmin)
  local location = Config.DealershipLocations[dealershipId]
  local data = lib.callback.await("jg-dealerships:server:get-dealership-data", false, dealershipId)
  
  SetNuiFocus(true, true)
  
  SendNUIMessage({
    type = "showAdmin",
    shopType = location.type,
    dealershipId = dealershipId,
    ownerId = data.ownerId,
    name = data.name,
    balance = data.balance or 0,
    commission = data.commission or 10,
    playerName = data.playerName,
    employeeRole = data.employeeRole,
    stats = data.stats,
    fromAdmin = fromAdmin or false,
    nearbyPlayers = data.nearbyPlayers,
    playerBalance = {
      bank = Framework.Client.GetBalance("bank"),
      cash = Framework.Client.GetBalance("cash")
    },
    roles = {"CEO", "Owner", "Employee"},
    locale = Locale,
    config = Config
  })
end)

RegisterNUICallback("open-dealership-management", function(data, cb)
  TriggerEvent("jg-dealerships:client:open-management", data.id, data.fromAdmin)
  cb(true)
end)
RegisterNUICallback("get-dealership-balance", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-balance", false, data.dealership)
  cb(result)
end)
RegisterNUICallback("get-dealership-vehicles", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-vehicles", false, data)
  cb(result)
end)

RegisterNUICallback("get-dealership-display-vehicles", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-display-vehicles", false, data)
  cb(result)
end)

RegisterNUICallback("get-dealership-orders", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-orders", false, data)
  cb(result)
end)

RegisterNUICallback("get-dealership-sales", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-sales", false, data)
  cb(result)
end)

RegisterNUICallback("get-dealership-employees", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:get-dealership-employees", false, data)
  cb(result)
end)

RegisterNUICallback("order-vehicle", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:order-vehicle", false, data.dealership, data.spawnCode, data.quantity)
  cb(result)
end)

RegisterNUICallback("cancel-vehicle-order", function(data, cb)
  local result = lib.callback.await("jg-dealerships:server:cancel-vehicle-order", false, data.orderId)
  cb(result)
end)
RegisterNUICallback("update-dealership-balance", function(data, cb)
  if data.action == "deposit" then
    local result = lib.callback.await("jg-dealerships:server:dealership-deposit", false, data.dealership, data.source, data.amount)
    return cb(result)
  elseif data.action == "withdraw" then
    local result = lib.callback.await("jg-dealerships:server:dealership-withdraw", false, data.dealership, data.amount)
    return cb(result)
  end
  cb({ error = true })
end)

RegisterNUICallback("update-vehicle-price", function(data, cb)
  TriggerServerEvent("jg-dealerships:server:update-vehicle-price", data.dealership, data.vehicle, data.newPrice)
  cb(true)
end)

RegisterNUICallback("update-dealership-settings", function(data, cb)
  TriggerServerEvent("jg-dealerships:server:update-dealership-settings", data.dealership, data)
  cb(true)
end)
