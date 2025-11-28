AC = {}
local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
    while true do
        sleep = 1000
        for i, pos in ipairs(Pos) do
            local playerPed = GetPlayerPed(-1)
            local playerCoords = GetEntityCoords(playerPed)
            local distance = GetDistanceBetweenCoords(playerCoords, pos.x, pos.y, pos.z, true)
            if distance < 3.0 then
                sleep = 5
                if AC[i].job == "" or AC[i].job == " " then 
                    DrawText3D(pos.x, pos.y, pos.z, "" .. AC[i].name .. " Press [E]")
                        if IsControlJustReleased(0, 38) then
                            SendNUIMessage({
                                action = "OPEN",
                                data = {
                                    marketName = AC[i].name,
                                    marketCategory = AC[i].category,
                                    marketItemList = AC[i].itemList,
                                    marketCategoryList = AC[i].categoryList,
                                    marketJob = AC[i].job,
                                }
                            })
                            SetNuiFocus(true, true)
                            sleep = 1000
                        end
                    else
                        if AC[i].job ~= nil then
                            local playerJob = QBCore.Functions.GetPlayerData().job.name
                            if playerJob == AC[i].job then
                                DrawText3D(pos.x, pos.y, pos.z, "" .. AC[i].name .. " Press [E]")
                                if IsControlJustReleased(0, 38) then
                                    SendNUIMessage({
                                        action = "OPEN",
                                        data = {
                                            marketName = AC[i].name,
                                            marketCategory = AC[i].category,
                                            marketItemList = AC[i].itemList,
                                            marketCategoryList = AC[i].categoryList,
                                            marketJob = AC[i].job,
                                        }
                                    })
                                    SetNuiFocus(true, true)
                                    sleep = 1000
                                end
                            end
                        end
                    end
                end      
            end
        Citizen.Wait(sleep)
    end
end)

RegisterNUICallback("close",function()
    SetNuiFocus(false, false)
end)

RegisterNUICallback("pay",function(data)
    TriggerServerEvent("ac-shop:pay", data)
end)


function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end
