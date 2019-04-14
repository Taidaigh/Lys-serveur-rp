ESX                = nil

PlayersHarvesting  = {}
PlayersHarvesting2 = {}
PlayersHarvesting3 = {}
PlayersHarvesting4 = {}
PlayersCrafting    = {}
PlayersCrafting2   = {}
PlayersReselling   = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'epicier', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'epicier', _U('epicier_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'epicier', 'epicier', 'society_epicier', 'society_epicier', 'society_epicier', {type = 'private'})

RegisterServerEvent('esx_epicierjob:getStockItem')
AddEventHandler('esx_epicierjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_epicierjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_epicierjob:putStockItems')
AddEventHandler('esx_epicierjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_epicierjob:getFridgeStockItem')
AddEventHandler('esx_epicierjob:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier_fridge', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_epicierjob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_epicierjob:putFridgeStockItems')
AddEventHandler('esx_epicierjob:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_epicier_fridge', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

------------------------------------------
-------------- Récolte Eau -------------
local function Harvest(source)

	SetTimeout(3000, function()

		if PlayersHarvesting[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local EauQuantity = xPlayer.getInventoryItem('water').count

			if EauQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de place')
			else
                xPlayer.addInventoryItem('water', 1)

				Harvest(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startHarvest')
AddEventHandler('esx_epicierjob:startHarvest', function()
	local _source = source
	PlayersHarvesting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récolte d\'~b~Eau~s~...')
	Harvest(source)
end)

RegisterServerEvent('esx_epicierjob:stopHarvest')
AddEventHandler('esx_epicierjob:stopHarvest', function()
	local _source = source
	PlayersHarvesting[_source] = false
end)
------------------------------------------------------
-------------- 	 Récolte Pain  --------------------
local function Harvest2(source)

	SetTimeout(3000, function()

		if PlayersHarvesting2[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local PainQuantity = xPlayer.getInventoryItem('bread').count

			if PainQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de place')
			else
                xPlayer.addInventoryItem('bread', 1)

				Harvest2(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startHarvest2')
AddEventHandler('esx_epicierjob:startHarvest2', function()
	local _source = source
	PlayersHarvesting2[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récolte de ~b~Pain~s~...')
	Harvest2(source)
end)

RegisterServerEvent('esx_epicierjob:stopHarvest2')
AddEventHandler('esx_epicierjob:stopHarvest2', function()
	local _source = source
	PlayersHarvesting2[_source] = false
end)
------------------------------------------------------
-------------- 	 Récolte Sucre  --------------------
local function Harvest3(source)

	SetTimeout(3000, function()

		if PlayersHarvesting3[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local SucreQuantity = xPlayer.getInventoryItem('sucre').count

			if SucreQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de place')
			else
                xPlayer.addInventoryItem('sucre', 1)

				Harvest3(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startHarvest3')
AddEventHandler('esx_epicierjob:startHarvest3', function()
	local _source = source
	PlayersHarvesting3[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récolte de ~b~Sucre~s~...')
	Harvest3(source)
end)

RegisterServerEvent('esx_epicierjob:stopHarvest3')
AddEventHandler('esx_epicierjob:stopHarvest3', function()
	local _source = source
	PlayersHarvesting3[_source] = false
end)
------------------------------------------------------
-------------- 	 Récolte Viande  --------------------
local function Harvest4(source)

	SetTimeout(3000, function()

		if PlayersHarvesting4[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local ViandeQuantity = xPlayer.getInventoryItem('viande').count

			if ViandeQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez plus de place')
			else
                xPlayer.addInventoryItem('viande', 1)

				Harvest4(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startHarvest4')
AddEventHandler('esx_epicierjob:startHarvest4', function()
	local _source = source
	PlayersHarvesting4[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Récolte de ~b~Viande~s~...')
	Harvest4(source)
end)

RegisterServerEvent('esx_epicierjob:stopHarvest4')
AddEventHandler('esx_epicierjob:stopHarvest4', function()
	local _source = source
	PlayersHarvesting4[_source] = false
end)
----------------- Traitement des produits -------------------------------------
----------------- 	Craft Coca Cola	-------------------------------------
local function Craft(source)

	SetTimeout(3000, function()

		if PlayersCrafting[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local EauQuantity    = xPlayer.getInventoryItem('water').count
			local SucreQuantity  = xPlayer.getInventoryItem('sucre').count
            if EauQuantity <= 0 then
			elseif SucreQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas assez~s~ d\'Eau et de Sucre')
			else
                xPlayer.removeInventoryItem('water', 1)
				        xPlayer.removeInventoryItem('sucre', 1)
                xPlayer.addInventoryItem('coca', 1)

				Craft(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startCraft')
AddEventHandler('esx_epicierjob:startCraft', function()
	local _source = source
	PlayersCrafting[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Préparation de ~b~Coca~s~...')
	Craft(_source)
end)

RegisterServerEvent('esx_epicierjob:stopCraft')
AddEventHandler('esx_epicierjob:stopCraft', function()
	local _source = source
	PlayersCrafting[_source] = false
end)
----------------- Craft Hamburger  -------------------------------------
local function Craft2(source)

	SetTimeout(3000, function()

		if PlayersCrafting2[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)
			local PainQuantity    = xPlayer.getInventoryItem('bread').count
			local ViandeQuantity  = xPlayer.getInventoryItem('viande').count
            if PainQuantity <= 0 then
			elseif ViandeQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas assez~s~ de Pain et de Viande')
			else
                xPlayer.removeInventoryItem('bread', 1)
				        xPlayer.removeInventoryItem('viande', 1)
                xPlayer.addInventoryItem('hamburger', 1)

				Craft2(source)
			end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startCraft2')
AddEventHandler('esx_epicierjob:startCraft2', function()
	local _source = source
	PlayersCrafting2[_source] = true
	TriggerClientEvent('esx:showNotification', _source, 'Préparation de ~b~Hamburger~s~...')
	Craft2(_source)
end)

RegisterServerEvent('esx_epicierjob:stopCraft2')
AddEventHandler('esx_epicierjob:stopCraft2', function()
	local _source = source
	PlayersCrafting2[_source] = false
end)
---------------- Revente Hamburger -----------------------
local function Resell(source)

	SetTimeout(1000, function()

		if PlayersReselling[source] == true then

			   local xPlayer  = ESX.GetPlayerFromId(source)
			   local HambQuantity = xPlayer.getInventoryItem('hamburger').count

			    if HambQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez plus d\'Hamburger à vendre')
			    else

					xPlayer.removeInventoryItem('hamburger', 1)
					xPlayer.addMoney(10)

					Resell(source)
				end
		end
	end)
end

RegisterServerEvent('esx_epicierjob:startResell')
AddEventHandler('esx_epicierjob:startResell', function()
	local _source = source
	PlayersReselling[source] = true
	TriggerClientEvent('esx:showNotification', source, 'Vente d\'~b~Hamburger~s~ en cours...')
	Resell(source)
end)

RegisterServerEvent('esx_epicierjob:stopResell')
AddEventHandler('esx_epicierjob:stopResell', function()
	local _source = source
	PlayersReselling[source] = false
end)
---------------------------------------------------------------------

ESX.RegisterServerCallback('esx_epicierjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

