lib.callback.register("fd_banking:server:cb:createBusinessAccount", function()
    local input = lib.inputDialog('Business account creation', {
        { type = 'input',  label = 'Name',    description = 'Choose name which will be displayed.',                 required = true, min = 4, max = 16 },
        { type = 'number', label = 'Owner',   description = 'Please enter online player ID, to make him an owner.', icon = 'hashtag' },
        { type = 'number', label = 'Balance', description = 'This will be account starting balance.' },
    })

    if not input then
        return false
    end

    return {
        name = input[1],
        owner = tonumber(input[2]),
        balance = tonumber(input[3])
    }
end)
