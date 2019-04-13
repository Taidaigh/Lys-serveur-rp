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

ESX                           = nil
local PlayerData              = {}
local GUI                     = {}
GUI.Time                      = 0
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local OnJob                   = false
local TargetCoords            = nil
local CurrentlyTowedVehicle   = nil
local Blips                   = {}
local NPCOnJob                = false
local NPCTargetTowable         = nil
local NPCTargetTowableZone     = nil
local NPCHasSpawnedTowable    = false
local NPCLastCancel           = GetGameTimer() - 5 * 60000
local NPCHasBeenNextToTowable = false
local NPCTargetDeleterZone    = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(1)
	end
end)

function Message()
	Citizen.CreateThread(function()
    while messagenotfinish do
    		Citizen.Wait(1)

			DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
		    while (UpdateOnscreenKeyboard() == 0) do
		        DisableAllControlActions(0);
		       Citizen.Wait(1)
		    end
		    if (GetOnscreenKeyboardResult()) then
		        local result = GetOnscreenKeyboardResult()
		        messagenotfinish = false
		       TriggerServerEvent('esx_mecanojob:annonce',result)

		    end


		end
	end)

end

function SelectRandomTowable()

  local index = GetRandomIntInRange(1,  #Config.Towables)

  for k,v in pairs(Config.Zones) do
    if v.Pos.x == Config.Towables[index].x and v.Pos.y == Config.Towables[index].y and v.Pos.z == Config.Towables[index].z then
      return k
    end
  end

end

function StartNPCJob()

  NPCOnJob = true

  NPCTargetTowableZone = SelectRandomTowable()
  local zone       = Config.Zones[NPCTargetTowableZone]

  Blips['NPCTargetTowableZone'] = AddBlipForCoord(zone.Pos.x,  zone.Pos.y,  zone.Pos.z)
  SetBlipRoute(Blips['NPCTargetTowableZone'], true)

  ESX.ShowNotification('~y~Conduisez~s~ jusqu\'à l\'endroit indiqué')
end

function StopNPCJob(cancel)

  if Blips['NPCTargetTowableZone'] ~= nil then
    RemoveBlip(Blips['NPCTargetTowableZone'])
    Blips['NPCTargetTowableZone'] = nil
  end

  if Blips['NPCDelivery'] ~= nil then
    RemoveBlip(Blips['NPCDelivery'])
    Blips['NPCDelivery'] = nil
  end


  Config.Zones.VehicleDelivery.Type = -1

  NPCOnJob                = false
  NPCTargetTowable        = nil
  NPCTargetTowableZone    = nil
  NPCHasSpawnedTowable    = false
  NPCHasBeenNextToTowable = false

  if cancel then
    ESX.ShowNotification('Mission ~r~annulée~s~')
  else
    TriggerServerEvent('esx_mecanojob:onNPCJobCompleted')
  end

end


function OpenBossActionsMenu()

	local elements = {
		{label = 'Action Patron', value = 'boss_actions'},
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'boss_actions',
		{
			title    = 'Boss',
			elements = elements
		},
		function(data, menu)

			if data.current.value == 'boss_actions' then
				TriggerEvent('esx_society:openBossMenu', 'mecano', function(data, menu)
					menu.close()
				end)
			end

		end,
		function(data, menu)
			menu.close()
			CurrentAction     = 'boss_actions_menu'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu.'
			CurrentActionData = {}
		end
	)
end


function OpenMecanoActionsMenu()

	local elements = {
		{label = 'Sortir Véhicule', value = 'vehicle_list'},
		{label = 'Déposer Stock', value = 'put_stock'},
		{label = 'Prendre Stock', value = 'get_stock'}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mecano_actions',
		{
			title    = 'Mecano',
			elements = elements
		},
		function(data, menu)
			if data.current.value == 'vehicle_list' then
				local elements = {
					{label = 'Plateau', value = 'sadlerrt'},
					{label = 'Forklift', value = 'forklift'},
					{label = 'Sandking', value = 'sandking'}
				}

				if Config.EnablePlayerManagement and PlayerData.job ~= nil and
					(PlayerData.job.grade_name == 'boss' or PlayerData.job.grade_name == 'chef' or PlayerData.job.grade_name == 'experimente') then
					table.insert(elements, {label = 'SlamVan', value = 'slamvan3'})
				end

				ESX.UI.Menu.CloseAll()

				ESX.UI.Menu.Open(
					'default', GetCurrentResourceName(), 'spawn_vehicle',
					{
						title    = 'Véhicule de service',
						elements = elements
					},
					function(data, menu)
						for i=1, #elements, 1 do
							if Config.MaxInService == -1 then
								local playerPed = GetPlayerPed(-1)
								local coords    = Config.Zones.VehicleSpawnPoint.Pos
								--local platenum = math.random(100, 900)
								ESX.Game.SpawnVehicle(data.current.value, coords, 90.0, function(vehicle)
									SetVehicleNumberPlateText(vehicle, "LSCUSTOM")
									TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
									local plate = GetVehicleNumberPlateText(vehicle)
              						plate = string.gsub(plate, " ", "")
									TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
								end)
								break
							else
								ESX.TriggerServerCallback('esx_service:enableService', function(canTakeService, maxInService, inServiceCount)
									if canTakeService then
										local playerPed = GetPlayerPed(-1)
										local coords    = Config.Zones.VehicleSpawnPoint.Pos
										ESX.Game.SpawnVehicle(data.current.value, coords, 90.0, function(vehicle)
											TaskWarpPedIntoVehicle(playerPed,  vehicle, -1)
										end)
									else
										ESX.ShowNotification('Service complet : ' .. inServiceCount .. '/' .. maxInService)
									end
								end, 'mecano')
								break
							end
						end
						menu.close()
					end,
					function(data, menu)
						menu.close()
						OpenMecanoActionsMenu()
					end
				)
			end

			if data.current.value == 'put_stock' then
    		OpenPutStocksMenu()
    	end

	    if data.current.value == 'get_stock' then
		    OpenGetStocksMenu()
	    end

		end,
		function(data, menu)
			menu.close()
			CurrentAction     = 'mecano_actions_menu'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu.'
			CurrentActionData = {}
		end
	)
end

function OpenMecanoHarvestMenu()

	if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then
		local elements = {
			{label = 'Bouteille de gaz', value = 'gaz_bottle'},
			{label = 'Outils réparation', value = 'fix_tool'},
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'mecano_harvest',
			{
				title    = 'Récolte',
				elements = elements
			},
			function(data, menu)
				if data.current.value == 'gaz_bottle' then
					menu.close()
					TriggerServerEvent('esx_mecanojob:startHarvest')
				end

				if data.current.value == 'fix_tool' then
					menu.close()
					TriggerServerEvent('esx_mecanojob:startHarvest2')

				end

			end,
			function(data, menu)
				menu.close()
				CurrentAction     = 'mecano_harvest_menu'
				CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu de récolte.'
				CurrentActionData = {}
			end
		)
	else
		ESX.ShowNotification("Vous n'êtes ~r~pas assez expérimenté~s~ pour effectuer cette action.")
	end
end

function OpenMecanoCraftMenu()
	if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then

		local elements = {
			{label = 'Chalumeaux', value = 'blow_pipe'},
			{label = 'Kit réparation', value = 'fix_kit'},
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'mecano_craft',
			{
				title    = 'Etabli',
				elements = elements
			},
			function(data, menu)
				if data.current.value == 'blow_pipe' then
					menu.close()
					TriggerServerEvent('esx_mecanojob:startCraft')
				end

				if data.current.value == 'fix_kit' then
					menu.close()
					TriggerServerEvent('esx_mecanojob:startCraft2')

				end

			end,
			function(data, menu)
				menu.close()
				CurrentAction     = 'mecano_craft_menu'
				CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu établi.'
				CurrentActionData = {}
			end
		)
	else
		ESX.ShowNotification("Vous n'êtes ~r~pas assez expérimenté~s~ pour effectuer cette action.")
	end
end

function OpenMobileMecanoActionsMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mobile_mecano_actions',
		{
			title    = 'Mécano',
			elements = {
				{label = 'Facturation',    value = 'billing'},
				{label = 'Crocheter',     value = 'hijack_vehicle'},
				{label = 'Réparer',       value = 'fix_vehicle'},
				{label = 'Nettoyer',      value = 'clean_vehicle'},
				{label = 'Fourrière',     value = 'del_vehicle'},
				{label = 'Plateau',       value = 'dep_vehicle'},
				{label = 'Placer objets', value = 'object_spawner'},
				{label = 'Passer une annonce', value = 'announce'},
				{label = '------------------', value = 'object_spawner'},
				{label = 'Equiper Turbo (5000$)',  value = 'equipe_turbo'},
				{label = 'Enlever Turbo',  value = 'remove_turbo'}
			}
		},
		function(data, menu)
			if data.current.value == 'billing' then
				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'billing',
					{
						title = 'Montant de la facture'
					},
					function(data, menu)
						local amount = tonumber(data.value)
						if amount == nil  or amount <= 0 then
							ESX.ShowNotification('Montant invalide')
						else
							menu.close()
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification('Aucun joueur à proximité')
							else
								TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_mecano', 'Mecano', amount)
							end
						end
					end,
				function(data, menu)
					menu.close()
				end
				)
			end

			if data.current.value == 'hijack_vehicle' then

				local playerPed = GetPlayerPed(-1)
				local coords    = GetEntityCoords(playerPed)

				if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

					local vehicle = nil

					if IsPedInAnyVehicle(playerPed, false) then
						vehicle = GetVehiclePedIsIn(playerPed, false)
					else
						vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
					end

					if DoesEntityExist(vehicle) then
						TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)
						Citizen.CreateThread(function()
							Citizen.Wait(10000)
							SetVehicleDoorsLocked(vehicle, 1)
							SetVehicleDoorsLockedForAllPlayers(vehicle, false)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification('Véhicule ~g~déverouillé')
						end)
					end

				end

			end

			if data.current.value == 'fix_vehicle' then

				local playerPed = GetPlayerPed(-1)
				local coords    = GetEntityCoords(playerPed)

				if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

					local vehicle = nil

					if IsPedInAnyVehicle(playerPed, false) then
						vehicle = GetVehiclePedIsIn(playerPed, false)
					else
						vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
					end

					if DoesEntityExist(vehicle) then
						TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
						Citizen.CreateThread(function()
							Citizen.Wait(20000)
							SetVehicleFixed(vehicle)
							SetVehicleDeformationFixed(vehicle)
							SetVehicleUndriveable(vehicle, false)
							SetVehicleEngineOn(vehicle,  true,  true)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification('Véhicule ~g~réparé')
						end)
					end
				end
			end

			if data.current.value == 'clean_vehicle' then

				local playerPed = GetPlayerPed(-1)
				local coords    = GetEntityCoords(playerPed)

				if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

					local vehicle = nil

					if IsPedInAnyVehicle(playerPed, false) then
						vehicle = GetVehiclePedIsIn(playerPed, false)
					else
						vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
					end

					if DoesEntityExist(vehicle) then
						TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_MAID_CLEAN", 0, true)
						Citizen.CreateThread(function()
							Citizen.Wait(10000)
							SetVehicleDirtLevel(vehicle, 0)
							ClearPedTasksImmediately(playerPed)
							ESX.ShowNotification('Véhicule ~g~néttoyé')
						end)
					end
				end
			end

			if data.current.value == 'del_vehicle' then

				local ped = GetPlayerPed( -1 )

				if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
					local pos = GetEntityCoords( ped )

					if ( IsPedSittingInAnyVehicle( ped ) ) then
						local vehicle = GetVehiclePedIsIn( ped, false )

						if ( GetPedInVehicleSeat( vehicle, -1 ) == ped ) then
							ESX.ShowNotification('Vehicule ~r~mis en fourrière')
							SetEntityAsMissionEntity( vehicle, true, true )
							deleteCar( vehicle )
						else
							ESX.ShowNotification('Vous devez être assis du ~r~côté conducteur!')
						end
					else
						local playerPos = GetEntityCoords( ped, 1 )
						local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords( ped, 0.0, distanceToCheck, 0.0 )
						local vehicle = GetVehicleInDirection( playerPos, inFrontOfPlayer )

						if ( DoesEntityExist( vehicle ) ) then
							ESX.ShowNotification('Vehicule ~r~mis en fourrière')
							SetEntityAsMissionEntity( vehicle, true, true )
							deleteCar( vehicle )
						else
							ESX.ShowNotification('Vous devez être ~r~près d\'un véhicule~s~ pour le mettre en fourrière')
						end
					end
				end
			end

			if data.current.value == 'dep_vehicle' then

				local playerped = GetPlayerPed(-1)
				local vehicle = GetVehiclePedIsIn(playerped, true)

				local towmodel = GetHashKey('sadlerrt')
				local isVehicleTow = IsVehicleModel(vehicle, towmodel)

				if isVehicleTow then

					local coordA = GetEntityCoords(playerped, 1)
					local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
					local targetVehicle = getVehicleInDirection(coordA, coordB)

					if CurrentlyTowedVehicle == nil then
						if targetVehicle ~= 0 then
							if not IsPedInAnyVehicle(playerped, true) then
								if vehicle ~= targetVehicle then
									AttachEntityToEntity(targetVehicle, vehicle, -2, 0.0, -3.5, 0.85, 4.5, 0.0, 0.0, false, false, false, false, 0, true) -- ,droite/gauche,
									CurrentlyTowedVehicle = targetVehicle
									ESX.ShowNotification('Vehicule ~b~attaché~s~ avec succès!')

									if NPCOnJob then

										if NPCTargetTowable == targetVehicle then
											ESX.ShowNotification('Veuillez déposer le véhicule à la concession')

				              Config.Zones.VehicleDelivery.Type = 1

				              if Blips['NPCTargetTowableZone'] ~= nil then
				                RemoveBlip(Blips['NPCTargetTowableZone'])
				                Blips['NPCTargetTowableZone'] = nil
				              end

				              Blips['NPCDelivery'] = AddBlipForCoord(Config.Zones.VehicleDelivery.Pos.x,  Config.Zones.VehicleDelivery.Pos.y,  Config.Zones.VehicleDelivery.Pos.z)

				              SetBlipRoute(Blips['NPCDelivery'], true)

										end

									end

								else
									ESX.ShowNotification('~r~Impossible~s~ d\'attacher votre propre dépanneuse')
								end
							end
						else
							ESX.ShowNotification('Il n\'y a ~r~pas de véhicule~s~ à attacher')
						end
					else

						AttachEntityToEntity(CurrentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						DetachEntity(CurrentlyTowedVehicle, true, true)

						if NPCOnJob then
							if NPCTargetDeleterZone then
                 				if CurrentlyTowedVehicle == NPCTargetTowable then
                   					ESX.Game.DeleteVehicle(NPCTargetTowable)
                   					TriggerServerEvent('esx_mecanojob:onNPCJobMissionCompleted')
                   					StopNPCJob()
                   					NPCTargetDeleterZone = false

                 				else
                   				ESX.ShowNotification('ce n\'est pas le bon véhicule')
                 				end

							else
								ESX.ShowNotification('Vous devez être au bon endroit pour faire cela')
							end

						end

						CurrentlyTowedVehicle = nil

						ESX.ShowNotification('Vehicule ~b~détattaché~s~ avec succès!')
					end
				else
					ESX.ShowNotification('~r~Impossible! ~s~Vous devez avoir un ~b~sadlerrt ~s~pour ça')
				end
			end

			if data.current.value == 'object_spawner' then

				ESX.UI.Menu.Open(
					'default', GetCurrentResourceName(), 'mobile_mecano_actions_spawn',
					{
						title    = 'Objets',
						align    = 'top-left',
						elements = {
					   {label = 'Plot',     value = 'prop_roadcone02b'},
					   --{label = 'Boîte à outils', value = 'prop_toolchest_01'},
						},
					},
					function(data2, menu2)


						local model     = data2.current.value
						local playerPed = GetPlayerPed(-1)
						local coords    = GetEntityCoords(playerPed)
						local forward   = GetEntityForwardVector(playerPed)
						local x, y, z   = table.unpack(coords + forward * 1.0)

						if model == 'prop_roadcone02b' then
							z = z - 1.0
						elseif model == 'prop_toolchest_01' then
							z = z - 2.0
						end

						ESX.Game.SpawnObject(model, {
							x = x,
							y = y,
							z = z
						}, function(obj)
							SetEntityHeading(obj, GetEntityHeading(playerPed))
							PlaceObjectOnGroundProperly(obj)
						end)

					end,
					function(data2, menu2)
						menu2.close()
					end
				)

			end

			if data.current.value == 'announce' then
			      messagenotfinish = true
				  Message()
			end

			if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' and data.current.value == 'equipe_turbo' then


						local currentvehicle = nil
						local playerPed = GetPlayerPed(-1)
						local coords    = GetEntityCoords(playerPed)
						local vehicle   = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)

						 if DoesEntityExist(vehicle) then

						   Citizen.CreateThread(function()
						   RequestAnimDict('mini@repair')

						   while not HasAnimDictLoaded('mini@repair') do
						   	Citizen.Wait(1)
						   end

						   TaskPlayAnim(GetPlayerPed(-1), 'mini@repair' ,'fixing_a_ped' ,8.0, -8.0, -1, 1, 0, false, false, false )
						   Citizen.Wait(20000)
						   ClearPedTasks(playerPed)
						   SetVehicleModKit(vehicle,0)
						   ToggleVehicleMod(vehicle, 18, true)
						   ESX.ShowNotification('Turbo équipé')
						   TriggerServerEvent('esx_vehgroup:turbo')
						   end)

						else
                          ESX.ShowNotification('Aucun véhicule à proximité')
                        end
			end

			if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' and data.current.value == 'remove_turbo' then


						local currentvehicle = nil
						local playerPed = GetPlayerPed(-1)
						local coords    = GetEntityCoords(playerPed)
						local vehicle   = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)

						 if DoesEntityExist(vehicle) then

						   Citizen.CreateThread(function()
						   RequestAnimDict('mini@repair')

						   while not HasAnimDictLoaded('mini@repair') do
						   	Citizen.Wait(1)
						   end

						   TaskPlayAnim(GetPlayerPed(-1), 'mini@repair' ,'fixing_a_ped' ,8.0, -8.0, -1, 1, 0, false, false, false )
						   Citizen.Wait(20000)
						   ClearPedTasks(playerPed)
						   SetVehicleModKit(vehicle,0)
						   ToggleVehicleMod(vehicle, 18, false)
						   ESX.ShowNotification('Turbo retiré')
						 end)

						else
                          ESX.ShowNotification('Aucun véhicule à proximité')
                        end
			end

		end,
	function(data, menu)
		menu.close()
	end
	)
