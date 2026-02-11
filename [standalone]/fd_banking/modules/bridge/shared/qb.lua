local resourceName = 'qb-core'

if not GetResourceState(resourceName):find('start') then return end

framework = 'qb'

SetTimeout(0, function()
    QBLogger = Logger.New("Bridge - QB")
end)
