



RegisterNuiCallback('getConfig', function(data, cb)
    cb({
        primaryColor = GetConvar('prism:primaryColor', '#BEEE11'),
        notificationDuration = GetConvarInt('prism:notificationDuration', 3000),
        progressCancelKey = GetConvar('prism:progressCancelKey', 'X')
    })
end)
RegisterNuiCallback('getConfigValue', function(property, cb)
    if not property then return end
    local propertyValue = GetConvar(("prism:%s"):format(property), '')
    cb(propertyValue)
end)