end

function OpenGetStocksMenu()

	ESX.TriggerServerCallback('esx_mecanojob:getStockItems', function(items)

		print(json.encode(items))

		local elements = {}

		for i=1, #items, 1 do
			table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
		end

	  ESX.UI.Menu.Open(
	    'default', GetCurrentResourceName(), 'stocks_menu',
	    {
	      title    = 'Mecano Stock',
	      elements = elements
	    },
	    function(data, menu)

	    	local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification('Quantité invalide')
						else
						menu2.close()
				    	menu.close()
				    	OpenGetStocksMenu()

							TriggerServerEvent('esx_mecanojob:getStockItem', itemName, count)
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

ESX.TriggerServerCallback('esx_mecanojob:getPlayerInventory', function(inventory)

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
	      title    = 'Inventaire',
	      elements = elements
	    },
	    function(data, menu)

	    	local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification('Quantité invalide')
						else
							menu2.close()
				    	menu.close()
				    	OpenPutStocksMenu()

							TriggerServerEvent('esx_mecanojob:putStockItems', itemName, count)
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


RegisterNetEvent('esx_mecanojob:onHijack')
AddEventHandler('esx_mecanojob:onHijack', function()
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

		local vehicle = nil

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		local crochete = math.random(100)
		local alarm    = math.random(100)

		if DoesEntityExist(vehicle) then
			if alarm <= 33 then
				SetVehicleAlarm(vehicle, true)
				StartVehicleAlarm(vehicle)
			end
			TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_WELDING", 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(10000)
				if crochete <= 66 then
					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)
					ESX.ShowNotification('~g~Véhicule déverouillé')
				else
					ESX.ShowNotification('~r~Crochetage raté')
					ClearPedTasksImmediately(playerPed)
				end
			end)
		end

	end
end)

