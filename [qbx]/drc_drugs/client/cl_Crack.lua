local TSE = TriggerServerEvent

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        exports.ox_target:removeZone('CrackProcess')
    end
end)

exports.ox_target:addSphereZone({
    coords = Config.Crack.Process.coords,
    radius = Config.Crack.Process.radius,
    debug = Config.Debug,
    options = {
        {
            name = 'crack_process',
            icon = "fas fa-pills",
            label = locale("MakeCrack"),
            event = "drc_drugs:crack:menu",
            args = { menu = "CrackProcess" },
            distance = 2.5
        }
    }
})

RegisterNetEvent("drc_drugs:crack:menu", function(data)
    if data.menu == "CrackProcess" then
        lib.registerContext({
            id = 'DrugsCrackMenu',
            title = locale("table"),
            options = {
                [Config.Crack.Process.header] = {
                    arrow = false,
                    description = Config.Crack.Process.description,
                    event = 'drc_drugs:crack:progress',
                    args = { menu = data.menu }
                }
            }
        })
        lib.showContext('DrugsCrackMenu')
    end
end)

RegisterNetEvent("drc_drugs:crack:progress")
AddEventHandler("drc_drugs:crack:progress", function(data)
    if data.menu == "CrackProcess" then
        lib.callback('drc_drugs:crack:getitem', false, function(value)
            if value then
                if not lib.progressActive() then
                    SetEntityCoords(cache.ped, Config.Crack.Process.Teleport, false, false, false, true)
                    TaskTurnPedToFaceCoord(cache.ped, Config.Crack.Process.coords, 2000)
                    if lib.progressBar({
                        duration = Config.Heroin.Process.Duration,
                        label = locale("CrackMaking"),
                        useWhileDead = false,
                        canCancel = false,
                        disable = {
                            move = true,
                            car = true,
                            combat = true,
                            mouse = false,
                        },
                        anim = {
                            dict = "anim@mp_player_intupperspray_champagne",
                            clip = "idle_a",
                        },
                        prop = {
                            model = "bkr_prop_coke_bottle_01a",
                            pos = vec3(0.0, 0.0, -0.22),
                            rot = vec3(0.0, 0.0, 0.0),
                            bone = 28422
                        },
                    }) then
                        TSE("drc_drugs:crack:giveitems", data.menu)
                    end
                end
            else
                Notify("error", locale("error"), locale("RequiredItems"))
            end
        end, data.menu)
    end
end)
