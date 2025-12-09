local QBCore = exports['qb-core']:GetCoreObject()

local catseat = nil
local sitting = false
local Chairs = {}

CreateThread(function()
	for k, v in pairs(ChairsList) do
		Chairs["CatChair"..k] =
		exports['qb-target']:AddBoxZone("CatChair"..k, v.coords.xyz, 0.7, 0.7, { name="CatChair"..k, heading = v.coords.w, debugPoly= false, minZ = v.coords.z-1.2, maxZ = v.coords.z+0.1, },
			{ options = { { event = "dx-Businesses:Chair", icon = "fas fa-chair", label = "Sit Down", loc = v.coords, stand = v.stand }, },
				distance = 2.2
		})
	end
end)

RegisterNetEvent('dx-Businesses:Chair', function(data)
	local canSit = true
	local sitting = false
	local ped = PlayerPedId()
	for _, v in pairs(QBCore.Functions.GetPlayersFromCoords(data.loc.xyz, 0.6)) do
		local dist = #(GetEntityCoords(GetPlayerPed(v)) - data.loc.xyz)
		if dist <= 0.4 then TriggerEvent("QBCore:Notify", "Someone is already sitting there..", "error") canSit = false end
	end
	if canSit then
		if not IsPedHeadingTowardsPosition(ped, data.loc.xyz, 20.0) then TaskTurnPedToFaceCoord(ped, data.loc.xyz, 1500) Wait(1500)	end
		if #(data.loc.xyz - GetEntityCoords(PlayerPedId())) > 1.5 then TaskGoStraightToCoord(ped, data.loc.xyz, 0.5, 1000, 0.0, 0) Wait(1100) end
		TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z+0.5, data.loc[4], 0, 1, true)
		catseat = data.stand
		sitting = true
	end
	while sitting do
		if sitting then
			if IsControlJustReleased(0, 202) and IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then
				sitting = false
				ClearPedTasks(ped)
				if catseat then SetEntityCoords(ped, catseat) end
				catseat = nil
			end
		end
		Wait(5) if not IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then sitting = false end
	end
end)

ChairsList = {
	-- tacofarmer Chairs
	{ coords = vector4(12.2445, -1603.7843, 28.60, 331.9456), stand = vector3(13.2101, -1603.7145, 28.3605) },
	{ coords = vector4(13.0763, -1602.8022, 28.60, 331.9456), stand = vector3(13.9087, -1602.6547, 28.3605) },
	{ coords = vector4(13.8578, -1601.8577, 28.60, 331.9456), stand = vector3(15.01, -1602.04, 29.36) },
	{ coords = vector4(14.6818, -1600.912, 28.60, 331.9456), stand = vector3(15.75, -1600.9, 29.36) },
	{ coords = vector4(15.5335, -1599.8817, 28.60, 331.9456), stand = vector3(15.75, -1600.9, 29.36) },
	{ coords = vector4(15.5713, -1603.1587, 28.35, 328.01), stand = vector3(16.15, -1603.62, 29.36) },
	{ coords = vector4(16.6598, -1601.8632, 28.35, 139.64), stand = vector3(17.12, -1602.48, 29.36) },
	{ coords = vector4(17.3458, -1601.1052, 28.35, 328.01), stand = vector3(18.51, -1600.99, 29.36) },
	{ coords = vector4(18.4554, -1599.8137, 28.35, 139.64), stand = vector3(18.51, -1600.99, 29.36) }
}

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	for k in pairs(Chairs) do exports['qb-target']:RemoveZone(k) end
end)