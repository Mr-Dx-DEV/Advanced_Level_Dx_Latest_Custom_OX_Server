-- Shared Lib wrapper for ox_lib callbacks
Lib = {}

if IsDuplicityVersion() then
    -- Server-side: Register callbacks
    function Lib.registerCallback(name, cb)
        lib.callback.register(name, cb)
    end
else
    -- Client-side: Call callbacks
    function Lib.Callback(name, cb, ...)
        local args = {...}
        local result = lib.callback.await(name, false, table.unpack(args))
        if cb then
            cb(result)
        end
        return result
    end
end

return Lib
