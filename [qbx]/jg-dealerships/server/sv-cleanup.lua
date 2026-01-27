-- sv-cleanup.lua
RegisterNetEvent('jg-dealerships:server:cleanup-netveh', function(netId)
    if not netId then return end
    local ent = NetworkGetEntityFromNetworkId(netId)
    if ent and ent ~= 0 and DoesEntityExist(ent) then
        if not NetworkHasControlOfEntity(ent) then
            NetworkRequestControlOfEntity(ent)
            local timeout = GetGameTimer() + 1500
            while not NetworkHasControlOfEntity(ent) and GetGameTimer() < timeout do
                Wait(0)
            end
        end
        SetEntityAsMissionEntity(ent, true, true)
        DeleteEntity(ent)
    end
end)
