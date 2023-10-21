ESX = nil
Citizen.CreateThread(function()
  while ESX == nil do
		ESX = exports['es_extended']:getSharedObject();
		Citizen.Wait(5)
    break
  end
  SetNuiFocus(false, false)
  freeze(false)
  PlayerData = ESX.GetPlayerData()
end)

ready_status = false

Citizen.CreateThread(function() --ส่งค่าไปแล้ว Break
	Citizen.Wait(500)
	SendNUIMessage({ type = 'first', WaitTitle = Config.WaitTitle, WaitText = Config.WaitText, WaitImage = Config.WaitImage, WaitLogo = Config.WaitLogo, WarpWait = tonumber(Config.WarpWait), Delay = tonumber(Config.Delay) })
end)
for k, v in pairs(Config.Position) do
	RegisterCommand(k, function(source , args , rawCommand)
		if ready_status then
			if source > 0 then
				print("You are not console.")
			else
				SendNui(true,v.WaitTitle,v.WaitImage,v.WaitText)
				freeze(true)
				DoScreenFadeOut(0)
				ESX.Game.Teleport(PlayerPedId(), v.coords)
				Wait(Config.WarpWait * 1000)
				DoScreenFadeIn(2000)
			end
		else
			print('Spawn command is not ready now.')
		end
	end, false) -- set this to false to allow anyone.
end
RegisterNUICallback('ready', function(data, cb)
	ready_status = data.result 
end)

RegisterNUICallback('freeze', function(data, cb)
	freeze(data.result)
end)
function SendNui(value,title,image,text)
    SetNuiFocus(value, value)
	FreezeEntityPosition(PlayerPedId(), value)
	if title ~= nil then
		SendNUIMessage({
			type = 'ui',
			action = value,
			WaitTitle = title,
			WaitImage = image,
			WaitText = text,
		})
	end
end
function freeze(data)
	SetNuiFocus(data, data)
	FreezeEntityPosition(PlayerPedId(), data)
end