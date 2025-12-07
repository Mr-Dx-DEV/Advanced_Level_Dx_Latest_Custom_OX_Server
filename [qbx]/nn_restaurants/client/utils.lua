
function SendReactMessage(action, data)
    SendNUIMessage({action = action, data = data})
end

local currentResourceName = GetCurrentResourceName()

local debugIsEnabled = GetConvarInt(
                           ('%s-debugMode'):format(currentResourceName), 0) == 1


function debugPrint(...)
    if not debugIsEnabled then return end
    local args<const> = {...}

    local appendStr = ''
    for _, v in ipairs(args) do appendStr = appendStr .. ' ' .. tostring(v) end
    local msgTemplate = '^3[%s]^0%s'
    local finalMsg = msgTemplate:format(currentResourceName, appendStr)
    print(finalMsg)
end

function RoundToTwoDecimals(value) return math.floor(value * 100) / 100 end

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    local scale = 0.35 + (1 / dist) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
    end
    DrawText(_x, _y)
end


function IsPlayerEmployee(restaurantId)
    if not State.PlayerRestaurant then return false end

    if restaurantId then
        return State.PlayerRestaurant.restaurantId == restaurantId
    else
        return true
    end
end

function GetPlayerRestaurantInfo() return State.PlayerRestaurant end

function IsPlayerEmployeeOfAnyRestaurant() return State.PlayerRestaurant ~= nil end

function GetPlayerRestaurantId()
    return State.PlayerRestaurant and State.PlayerRestaurant.restaurantId or nil
end

function ShowEmployeeAccessError()
    bridge.notification.show({
        message = T('access_denied_not_employee_restaurant'),
        type = 'error'
    })
end


function RefreshPlayerRestaurantCache()
    if RefreshPlayerRestaurantData then RefreshPlayerRestaurantData() end
end

function StartParticleAtCoord(ptDict, ptName, looped, coords, rot, scale, alpha, color, duration)
    RequestNamedPtfxAsset(ptDict)
    while not HasNamedPtfxAssetLoaded(ptDict) do Wait(100) end

    UseParticleFxAssetNextCall(ptDict)
    SetPtfxAssetNextCall(ptDict)

    local particleHandle

    if looped then
        particleHandle = StartParticleFxLoopedAtCoord(ptName, coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, scale or 1.0)

        if particleHandle and particleHandle ~= 0 then
            if color then
                SetParticleFxLoopedColour(particleHandle, color.r, color.g, color.b, false)
            end

            SetParticleFxLoopedAlpha(particleHandle, alpha or 10.0)

            if duration ~= 0 then
                Citizen.Wait(duration)
                StopParticleFxLooped(particleHandle, 0)
            end
        else
            return nil
        end
    else
        SetParticleFxNonLoopedAlpha(alpha or 10.0)

        if color then
            SetParticleFxNonLoopedColour(color.r, color.g, color.b)
        end

        StartParticleFxNonLoopedAtCoord(ptName, coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, scale or 1.0)
    end

    return particleHandle
end

local confirmed
local heading

function RotationToDirection(rotation)
	local adjustedRotation =
	{
		x = (math.pi / 180) * rotation.x,
		y = (math.pi / 180) * rotation.y,
		z = (math.pi / 180) * rotation.z
	}
	local direction =
	{
		x = -math.sin(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
		y = math.cos(adjustedRotation.z) * math.abs(math.cos(adjustedRotation.x)),
		z = math.sin(adjustedRotation.x)
	}
	return direction
end

function DrawPropAxes(prop)
    local propForward, propRight, propUp, propCoords = GetEntityMatrix(prop)

    local propXAxisEnd = propCoords + propRight * 1.0
    local propYAxisEnd = propCoords + propForward * 1.0
    local propZAxisEnd = propCoords + propUp * 1.0

    DrawLine(propCoords.x, propCoords.y, propCoords.z + 0.1, propXAxisEnd.x, propXAxisEnd.y, propXAxisEnd.z, 255, 0, 0, 255)
    DrawLine(propCoords.x, propCoords.y, propCoords.z + 0.1, propYAxisEnd.x, propYAxisEnd.y, propYAxisEnd.z, 0, 255, 0, 255)
    DrawLine(propCoords.x, propCoords.y, propCoords.z + 0.1, propZAxisEnd.x, propZAxisEnd.y, propZAxisEnd.z, 0, 0, 255, 255)
end

function RayCastGamePlayCamera(distance)
    local cameraRotation = GetGameplayCamRot()
	local cameraCoord = GetGameplayCamCoord()
	local direction = RotationToDirection(cameraRotation)
	local destination =
	{
		x = cameraCoord.x + direction.x * distance,
		y = cameraCoord.y + direction.y * distance,
		z = cameraCoord.z + direction.z * distance
	}
	local a, b, c, d, e = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, PlayerPedId(), 0))
	return b, c, e
end

local function DrawControlText(text, x, y)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.35)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function placeProp(prop)
    prop = joaat(prop)
    heading = 0.0
    pitch = 0.0
    confirmed = false

    RequestModel(prop)
    while not HasModelLoaded(prop) do
        Wait(0)
    end

    local hit, coords, entity

    while not hit do
        hit, coords, entity = RayCastGamePlayCamera(1000.0)
        Wait(0)
    end

    prop = CreateObject(prop, coords.x, coords.y, coords.z, true, false, true)

    while not confirmed do
        hit, coords, entity = RayCastGamePlayCamera(1000.0)

        SetEntityCoordsNoOffset(prop, coords.x, coords.y, coords.z, false, false, false, true)
        FreezeEntityPosition(prop, true)
        SetEntityCollision(prop, false, false)
        SetEntityAlpha(prop, 120, false)
        DrawPropAxes(prop)
        Wait(0)

        if IsControlPressed(0, 174) then
            heading = heading + 1.0
        elseif IsControlPressed(0, 175) then
            heading = heading - 1.0
        end

        if IsControlPressed(0, 241) then
            pitch = pitch + 3.0
        elseif IsControlPressed(0, 242) then
            pitch = pitch - 3.0
        end

        if heading > 360.0 then
            heading = 0.0
        elseif heading < 0.0 then
            heading = 360.0
        end

        if pitch > 360.0 then
            pitch = 0.0
        elseif pitch < 0.0 then
            pitch = 360.0
        end

        SetEntityRotation(prop, pitch, 0.0, heading, 2, true)

        DrawControlText(T('press_left_arrow_rotate_left'), 0.5, 0.80)
        DrawControlText(T('press_right_arrow_rotate_right'), 0.5, 0.85)
        DrawControlText("Scroll Up/Down: Rotate Pitch", 0.5, 0.90)
        DrawControlText(T('press_e_confirm_placement'), 0.5, 0.95)

        if IsControlJustPressed(0, 38) then
            local rotation = GetEntityRotation(prop)
            confirmed = true
            SetEntityAlpha(prop, 255, false)
            SetEntityCollision(prop, true, true)
            DeleteObject(prop)
            return {
                position = {
                    x = coords.x,
                    y = coords.y,
                    z = coords.z
                },
                rotation = {
                    x = pitch,
                    y = 0.0,
                    z = heading
                },
            }
        end
    end
end