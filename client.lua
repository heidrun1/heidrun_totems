-- Variables
local availableTotems = {}
local inProgress = false

-- Events

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.TriggerServerCallback("heidrun_totems:checkTotems", function(cb)
		availableTotems = cb
		inProgress = false
		Citizen.Wait(1000)
		RemoveTotems()
		TotemFunction()
	end)
end)

RegisterNetEvent("heidrun_totems:checkTotems")
AddEventHandler("heidrun_totems:checkTotems", function()
	ESX.TriggerServerCallback("heidrun_totems:checkTotems", function(cb)
		availableTotems = cb
		inProgress = false
		Citizen.Wait(1000)
		RemoveTotems()
		TotemFunction()
	end)
end)

-- Functions
function RemoveTotems()
	local playerPed = PlayerPedId()
	local playerId = PlayerId()
	for totem, data in pairs(Config.Totems) do
		if data.remove then
			data.remove(playerPed, playerId)
		end
	end
end

function TotemFunction()
	inProgress = true
	for totem, data in pairs(Config.Totems) do
		if availableTotems[totem] then
			Citizen.CreateThread(function()
				while inProgress do
					if data.action then
						data.action(PlayerPedId(), PlayerId())
					end
					Citizen.Wait(data.interval)
				end
			end)
		end
	end
end
