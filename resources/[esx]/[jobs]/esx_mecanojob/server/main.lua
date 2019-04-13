ESX                = nil
PlayersHarvesting  = {}
PlayersHarvesting2 = {}
PlayersCrafting    = {}
PlayersCrafting2   = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'mecano', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'mecano', 'mechanic_customer', true, true)
TriggerEvent('esx_society:registerSociety', 'mecano', 'Mecano', 'society_mecano', 'society_mecano', 'society_mecano', {type = 'private'})

RegisterServerEvent('esx_mecanojob:annonce')
AddEventHandler('esx_mecanojob:annonce', function(result)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local text     = result
	print(text)
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		TriggerClientEvent('esx_mecanojob:annonce', xPlayers[i],text)
	end

	Wait(8000)

	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		TriggerClientEvent('esx_mecanojob:annoncestop', xPlayers[i])
	end

end)

-------------- Récupération bouteille de gaz -------------
local function Harvest(source)
local _source = source
	SetTimeout(4000, function()

		if PlayersHarvesting[_source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

			if GazBottleQuantity >= 5 then
				TriggerClientEvent('esx:showNotification', _source, '~r~Vous n\'avez plus de place')
			else
                xPlayer.addInventoryItem('gazbottle', 1)

				Harvest(_source)
			end
		end
	end)
end

RegisterServerEvent('esx_mecanojob:startHarvest')
AddEventHandler('esx_mecanojob:startHarvest', function()
	local _source = source
	PlayersHarvesting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récupération de ~b~bouteille de gaz~s~...')
	Harvest(_source)
end)

RegisterServerEvent('esx_mecanojob:stopHarvest')
AddEventHandler('esx_mecanojob:stopHarvest', function()
	local _source = source
	PlayersHarvesting[_source] = false
end)
------------ Récupération Outils Réparation --------------
local function Harvest2(source)
local _source = source
	SetTimeout(4000, function()

		if PlayersHarvesting2[_source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
			if FixToolQuantity >= 5 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez ~r~plus de place')
			else
                xPlayer.addInventoryItem('fixtool', 1)

				Harvest2(_source)
			end
		end
	end)
end

RegisterServerEvent('esx_mecanojob:startHarvest2')
AddEventHandler('esx_mecanojob:startHarvest2', function()
	local _source = source
	PlayersHarvesting2[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récupération d\'~b~Outils réparation~s~...')
	Harvest2(_source)
end)

RegisterServerEvent('esx_mecanojob:stopHarvest2')
AddEventHandler('esx_mecanojob:stopHarvest2', function()
	local _source = source
	PlayersHarvesting2[_source] = false
end)

------------ Craft Chalumeau -------------------
local function Craft(source)
local _source = source
	SetTimeout(4000, function()

		if PlayersCrafting[_source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

			if GazBottleQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez ~r~pas assez~s~ de bouteille de gaz')
			else
                xPlayer.removeInventoryItem('gazbottle', 1)
                xPlayer.addInventoryItem('blowpipe', 1)

				Craft(_source)
			end
		end
	end)
end

RegisterServerEvent('esx_mecanojob:startCraft')
AddEventHandler('esx_mecanojob:startCraft', function()
	local _source = source
	PlayersCrafting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Assemblage de ~b~Chalumeaux~s~...')
	Craft(_source)
end)

RegisterServerEvent('esx_mecanojob:stopCraft')
AddEventHandler('esx_mecanojob:stopCraft', function()
	local _source = source
	PlayersCrafting[_source] = false
end)
------------ Craft kit Réparation --------------
local function Craft2(source)
local _source = source
	SetTimeout(4000, function()

		if PlayersCrafting2[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(_source)
			local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
			if FixToolQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez ~r~pas assez~s~ d\'outils réparation')
			else
                xPlayer.removeInventoryItem('fixtool', 1)
                xPlayer.addInventoryItem('fixkit', 1)

				Craft2(_source)
			end
		end
	end)
end

RegisterServerEvent('esx_mecanojob:startCraft2')
AddEventHandler('esx_mecanojob:startCraft2', function()
	local _source = source
	PlayersCrafting2[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Assemblage de ~b~Kit réparation~s~...')
	Craft2(_source)
end)

RegisterServerEvent('esx_mecanojob:stopCraft2')
AddEventHandler('esx_mecanojob:stopCraft2', function()
	local _source = source
	PlayersCrafting2[_source] = false
end)
---------------------------- NPC Job Earnings ------------------------------------------------------

RegisterServerEvent('esx_mecanojob:onNPCJobMissionCompleted')
AddEventHandler('esx_mecanojob:onNPCJobMissionCompleted', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	--local total   = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);
	--local total = 1000
	local societyAccount = nil

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
		societyAccount = account
	end)

	local playerMoney  = 85
    local societyMoney = 15

    xPlayer.addMoney(playerMoney)
    societyAccount.addMoney(societyMoney)

 	TriggerClientEvent("esx:showNotification", xPlayer.source, "Vous avez ~g~gagné~s~ ~g~$ ".. playerMoney)
 	TriggerClientEvent("esx:showNotification", xPlayer.source, "Votre société a ~g~gagné~s~ ~g~$ ".. societyMoney)

end)

---------------------------- register usable item --------------------------------------------------
ESX.RegisterUsableItem('blowpipe', function(source)

	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('blowpipe', 1)

	TriggerClientEvent('esx_mecanojob:onHijack', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Vous avez utilisé un ~b~Chalumeau')

end)

ESX.RegisterUsableItem('fixkit', function(source)

	local _source = source
	local xPlayer  = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('fixkit', 1)

	TriggerClientEvent('esx_mecanojob:onFixkit', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Vous avez utilisé un ~b~Kit de réparation')

end)

----------------------------------
---- Ajout Gestion Stock Boss ----
----------------------------------

RegisterServerEvent('esx_mecanojob:getStockItem')
AddEventHandler('esx_mecanojob:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez retiré x' .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_mecanojob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)
		cb(inventory.items)
	end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_mecanojob:putStockItems')
AddEventHandler('esx_mecanojob:putStockItems', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_mecano', function(inventory)

		local item = inventory.getItem(itemName)
		local playerItemCount = xPlayer.getInventoryItem(itemName).count

		if item.count >= 0 and count <= playerItemCount then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez ajouté x' .. count .. ' ' .. item.label)

	end)

end)

--ESX.RegisterServerCallback('esx_mecanojob:putStockItems', function(source, cb)

--	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_policestock', function(inventory)
--		cb(inventory.items)
--	end)

--end)

ESX.RegisterServerCallback('esx_mecanojob:getPlayerInventory', function(source, cb)
	local _source = source
	local xPlayer    = ESX.GetPlayerFromId(_source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)


-- Custom
RegisterServerEvent('esx_vehgroup:turbo')
AddEventHandler('esx_vehgroup:turbo', function()
	local _source = source


	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mecano', function(account)
		account.removeMoney(5000)
	end)

	TriggerClientEvent('esx:showNotification', _source, 'Votre entreprise à payé ~g~5000$ ~b~pour l\'achat du turbo ~s~...')
end)
