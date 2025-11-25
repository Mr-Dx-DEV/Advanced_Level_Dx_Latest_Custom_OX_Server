RegisterNetEvent("tl_emotemenu:server:syncAnimpos", function(coords, heading)
    local source = source
    TriggerClientEvent("tl_emotemenu:client:syncAnimpos", -1, source, coords, heading)
end)
