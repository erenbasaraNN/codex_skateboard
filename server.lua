RegisterServerEvent("shareImOnSkate")
AddEventHandler("shareImOnSkate", function() 
--    print("Shareando!")
    local _source = source
    TriggerClientEvent("shareHeIsOnSkate", -1, _source)
end)

ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem("skateboard", function(source, item)
	local Player = ESX.GetPlayerFromId(source)
	Player.removeInventoryItem("skateboard", 1, item.slot) 
	TriggerClientEvent('skateboard:Spawn', source)
end)

RegisterServerEvent('skateboard:pick')
AddEventHandler('skateboard:pick', function(item, amount)	
	local Player = ESX.GetPlayerFromId(source)
	Player.addInventoryItem("skateboard", 1)
end)



