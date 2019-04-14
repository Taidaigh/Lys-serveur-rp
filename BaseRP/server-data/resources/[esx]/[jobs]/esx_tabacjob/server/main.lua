-----------------------------------------
-- Created and modify by L'ile Légale RP
-- SenSi and Kaminosekai
-----------------------------------------

ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local vine = 1
local jus = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'tabac', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'tabac', _U('tabac_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'tabac', 'Tabac', 'society_tabac', 'society_tabac', 'society_tabac', {type = 'private'})
local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TabacFarm" then
			local itemQuantity = xPlayer.getInventoryItem('tabac').count
			if itemQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('tabac', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_tabacjob:startHarvest')
AddEventHandler('esx_tabacjob:startHarvest', function(zone)
	local _source = source

	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('tabac_taken'))
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_tabacjob:stopHarvest')
AddEventHandler('esx_tabacjob:stopHarvest', function()
	local _source = source

	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementTabac1" then
			local itemQuantity = xPlayer.getInventoryItem('tabac').count

			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('tabac', 1)
						xPlayer.addInventoryItem('cigar', 10)
						TriggerClientEvent('esx:showNotification', source, _U('tabac_b'))
						Transform(source, zone)
					end)
				else
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('tabac', 1)
						xPlayer.addInventoryItem('cigarett', 10)

						Transform(source, zone)
					end)
				end
			end
		elseif zone == "TraitementTabac2" then
			local itemQuantity = xPlayer.getInventoryItem('tabac2').count
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_raisin'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.removeInventoryItem('tabac', 1)
					xPlayer.addInventoryItem('cigarett', 10)

					Transform(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_tabacjob:startTransform')
AddEventHandler('esx_tabacjob:startTransform', function(zone)
	local _source = source

	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress'))
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_tabacjob:stopTransform')
AddEventHandler('esx_tabacjob:stopTransform', function()

	local _source = source

	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')

	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer votre tabac')
		PlayersTransforming[_source]=true

	end
end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)

		if zone == 'SellFarm' then
			if xPlayer.getInventoryItem('cigarett').count <= 0 then
				vine = 0
			else
				vine = 1
			end

			if xPlayer.getInventoryItem('cigar').count <= 0 then
				jus = 0
			else
				jus = 1
			end

			if vine == 0 and jus == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('cigarett').count <= 0 and jus == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_vin_sale'))
				vine = 0
				return
			elseif xPlayer.getInventoryItem('cigar').count <= 0 and vine == 0then
				TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
				jus = 0
				return
			else
				if (jus == 1) then
					SetTimeout(1100, function()
						local money = math.random(2,5)
						local money_emp = math.random(10,15)
						xPlayer.removeInventoryItem('cigar', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_tabac', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							xPlayer.addMoney(money_emp)

							TriggerClientEvent('esx:showNotification', xPlayer.source, "Vous avez ~g~agné~s~ ~g~$ ".. money_emp)
						end
						Sell(source,zone)
					end)
				elseif (vine == 1) then
					SetTimeout(1100, function()
						local money = math.random(5,10)
						local money_emp = math.random(20,25)
						xPlayer.removeInventoryItem('cigarett', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_tabac', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				end

			end
		end
	end
end

RegisterServerEvent('esx_tabacjob:startSell')
AddEventHandler('esx_tabacjob:startSell', function(zone)

	local _source = source

	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_tabacjob:stopSell')
AddEventHandler('esx_tabacjob:stopSell', function()

	local _source = source

	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')

	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_tabacjob:getStockItem')
AddEventHandler('esx_tabacjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_tabac', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_tabacjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_tabac', function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_tabacjob:putStockItems')
AddEventHandler('esx_tabacjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_tabac', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

	end)
end)

ESX.RegisterServerCallback('esx_tabacjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)

RegisterServerEvent('esx_tabacjob:annonce')
AddEventHandler('esx_tabacjob:annonce', function(result)
	local _source  = source
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local text     = result
	print(text)
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		TriggerClientEvent('esx_tabacjob:annonce', xPlayers[i],text)
	end

	Citizen.Wait(8000)

	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
 		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
 		TriggerClientEvent('esx_tabacjob:annoncestop', xPlayers[i])
	end

end)


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('cigarett', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local lighter = xPlayer.getInventoryItem('lighter')
    		if (lighter.count > 0) then
            xPlayer.removeInventoryItem('cigarett', 1)
      			TriggerClientEvent('esx_tabacjob:startSmoke', source)
      	else
            TriggerClientEvent('esx:showNotification', source, ('Vous n\'avez pas de ~r~briquet.'))
      	end
end)

local function Harvest(source, zone)
	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "BriquetFarm" then
			local itemQuantity = xPlayer.getInventoryItem('lighter').count
			if itemQuantity >= 50 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('lighter', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end
