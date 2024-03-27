-- Callbacks

ESX.RegisterServerCallback("heidrun_totems:checkTotems", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local availableTotems = {}

    for totem, data in pairs(Config.Totems) do
        if xPlayer.getInventoryItem(totem).count > 0 then
            availableTotems[totem] = true
        else
            availableTotems[totem] = false
        end
    end

    cb(availableTotems)
end)

-- Events

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    TriggerClientEvent('heidrun_totems:checkTotems', source)
end)

RegisterNetEvent('esx:giveInventoryItem')
AddEventHandler('esx:giveInventoryItem', function(item)
    if Config.Totems[item] then 
        TriggerClientEvent('heidrun_totems:checkTotems', source)
    end
end)

RegisterNetEvent('esx:gitestveInventoryItem')
AddEventHandler('esx:gitestveInventoryItem', function(item)
    if Config.Totems[item] then 
        TriggerClientEvent('heidrun_totems:checkTotems', source)
    end
end)

RegisterNetEvent('esx:removeInventoryItem')
AddEventHandler('esx:removeInventoryItem', function(item)
    if Config.Totems[item] then 
        TriggerClientEvent('heidrun_totems:checkTotems', source)
    end
end)