RegisterNetEvent('esx_mecanojob:onCarokit')
AddEventHandler('esx_mecanojob:onCarokit', function()
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

		local vehicle = nil

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		if DoesEntityExist(vehicle) then
			TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_HAMMERING", 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(10000)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification('~g~Carosserie réparée')
			end)
		end
	end
end)

RegisterNetEvent('esx_mecanojob:onFixkit')
AddEventHandler('esx_mecanojob:onFixkit', function()
	local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)

	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then

		local vehicle = nil

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

		if DoesEntityExist(vehicle) then
			TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
			Citizen.CreateThread(function()
				Citizen.Wait(20000)
				SetVehicleFixed(vehicle)
				SetVehicleDeformationFixed(vehicle)
				SetVehicleUndriveable(vehicle, false)
				ClearPedTasksImmediately(playerPed)
				ESX.ShowNotification('~g~Véhicule réparé')
			end)
		end
	end
end)

function setEntityHeadingFromEntity ( vehicle, playerPed )
    local heading = GetEntityHeading(vehicle)
    SetEntityHeading( playerPed, heading )
end

function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

function deleteCar( entity )
    Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)


RegisterNetEvent('esx_phone:loaded')
AddEventHandler('esx_phone:loaded', function(phoneNumber, contacts)

  local specialContact = {
    name       = 'Mecano',
    number     = 'mecano',
    base64Icon = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAA4BJREFUWIXtll9oU3cUx7/nJA02aSSlFouWMnXVB0ejU3wcRteHjv1puoc9rA978cUi2IqgRYWIZkMwrahUGfgkFMEZUdg6C+u21z1o3fbgqigVi7NzUtNcmsac40Npltz7S3rvUHzxQODec87vfD+/e0/O/QFv7Q0beV3QeXqmgV74/7H7fZJvuLwv8q/Xeux1gUrNBpN/nmtavdaqDqBK8VT2RDyV2VHmF1lvLERSBtCVynzYmcp+A9WqT9kcVKX4gHUehF0CEVY+1jYTTIwvt7YSIQnCTvsSUYz6gX5uDt7MP7KOKuQAgxmqQ+neUA+I1B1AiXi5X6ZAvKrabirmVYFwAMRT2RMg7F9SyKspvk73hfrtbkMPyIhA5FVqi0iBiEZMMQdAui/8E4GPv0oAJkpc6Q3+6goAAGpWBxNQmTLFmgL3jSJNgQdGv4pMts2EKm7ICJB/aG0xNdz74VEk13UYCx1/twPR8JjDT8wttyLZtkoAxSb8ZDCz0gdfKxWkFURf2v9qTYH7SK7rQIDn0P3nA0ehixvfwZwE0X9vBE/mW8piohhl1WH18UQBhYnre8N/L8b8xQvlx4ACbB4NnzaeRYDnKm0EALCMLXy84hwuTCXL/ExoB1E7qcK/8NCLIq5HcTT0i6u8TYbXUM1cAyyveVq8Xls7XhYrvY/4n3gC8C+dsmAzL1YUiyfWxvHzsy/w/dNd+KjhW2yvv/RfXr7x9QDcmo1he2RBiCCI1Q8jVj9szPNixVfgz+UiIGyDSrcoRu2J16d3I6e1VYvNSQjXpnucAcEPUOkGYZs/l4uUhowt/3kqu1UIv9n90fAY9jT3YBlbRvFTD4fw++wHjhiTRL/bG75t0jI2ITcHb5om4Xgmhv57xpGOg3d/NIqryOR7z+r+MC6qBJB/ZB2t9Om1D5lFm843G/3E3HI7Yh1xDRAfzLQr5EClBf/HBHK462TG2J0OABXeyWDPZ8VqxmBWYscpyghwtTd4EKpDTjCZdCNmzFM9k+4LHXIFACJN94Z6FiFEpKDQw9HndWsEuhnADVMhAUaYJBp9XrcGQKJ4qFE9k+6r2+MG3k5N8VQ22TVglbX2ZwOzX2VvNKr91zmY6S7N6zqZicVT2WNLyVSehESaBhxnOALfMeYX+K/S2yv7wmMAlvwyuR7FxQUyf0fgc/jztfkJr7XeGgC8BJJgWNV8ImT+AAAAAElFTkSuQmCC'
  }

  TriggerEvent('esx_phone:addSpecialContact', specialContact.name, specialContact.number, specialContact.base64Icon)

end)


