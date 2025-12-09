-- Client-side Lib wrapper for ox_lib callbacks
Lib = Lib or {}

-- Call server callback and execute callback with result
function Lib.Callback(name, cb, ...)
    local args = {...}
    Citizen.CreateThread(function()
        local result = lib.callback.await(name, false, table.unpack(args))
        if cb then
            cb(result)
        end
    end)
end
