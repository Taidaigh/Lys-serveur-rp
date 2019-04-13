-----------------------------------------------

AddEventHandler("playerSpawned", function(spawn)

   local time = 0
   local messagetime = 20 --Change this for how long the message should display!
Citizen.CreateThread(function()
	while true do
	Citizen.Wait(1)
		while time < messagetime do
			Citizen.Trace(time)
			Citizen.Wait(1000)
 			time = time +1
		end
	end
end)

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(1)
	local playerName = GetPlayerName( PlayerId() )
		while time < messagetime do
			Citizen.Wait(1)
			DrawText1("Bonjour "..playerName..". Bienvenue.")
			DrawText2("~g~ Je vous invite a venir sur discord.")
		end
	end
end)

end)


function DrawText1(text)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.50)
	SetTextDropshadow(1, 2, 2, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.10, 0.10)
end

function DrawText2(text)
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.50)
	SetTextDropshadow(1, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.425, 0.13)
end