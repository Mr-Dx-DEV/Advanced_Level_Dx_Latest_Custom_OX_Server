local atmPoints = {}

function prepareAtms()
    if Config.ForInteractionsUse == 'ox_target' then
        if Config.ATMModels then
            exports.ox_target:addModel(Config.ATMModels, {
                {
                    name = 'box',
                    onSelect = function()
                        openAtm()
                    end,
                    icon = 'fa-solid fa-piggy-bank',
                    label = locale('open_atm_target'),
                }
            })
        end
    end

    if Config.ForInteractionsUse == 'points' then
        if Config.ATMPoints then
            for _, position in pairs(Config.ATMPoints) do
                local index = #atmPoints + 1

                atmPoints[index] = {}

                if type(position) == "table" then
                    atmPoints[index].point = lib.points.new(
                        vector3(position.coords.x, position.coords.y, position.coords.z), 1, {
                            type = "maze"
                        })
                else
                    atmPoints[index].point = lib.points.new(vector3(position.x, position.y, position.z), 1, {
                        type = "fleeca"
                    })
                end
                local point = atmPoints[index].point

                function point:onEnter()
                    lib.showTextUI(('[E] - %s'):format(locale('open_atm_point')))
                end

                function point:onExit()
                    lib.hideTextUI()
                end

                function point:nearby()
                    DrawMarker(1, self.coords.x, self.coords.y, self.coords.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.4, 0.4,
                        0.4, 200, 20, 20, 50, false, true, 2, nil, nil, false)

                    if self.currentDistance < 1 and IsControlJustReleased(0, 38) then
                        if self.type == 'maze' then
                            UI.setMazeTheme()
                        elseif self.type == 'lombank' then
                            UI.setLombankTheme()
                        else
                            UI.setFleecaTheme()
                        end

                        openAtm()
                    end
                end
            end
        end
    end
end

Citizen.CreateThread(function()
    prepareAtms()
end)


AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        for _, point in pairs(atmPoints) do
            local point = point.point
            point:remove()
        end
    end
end)
