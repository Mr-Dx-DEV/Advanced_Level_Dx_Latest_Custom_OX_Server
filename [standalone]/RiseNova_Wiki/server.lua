local RESOURCE_NAME = "RiseNova_Wiki"

CreateThread(function()
    local current = GetCurrentResourceName()
    if current ~= RESOURCE_NAME then
        local msg = string.format(
            "[%s] ERROR: Resource has been renamed to '%s'. " ..
            "Please change the folder name back to '%s'. Stopping resource.",
            RESOURCE_NAME, current, RESOURCE_NAME
        )

        print("^1" .. msg .. "^0")
        Citizen.Wait(1000)
        StopResource(current)
        return
    end

    print(("^2[%s]^0 started successfully."):format(RESOURCE_NAME))
end)

RiseNova_Framework = "standalone"

