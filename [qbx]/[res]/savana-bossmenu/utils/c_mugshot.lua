local mugshotInProgress = false
local createdCamera = false
local lastCoord = vec3(0, 0, 0)
x = 1832.16
y = 2581.837
z = 46.48
r = {x = 0.0, y = 0.0, z = 92.23}
suspectheading = 265.00
suspectx = 1828.4
suspecty = 2581.7
suspectz = 44.1

RegisterNUICallback('updateImage', function(data, cb)
    saveImage()
end)

function MugShotCamera()
    Citizen.CreateThread(function ()
        local ped = PlayerPedId()
        local model = GetEntityModel(ped)
        SetEntityCoords(ped, suspectx, suspecty, suspectz)
        SetEntityHeading(ped, suspectheading)
        local response = lib.callback.await('savana-bossmenu:server:randomBucket', false)
        SetNuiFocus(true,true)
        
        ClearPedTasksImmediately(ped)

        if createdCamera ~= 0 then
            DestroyCam(createdCamera, 0)
            createdCamera = 0
        end
        local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", 1)
        SetCamCoord(cam, x, y, z)
        SetCamRot(cam, r.x, r.y, r.z, 2)
        if model == GetHashKey("mp_f_freemode_01") then
            SetCamFov(cam, 8.5)
        else
            SetCamFov(cam, 6.0)
        end
        RenderScriptCams(1, 0, 0, 1, 1)
        Wait(250)
        DisplayRadar(false)
        createdCamera = cam
        CreateThread(function()
            FreezeEntityPosition(ped, true)
            SetPauseMenuActive(false)
            while mugshotInProgress do
                DisableAllControlActions(0)
                EnableControlAction(0, 249, true)
                EnableControlAction(0, 46, true)
                Wait(1)
            end
        end)
    end)
end


function saveImage()
    lastCoord = GetEntityCoords(PlayerPedId())
    MugShotCamera()
    Citizen.Wait(2000)
    TakeMugShot()
end

function TakeMugShot()
    local webhook = lib.callback.await('savana-bossmenu:getWebhook', false)
    if webhook then
        exports['screenshot-basic']:requestScreenshotUpload(webhook, 'files[]', {encoding = 'jpg'}, function(data)
            local resp = json.decode(data)
            TriggerServerEvent('savana-bossmenu:saveImage', resp.attachments[1].url)
            SetNuiFocus(false,false)
            mugshotInProgress = false
            DestoryCamera()
            SetEntityCoords(PlayerPedId(), lastCoord)
            FreezeEntityPosition(PlayerPedId(), false)
            local response = lib.callback.await('savana-bossmenu:server:0bucket', false)
        end)
    end 
end

RegisterCommand('test5', function ()
    saveImage()
end)

FreezeEntityPosition(PlayerPedId(), false)

function DestoryCamera()
    DestroyCam(createdCamera, 0)
    RenderScriptCams(0, 0, 1, 1, 1)
    SetFocusEntity(GetPlayerPed(ped))
    ClearPedTasksImmediately(ped)
    FreezeEntityPosition(ped, false)
    DeleteObject(overlay)
    DeleteObject(board)
    handle = nil
    createdCamera = 0
end