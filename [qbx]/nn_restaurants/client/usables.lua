function AddPropToPlayer(prop1, bone, off1, off2, off3, rot1, rot2, rot3, textureVariation, PedPreview)

    Player_Props = PlayerPedId()

    local x, y, z = table.unpack(GetEntityCoords(Player_Props))

    if not IsModelValid(prop1) then
        return false
    end

    if not HasModelLoaded(prop1) then
        LoadPropDict(prop1)
    end

    prop = CreateObject(joaat(prop1), x, y, z + 0.2, true, true, true)

    if textureVariation ~= nil then
        SetObjectTextureVariation(prop, textureVariation)
    end

    PlayerHasProp = true
    AttachEntityToEntity(prop, Player_Props, GetPedBoneIndex(Player_Props, bone), off1, off2, off3, rot1, rot2, rot3, true, true,
    false, true, 1, true)

    SetModelAsNoLongerNeeded(prop1)
    return true
end


function PlayAnim(dict, anim, duration, object, bone, offsets)
    local playerPed = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(100)
    end
    local object = CreateObject(joaat(object), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(playerPed, bone)
    TaskPlayAnim(playerPed, dict, anim, 5.0, 5.0, duration, 51, 0, false, false, false)

    AttachEntityToEntity(object, playerPed, boneIndex, offsets[1], offsets[2], offsets[3], offsets[4], offsets[5], offsets[6], true, true, false, true, 1, true)

    SetModelAsNoLongerNeeded(object)
end

RegisterNetEvent('nn_food:eatingAnim', function(anim, type)
    local playerPed = PlayerPedId()
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    RequestAnimDict(anim.dict)
    while not HasAnimDictLoaded(anim.dict) do
        Wait(100)
    end
    local object = CreateObject(joaat(anim.object), x, y, z + 0.2, true, true, true)
    local boneIndex = GetPedBoneIndex(playerPed, anim.bone)
    TaskPlayAnim(playerPed, anim.dict, anim.anim, 5.0, 5.0, anim.duration, 51, 0, false, false, false)
    AttachEntityToEntity(object, playerPed, boneIndex, anim.offsets[1], anim.offsets[2], anim.offsets[3], anim.offsets[4], anim.offsets[5], anim.offsets[6], true, true, false, true, 1, true)
    SetModelAsNoLongerNeeded(object)

    bridge.progressbar.show({
        duration = 5000,
        title = type == 'food' and T('eating') or T('drinking'),
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = false,
            car = false,
            combat = true,
        },
    }, function()
        ClearPedTasks(playerPed)
        DeleteObject(object)
        RemoveAnimDict(anim.dict)
    end)
end)