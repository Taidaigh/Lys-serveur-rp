local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX                             = nil
local PlayerData                = {}
local GUI                       = {}
GUI.Time                        = 0
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local OnJob                     = false
local CurrentCustomer           = nil
local CurrentCustomerBlip       = nil
local DestinationBlip           = nil
local IsNearCustomer            = false
local CustomerIsEnteringVehicle = false
local CustomerEnteredVehicle    = false
local TargetCoords              = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(1)
	end
end)

function DrawSub(msg, time)
  ClearPrints()
	SetTextEntry_2("STRING")
	AddTextComponentString(msg)
	DrawSubtitleTimed(time, 1)
end

function Message()
	Citizen.CreateThread(function()
    while messagenotfinish do
    		Citizen.Wait(1)

			DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 70)
		    while (UpdateOnscreenKeyboard() == 0) do
		        DisableAllControlActions(0);
		       Citizen.Wait(1)
		    end
		    if (GetOnscreenKeyboardResult()) then
		        local result = GetOnscreenKeyboardResult()
		        messagenotfinish = false
		       TriggerServerEvent('esx_taxijob:annonce',result)
		        
		    end


		end
	end)
	
end

function ShowLoadingPromt(msg, time, type)
	Citizen.CreateThread(function()
		Citizen.Wait(1)
		N_0xaba17d7ce615adbf("STRING")
		AddTextComponentString(msg)
		N_0xbd12f8228410d9b4(type)
		Citizen.Wait(time)
		N_0x10d373323e5b9c0d()
	end)
end