AddEventHandler('esx_mecanojob:hasEnteredMarker', function(zone)

	if zone == NPCJobTargetTowable then

	end

	if zone == 'BossActions' and PlayerData.job.grade_name == 'boss' or PlayerData.job.grade_name == 'sous_boss' then
		CurrentAction     = 'boss_actions_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu fourrière.'
		CurrentActionData = {}
	end

	if zone =='VehicleDelivery' then
    	NPCTargetDeleterZone = true
 	end

	if zone == 'MecanoActions' then
		CurrentAction     = 'mecano_actions_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu.'
		CurrentActionData = {}
	end

	if zone == 'Garage' then
		CurrentAction     = 'mecano_harvest_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu de récolte.'
		CurrentActionData = {}
	end

	if zone == 'Craft' then
		CurrentAction     = 'mecano_craft_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu établi.'
		CurrentActionData = {}
	end

	if zone == 'VehicleDeleter' then
		local playerPed = GetPlayerPed(-1)
		if IsPedInAnyVehicle(playerPed,  false) then
			CurrentAction     = 'delete_vehicle'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour ranger le véhicule.'
			CurrentActionData = {}
		end
	end

end)

AddEventHandler('esx_mecanojob:hasExitedMarker', function(zone)

	if zone =='VehicleDelivery' then
    	NPCTargetDeleterZone = false
    end

	if zone == 'Craft' then
		TriggerServerEvent('esx_mecanojob:stopCraft')
		TriggerServerEvent('esx_mecanojob:stopCraft2')
		TriggerServerEvent('esx_mecanojob:stopCraft3')
	end

	if zone == 'Garage' then
		TriggerServerEvent('esx_mecanojob:stopHarvest')
		TriggerServerEvent('esx_mecanojob:stopHarvest2')
		TriggerServerEvent('esx_mecanojob:stopHarvest3')
	end

	CurrentAction = nil
	ESX.UI.Menu.CloseAll()
end)

