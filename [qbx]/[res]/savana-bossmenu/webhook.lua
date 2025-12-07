webhook = "https://discord.com/api/webhooks/1331669523220267162/"

lib.callback.register('savana-bossmenu:getWebhook', function(source)
    if webhook ~= "" then
        return webhook
    else
        return false
    end
end)