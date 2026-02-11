local bankBlips = {}
local bankPoints = {}

function isNearBank()
    local isNear = false
    local coords = GetEntityCoords(cache.ped)
    for key, bank in pairs(Config.Banks) do
        for _, position in pairs(bank.locations) do
            if Config.ForInteractionsUse == 'ox_target' and position.target and not isNear then
                local distance = #(vector3(position.target.coords.x, position.target.coords.y, position.target.coords.z) - coords)
                if distance < 10 then
                    isNear = true
                    break
                end
            end

            if Config.ForInteractionsUse == 'points' and position.point and not isNear then
                local distance = #(vector3(position.point.x, position.point.y, position.point.z) - coords)
                if distance < 10 then
                    isNear = true
                    break
                end
            end
        end
    end


    return isNear
end

function prepareBanks()
    for key, bank in pairs(Config.Banks) do
        for _, position in pairs(bank.locations) do
            if Config.ForInteractionsUse == 'ox_target' and position.target then
                exports.ox_target:addBoxZone({
                    coords = position.target.coords,
                    size = position.target.size,
                    rotation = position.target.rotation,
                    debug = false,
                    options = {
                        {
                            name = 'box',
                            onSelect = function()
                                openBank()
                            end,
                            icon = 'fa-solid fa-piggy-bank',
                            label = locale('open_bank_target'),
                        }
                    }
                })
            end

            if Config.ForInteractionsUse == 'points' and position.point then
                local index = #bankPoints + 1

                bankPoints[index] = {}
                bankPoints[index].point = lib.points.new(vector3(position.point.x, position.point.y, position.point.z), 1, {})
                local point = bankPoints[index].point

                function point:onEnter()
                    lib.showTextUI(('[E] - %s'):format(locale('open_bank_point')))
                end

                function point:onExit()
                    lib.hideTextUI()
                end

                function point:nearby()
                    DrawMarker(1, self.coords.x, self.coords.y, self.coords.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4, 0.4, 200, 20, 20, 50, false, true, 2, nil, nil, false)

                    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                        openBank()
                    end
                end
            end
        end

        if bank.blip and bank.blip?.enabled then
            local index = #bankBlips + 1

            bankBlips[index] = AddBlipForCoord(bank.blip.coords.x, bank.blip.coords.y, bank.blip.coords.z)
            SetBlipSprite(bankBlips[index], bank.blip.sprite)
            SetBlipDisplay(bankBlips[index], bank.blip.display or 4)
            SetBlipScale  (bankBlips[index], bank.blip.scale or 0.5)
            SetBlipColour (bankBlips[index], bank.blip.color or 2)
            SetBlipAsShortRange(bankBlips[index], bank.blip.isShortRange)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(tostring(bank.blip.label))
            EndTextCommandSetBlipName(bankBlips[index])
        end
    end
end

Citizen.CreateThread(function()
    prepareBanks()
end)


AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, blip in pairs(bankBlips) do
            RemoveBlip(blip)
        end

        for _, point in pairs(bankPoints) do
            local point = point.point
            point:remove()
        end
    end
end)