function GetRandomWalkingNPC()

	local search = {}
	local peds   = ESX.Game.GetPeds()

	for i=1, #peds, 1 do
		if IsPedHuman(peds[i]) and IsPedWalking(peds[i]) and not IsPedAPlayer(peds[i]) then
			table.insert(search, peds[i])
		end
	end

	if #search > 0 then
		return search[GetRandomIntInRange(1, #search)]
	end

end

function ClearCurrentMission()

	if DoesBlipExist(CurrentCustomerBlip) then
		RemoveBlip(CurrentCustomerBlip)
	end

	if DoesBlipExist(DestinationBlip) then
		RemoveBlip(DestinationBlip)
	end

	CurrentCustomer           = nil
	CurrentCustomerBlip       = nil
	DestinationBlip           = nil
	IsNearCustomer            = false
	CustomerIsEnteringVehicle = false
	CustomerEnteredVehicle    = false
	TargetCoords              = nil

end

function StartTaxiJob()

	ShowLoadingPromt(_U('taking_service') .. 'Taxi/Uber', 5000, 3)
	ClearCurrentMission()

	OnJob = true

end

function StopTaxiJob()

	local playerPed = GetPlayerPed(-1)

	if IsPedInAnyVehicle(playerPed, false) and CurrentCustomer ~= nil then
		local vehicle = GetVehiclePedIsIn(playerPed,  false)
		TaskLeaveVehicle(CurrentCustomer,  vehicle,  0)

		if CustomerEnteredVehicle then
			TaskGoStraightToCoord(CurrentCustomer,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z,  1.0,  -1,  0.0,  0.0)
		end

	end

 	ClearCurrentMission()

	OnJob = false

	DrawSub('Mission terminée', 5000)

end

function OpenTaxiActionsMenu()

	local elements = {
		{label = _U('spawn_veh'), value = 'spawn_vehicle'},
		{label = _U('work_wear'), value = 'cloakroom'},
		{label = _U('civ_wear'), value = 'cloakroom2'},
	    {label ='Déposer Stock', value = 'put_stock'},
	    {label ='Retirer Stock', value = 'get_stock'}	
	}

	if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
  	table.insert(elements, {label = 'Action Patron', value = 'boss_actions'})
	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'taxi_actions',
		{
			title    = 'Taxi',
			elements = elements
		},
		function(data, menu)

			if data.current.value == 'spawn_vehicle' then

				menu.close()

				if Config.MaxInService == -1 then

					local playerPed = GetPlayerPed(-1)
					local coords    = Config.Zones.VehicleSpawnPoint.Pos
					local platenum = math.random(100, 900)

					ESX.Game.SpawnVehicle('taxi', coords, 225.0, function(vehicle)
						SetVehicleNumberPlateText(vehicle, "TAXI" .. platenum)
						TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
						local plate = GetVehicleNumberPlateText(vehicle)
                        plate = string.gsub(plate, " ", "")
                        TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
					end)

				else

					ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)

						if canTakeService then

							local playerPed = GetPlayerPed(-1)
							local coords    = Config.Zones.VehicleSpawnPoint.Pos

							local platenum = math.random(100, 900)

					        ESX.Game.SpawnVehicle('taxi', coords, 225.0, function(vehicle)
						    SetVehicleNumberPlateText(vehicle, "TAXI" .. platenum)
						    TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
						    local plate = GetVehicleNumberPlateText(vehicle)
                            plate = string.gsub(plate, " ", "")
                            TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
							end)

						else

							ESX.ShowNotification(_U('full_service') .. inServiceCount .. '/' .. maxInService)

						end

					end, 'taxi')

				end

			end
			
			if data.current.value == 'cloakroom' then
			TriggerServerEvent("player:serviceOn", "taxi")
			  menu.close()
			  ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

				if skin.sex == 0 then
					TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
				else
					TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
				end

			  end)
			end

		    if data.current.value == 'cloakroom2' then
			TriggerServerEvent("player:serviceOff", "taxi")
			  menu.close()
			  ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

					TriggerEvent('skinchanger:loadSkin', skin)

			  end)
		    end

		    if data.current.value == 'put_stock' then
		      OpenPutStocksMenu()
		    end

		    if data.current.value == 'get_stock' then
		      OpenGetStocksMenu()
		    end

			if data.current.value == 'withdraw_society_money' then

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'withdraw_society_money_amount',
					{
						title = _U('withdraw_amount')
					},
					function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil then
							ESX.ShowNotification(_U('amount_invalid'))
						else
							menu.close()
							TriggerServerEvent('esx_society:withdrawMoney', 'taxi', amount)
						end

					end,
					function(data, menu)
						menu.close()
					end
				)

			end

			if data.current.value == 'deposit_money' then

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'deposit_money_amount',
					{
						title = _U('deposit_amount')
					},
					function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil then
							ESX.ShowNotification(_U('amount_invalid'))
						else
							menu.close()
							TriggerServerEvent('esx_society:depositMoney', 'taxi', amount)
						end

					end,
					function(data, menu)
						menu.close()
					end
				)

			end

			if data.current.value == 'boss_actions' then
				TriggerEvent('esx_society:openBossMenu', 'taxi', function(data, menu)
					menu.close()
				end)
			end

			if data.current.value == 'wash_money' then

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'wash_money_amount',
					{
						title = _U('launder_amount')
					},
					function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil then
							ESX.ShowNotification(_U('amount_invalid'))
						else
							menu.close()
							TriggerServerEvent('esx_society:washMoney', 'taxi', amount)
						end

					end,
					function(data, menu)
						menu.close()
					end
				)

			end

		end,
		function(data, menu)

			menu.close()

			CurrentAction     = 'taxi_actions_menu'
			CurrentActionMsg  = _U('press_to_open')
			CurrentActionData = {}

		end
	)

end

function OpenMobileTaxiActionsMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mobile_taxi_actions',
		{
			title    = 'Taxi',
			elements = {
			    {label = 'Passer une annonce', value = 'announce'},
				{label = _U('billing'), value = 'billing'}
			}
		},
		function(data, menu)

			if data.current.value == 'billing' then

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'billing',
					{
						title = _U('invoice_amount')
					},
					function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil then
							ESX.ShowNotification(_U('amount_invalid'))
						else

							menu.close()

							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification(_U('no_players_near'))
							else
							  local playerPed        = GetPlayerPed(-1)

								Citizen.CreateThread(function()
									TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
									Citizen.Wait(5000)
									ClearPedTasks(playerPed)
								    TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_taxi', 'Taxi', amount)
								end)
							end

						end

					end,
					function(data, menu)
						menu.close()
					end
				)

			end

			if data.current.value == 'announce' then
			  messagenotfinish = true
			  Message()
			end

		end,
		function(data, menu)
			menu.close()
		end
	)