AddEventHandler('esx_mecanojob:hasEnteredEntityZone', function(entity)

	local playerPed = GetPlayerPed(-1)

	if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' and not IsPedInAnyVehicle(playerPed, false) then
		CurrentAction     = 'remove_entity'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour enlever l\'objet'
		CurrentActionData = {entity = entity}
	end

end)

AddEventHandler('esx_mecanojob:hasExitedEntityZone', function(entity)

	if CurrentAction == 'remove_entity' then
		CurrentAction = nil
	end

end)



-- Pop NPC mission vehicle when inside area
Citizen.CreateThread(function()
	while true do

	    Citizen.Wait(1)

	    if NPCTargetTowableZone ~= nil and not NPCHasSpawnedTowable then

			local coords = GetEntityCoords(GetPlayerPed(-1))
			local zone   = Config.Zones[NPCTargetTowableZone]

			if GetDistanceBetweenCoords(coords, zone.Pos.x, zone.Pos.y, zone.Pos.z, true) < Config.NPCSpawnDistance then

				local model = Config.Vehicles[GetRandomIntInRange(1,  #Config.Vehicles)]

				ESX.Game.SpawnVehicle(model, zone.Pos, 0, function(vehicle)
					NPCTargetTowable = vehicle
				end)

				NPCHasSpawnedTowable = true

			end

	    end

	    if NPCTargetTowableZone ~= nil and NPCHasSpawnedTowable and not NPCHasBeenNextToTowable then

			local coords = GetEntityCoords(GetPlayerPed(-1))
			local zone   = Config.Zones[NPCTargetTowableZone]

			if (GetDistanceBetweenCoords(coords, zone.Pos.x, zone.Pos.y, zone.Pos.z, true) < Config.NPCNextToDistance) then
				ESX.ShowNotification('Veuillez ~y~remorquer~s~ le véhicule')
				NPCHasBeenNextToTowable = true
			end

	    end

	end
end)

-- Create Blips
Citizen.CreateThread(function()
	local blip = AddBlipForCoord(Config.Zones.MecanoActions.Pos.x, Config.Zones.MecanoActions.Pos.y, Config.Zones.MecanoActions.Pos.z)
	SetBlipSprite (blip, 446)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, 5)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Mecano")
	EndTextCommandSetBlipName(blip)
end)

-- Display markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then

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
		if PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
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
				TriggerEvent('esx_mecanojob:hasEnteredMarker', currentZone)
			end
			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_mecanojob:hasExitedMarker', LastZone)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(1)

		local playerPed = GetPlayerPed(-1)
		local coords    = GetEntityCoords(playerPed)

		local entity, distance = ESX.Game.GetClosestObject({
			'prop_roadcone02b',
			'prop_toolchest_01'
		})

		if distance ~= -1 and distance <= 3.0 then

 			if LastEntity ~= entity then
				TriggerEvent('esx_mecanojob:hasEnteredEntityZone', entity)
				LastEntity = entity
			end
		else
			if LastEntity ~= nil then
				TriggerEvent('esx_mecanojob:hasExitedEntityZone', LastEntity)
				LastEntity = nil
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
            if IsControlJustReleased(0, 38) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
                if CurrentAction == 'mecano_actions_menu' then
                    OpenMecanoActionsMenu()
                end
                if CurrentAction == 'mecano_harvest_menu' then
                    OpenMecanoHarvestMenu()
                end
                if CurrentAction == 'boss_actions_menu' then
                	OpenBossActionsMenu()
                end
                if CurrentAction == 'mecano_craft_menu' then
                    OpenMecanoCraftMenu()
                end
                if CurrentAction == 'delete_vehicle' then
                    local playerPed = GetPlayerPed(-1)
                    local vehicle   = GetVehiclePedIsIn(playerPed,  false)
                    local hash      = GetEntityModel(vehicle)
                    local plate = GetVehicleNumberPlateText(vehicle)
                    if hash == GetHashKey('sadlerrt') or hash == GetHashKey('sandking') or hash == GetHashKey('slamvan3') or hash == GetHashKey('forklift') then
                        if Config.MaxInService ~= -1 then
                            TriggerServerEvent('esx_service:disableService', 'mecano')
                        end
                        DeleteVehicle(vehicle)
                        TriggerServerEvent('esx_vehiclelock:deletekeyjobs', 'no', plate) --vehicle lock
                    else
                        ESX.ShowNotification('Vous ne pouvez ranger que des ~b~véhicules de Mécano~s~.')
                    end
                end
                if CurrentAction == 'remove_entity' then
					DeleteEntity(CurrentActionData.entity)
				end
                CurrentAction = nil
            end
        end

        if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then
            OpenMobileMecanoActionsMenu()
        end

	      if IsControlJustReleased(0, Keys['DELETE']) and PlayerData.job ~= nil and PlayerData.job.name == 'mecano' then

	        if NPCOnJob then
	            StopNPCJob(true)
	            RemoveBlip(Blips['NPCDelivery'])
	        else
	          	local playerPed = GetPlayerPed(-1)

	          	if IsPedInAnyVehicle(playerPed,  false) and IsVehicleModel(GetVehiclePedIsIn(playerPed,  false), GetHashKey("sadlerrt")) then
	            	StartNPCJob()
	          	else
	          		ESX.ShowNotification('Vous devez être en Sadlerrt pour commencer la mission')
	         	end
	        end
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
				            DrawAdvancedTextCNN(0.588, 0.14, 0.005, 0.0028, 0.8, "~r~ MECANO ~d~", 255, 255, 255, 255, 1, 0)
				            DrawAdvancedTextCNN(0.586, 0.199, 0.005, 0.0028, 0.6, texteafiche, 255, 255, 255, 255, 7, 0)
				            DrawAdvancedTextCNN(0.588, 0.246, 0.005, 0.0028, 0.4, "", 255, 255, 255, 255, 0, 0)

				    end
		   end
		end)



RegisterNetEvent('esx_mecanojob:annonce')
AddEventHandler('esx_mecanojob:annonce', function(text)
 		texteafiche = text
 		affichenews = true

  end)


RegisterNetEvent('esx_mecanojob:annoncestop')
AddEventHandler('esx_mecanojob:annoncestop', function()
 		affichenews = false

  end)
