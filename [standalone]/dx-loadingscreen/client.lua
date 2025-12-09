
local spawn1 = false							-- Variable pour vérifier si déjà spawn

AddEventHandler("playerSpawned", function () 	-- Attendre que le joueur spawn
	if not spawn1 then
		ShutdownLoadingScreenNui()				-- Fermer la ressource d'écran de chargement
		spawn1 = true
	end
end)

local firstSpawn = false

local function shutdownHandler()
	if firstSpawn then return end
	firstSpawn = true
	SendLoadingScreenMessage(json.encode({fullyLoaded = true}))
	ShutdownLoadingScreenNui()
end

exports('shutdown', shutdownHandler)