end

function OpenGetStocksMenu()

  ESX.TriggerServerCallback('esx_taxijob:getStockItems', function(items)

    print(json.encode(items))

    local elements = {}

    for i=1, #items, 1 do

      local item = items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = 'Taxi Stock',
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('esx_taxijob:getStockItem', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutStocksMenu()

ESX.TriggerServerCallback('esx_taxijob:getPlayerInventory', function(inventory)

    local elements = {}

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('inventory'),
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('esx_taxijob:putStockItems', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

AddEventHandler('esx_taxijob:hasEnteredMarker', function(zone)

	if zone == 'TaxiActions' then
		CurrentAction     = 'taxi_actions_menu'
		CurrentActionMsg  = _U('press_to_open')
		CurrentActionData = {}
	end

	if zone == 'VehicleDeleter' then

		local playerPed = GetPlayerPed(-1)

		if IsPedInAnyVehicle(playerPed,  false) then
			CurrentAction     = 'delete_vehicle'
			CurrentActionMsg  = _U('store_veh')
			CurrentActionData = {}
		end

	end

end)

AddEventHandler('esx_taxijob:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)

-- Create Blips
Citizen.CreateThread(function()

	local blip = AddBlipForCoord(Config.Zones.TaxiActions.Pos.x, Config.Zones.TaxiActions.Pos.y, Config.Zones.TaxiActions.Pos.z)

	SetBlipSprite (blip, 198)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.8)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Taxi")
	EndTextCommandSetBlipName(blip)

end)

-- Display markers
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(1)

		if PlayerData.job ~= nil and PlayerData.job.name == 'taxi' then

			local coords = GetEntityCoords(GetPlayerPed(-1))

			for k,v in pairs(Config.Zones) do
				if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
					DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
				end
			end

		end

	end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(1)

		if PlayerData.job ~= nil and PlayerData.job.name == 'taxi' then

			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
			local currentZone = nil

			for k,v in pairs(Config.Zones) do
				if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
					isInMarker  = true
					currentZone = k
				end
			end

			if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
				HasAlreadyEnteredMarker = true
				LastZone                = currentZone
				TriggerEvent('esx_taxijob:hasEnteredMarker', currentZone)
			end

			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_taxijob:hasExitedMarker', LastZone)
			end

		end

	end
end)

-- Taxi Job
Citizen.CreateThread(function()

	while true do

		Citizen.Wait(1)

		local playerPed = GetPlayerPed(-1)

		if OnJob then

			if CurrentCustomer == nil then

				DrawSub(_U('drive_search_pass'), 5000)

				if IsPedInAnyVehicle(playerPed,  false) and GetEntitySpeed(playerPed) > 0 then

					local waitUntil = GetGameTimer() + GetRandomIntInRange(30000,  45000)

					while OnJob and waitUntil > GetGameTimer() do
						Citizen.Wait(1)
					end

					if OnJob and IsPedInAnyVehicle(playerPed,  false) and GetEntitySpeed(playerPed) > 0 then

						CurrentCustomer = GetRandomWalkingNPC()

						if CurrentCustomer ~= nil then

							CurrentCustomerBlip = AddBlipForEntity(CurrentCustomer)

							SetBlipAsFriendly(CurrentCustomerBlip, 1)
							SetBlipColour(CurrentCustomerBlip, 2)
							SetBlipCategory(CurrentCustomerBlip, 3)
							SetBlipRoute(CurrentCustomerBlip,  true)

							SetEntityAsMissionEntity(CurrentCustomer,  true, false)
							ClearPedTasksImmediately(CurrentCustomer)
							SetBlockingOfNonTemporaryEvents(CurrentCustomer, 1)

							local standTime = GetRandomIntInRange(60000,  180000)

							TaskStandStill(CurrentCustomer, standTime)

							ESX.ShowNotification(_U('customer_found'))

						end

					end

				end

			else

				if IsPedFatallyInjured(CurrentCustomer) then

					ESX.ShowNotification(_U('client_unconcious'))

					if DoesBlipExist(CurrentCustomerBlip) then
						RemoveBlip(CurrentCustomerBlip)
					end

					if DoesBlipExist(DestinationBlip) then
						RemoveBlip(DestinationBlip)
					end

					SetEntityAsMissionEntity(CurrentCustomer,  false, true)

					CurrentCustomer           = nil
					CurrentCustomerBlip       = nil
					DestinationBlip           = nil
					IsNearCustomer            = false
					CustomerIsEnteringVehicle = false
					CustomerEnteredVehicle    = false
					TargetCoords              = nil

				end

				if IsPedInAnyVehicle(playerPed,  false) then

					local vehicle          = GetVehiclePedIsIn(playerPed,  false)
					local playerCoords     = GetEntityCoords(playerPed)
					local customerCoords   = GetEntityCoords(CurrentCustomer)
					local customerDistance = GetDistanceBetweenCoords(playerCoords.x,  playerCoords.y,  playerCoords.z,  customerCoords.x,  customerCoords.y,  customerCoords.z)

					if IsPedSittingInVehicle(CurrentCustomer,  vehicle) then

						if CustomerEnteredVehicle then

							local targetDistance = GetDistanceBetweenCoords(playerCoords.x,  playerCoords.y,  playerCoords.z,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z)

							if targetDistance <= 10.0 then

								TaskLeaveVehicle(CurrentCustomer,  vehicle,  0)

								ESX.ShowNotification(_U('arrive_dest'))

								TaskGoStraightToCoord(CurrentCustomer,  TargetCoords.x,  TargetCoords.y,  TargetCoords.z,  1.0,  -1,  0.0,  0.0)
								SetEntityAsMissionEntity(CurrentCustomer,  false, true)

								TriggerServerEvent('esx_taxijob:success')

								RemoveBlip(DestinationBlip)

								local scope = function(customer)
									ESX.SetTimeout(60000, function()
										DeletePed(customer)
									end)
								end

								scope(CurrentCustomer)

								CurrentCustomer           = nil
								CurrentCustomerBlip       = nil
								DestinationBlip           = nil
								IsNearCustomer            = false
								CustomerIsEnteringVehicle = false
								CustomerEnteredVehicle    = false
								TargetCoords              = nil

							end

							if TargetCoords ~= nil then
								DrawMarker(1, TargetCoords.x, TargetCoords.y, TargetCoords.z - 1.0, 0, 0, 0, 0, 0, 0, 4.0, 4.0, 2.0, 178, 236, 93, 155, 0, 0, 2, 0, 0, 0, 0)
							end

						else

							RemoveBlip(CurrentCustomerBlip)

							CurrentCustomerBlip = nil

							TargetCoords = Config.JobLocations[GetRandomIntInRange(1,  #Config.JobLocations)]

							local street = table.pack(GetStreetNameAtCoord(TargetCoords.x, TargetCoords.y, TargetCoords.z))
							local msg    = nil

							if street[2] ~= 0 and street[2] ~= nil then
								msg = string.format(_U('take_me_to_near', GetStreetNameFromHashKey(street[1]),GetStreetNameFromHashKey(street[2])))
							else
								msg = string.format(_U('take_me_to', GetStreetNameFromHashKey(street[1])))
							end

							ESX.ShowNotification(msg)

							DestinationBlip = AddBlipForCoord(TargetCoords.x, TargetCoords.y, TargetCoords.z)

							BeginTextCommandSetBlipName("STRING")
							AddTextComponentString("Destination")
							EndTextCommandSetBlipName(blip)

							SetBlipRoute(DestinationBlip,  true)

							CustomerEnteredVehicle = true

						end

					else

						DrawMarker(1, customerCoords.x, customerCoords.y, customerCoords.z - 1.0, 0, 0, 0, 0, 0, 0, 4.0, 4.0, 2.0, 178, 236, 93, 155, 0, 0, 2, 0, 0, 0, 0)

						if not CustomerEnteredVehicle then

							if customerDistance <= 30.0 then

								if not IsNearCustomer then
									ESX.ShowNotification(_U('close_to_client'))
									IsNearCustomer = true
								end

							end

							if customerDistance <= 100.0 then

								if not CustomerIsEnteringVehicle then

									ClearPedTasksImmediately(CurrentCustomer)

									local seat = 0

									for i=4, 0, 1 do
										if IsVehicleSeatFree(vehicle,  seat) then
											seat = i
											break
										end
									end

									TaskEnterVehicle(CurrentCustomer,  vehicle,  -1,  seat,  2.0,  1)

									CustomerIsEnteringVehicle = true

								end

							end

						end

					end

				else

					DrawSub(_U('return_to_veh'), 5000)

				end

			end

		end

	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(1)

		if CurrentAction ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlPressed(0,  Keys['E']) and PlayerData.job ~= nil and PlayerData.job.name == 'taxi' and (GetGameTimer() - GUI.Time) > 300 then

				if CurrentAction == 'taxi_actions_menu' then
					OpenTaxiActionsMenu()
				end

				if CurrentAction == 'delete_vehicle' then

					local playerPed = GetPlayerPed(-1)
					local vehicle   = GetVehiclePedIsIn(playerPed,  false)
					local vehicleProps = ESX.Game.GetVehicleProperties(CurrentActionData.vehicle)
					local hash         = GetEntityModel(vehicle)
                    local plate        = GetVehicleNumberPlateText(vehicle)

					if GetEntityModel(vehicle) == GetHashKey('taxi') then

						if Config.MaxInService ~= -1 then
							TriggerServerEvent('esx_service:disableService', 'taxi')
						end

						DeleteVehicle(vehicle)
					else
						ESX.ShowNotification(_U('only_taxi'))
					end

				end

				CurrentAction = nil
				GUI.Time      = GetGameTimer()

			end

		end

		if IsControlPressed(0,  Keys['F6']) and Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == 'taxi' and (GetGameTimer() - GUI.Time) > 150 then
			OpenMobileTaxiActionsMenu()
			GUI.Time = GetGameTimer()
		end

		if IsControlPressed(0,  Keys['DELETE']) and (GetGameTimer() - GUI.Time) > 150 then

			if OnJob then
				StopTaxiJob()
			else

				if PlayerData.job ~= nil and PlayerData.job.name == 'taxi' then

					local playerPed = GetPlayerPed(-1)

					if IsPedInAnyVehicle(playerPed,  false) then

						local vehicle = GetVehiclePedIsIn(playerPed,  false)

						if PlayerData.job.grade >= 3 then
							StartTaxiJob()
						else
							if GetEntityModel(vehicle) == GetHashKey('taxi') then
								StartTaxiJob()
							else
								ESX.ShowNotification(_U('must_in_taxi'))
							end
						end

					else

						if PlayerData.job.grade >= 3 then
							ESX.ShowNotification(_U('must_in_vehicle'))
						else
							ESX.ShowNotification(_U('must_in_taxi'))
						end

					end

				end

			end

			GUI.Time = GetGameTimer()

		end

	end
end)



function DrawAdvancedTextCNN (x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(sc, sc)
    N_0x4e096588b13ffeca(jus)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - 0.1+w, y - 0.02+h)
end


 Citizen.CreateThread(function()
		    while true do
		        Citizen.Wait(1)    
		                       
		            if (affichenews == true) then
		           
				            DrawRect(0.494, 0.227, 5.185, 0.118, 0, 0, 0, 150)
				            DrawAdvancedTextCNN(0.588, 0.14, 0.005, 0.0028, 0.8, "~r~ TAXI ~d~", 255, 255, 255, 255, 1, 0)
				            DrawAdvancedTextCNN(0.586, 0.199, 0.005, 0.0028, 0.6, texteafiche, 255, 255, 255, 255, 7, 0)
				            DrawAdvancedTextCNN(0.588, 0.246, 0.005, 0.0028, 0.4, "", 255, 255, 255, 255, 0, 0)

				    end                
		   end
		end)



RegisterNetEvent('esx_taxijob:annonce')
AddEventHandler('esx_taxijob:annonce', function(text)
 		texteafiche = text
 		affichenews = true
		
  end) 


RegisterNetEvent('esx_taxijob:annoncestop')
AddEventHandler('esx_taxijob:annoncestop', function()
 		affichenews = false
 		
  end) 