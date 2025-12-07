exports["savana-bossmenu"]:hasMoney(mechanic)

--server event
TriggerEvent('savana-bossmenu:removeMoney', mechanic, price) --serverevent
TriggerEvent('savana-bossmenu:addMoney', mechanic, price / 100 * 15)  --serverevent