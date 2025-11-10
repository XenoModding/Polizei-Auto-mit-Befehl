-- Simple client logic: spawn vehicle, blip, toggle lights & siren


-- Blip
if Config.Blip.show then
local blip = AddBlipForEntity(vehicle)
SetBlipSprite(blip, Config.Blip.sprite)
SetBlipDisplay(blip, 4)
SetBlipScale(blip, Config.Blip.scale)
SetBlipColour(blip, Config.Blip.color)
SetBlipAsShortRange(blip, false)
BeginTextCommandSetBlipName('STRING')
AddTextComponentString(Config.Blip.name)
EndTextCommandSetBlipName(blip)
-- store blip on vehicle
vehicle.policeBlip = blip
end
end


-- Toggle Sirene
function ToggleSiren()
if not spawnedVehicle then return end
sirenOn = not sirenOn
SetVehicleSiren(spawnedVehicle, sirenOn)
SetVehicleHasMutedSirens(spawnedVehicle, not sirenOn)
end


-- Toggle Lights (use vehicle lights + emergency lights if supported)
function ToggleLights()
if not spawnedVehicle then return end
lightsOn = not lightsOn
if lightsOn then
SetVehicleLights(spawnedVehicle, 2) -- always on
SetVehicleIndicatorLights(spawnedVehicle, 0, true)
SetVehicleIndicatorLights(spawnedVehicle, 1, true)
-- try to enable emergency lights (native depends on vehicle)
SetVehicleAlarm(spawnedVehicle, 1)
else
SetVehicleLights(spawnedVehicle, 0) -- normal
SetVehicleIndicatorLights(spawnedVehicle, 0, false)
SetVehicleIndicatorLights(spawnedVehicle, 1, false)
SetVehicleAlarm(spawnedVehicle, 0)
end
end


-- Command: /spawnpolice
RegisterCommand('spawnpolice', function()
SpawnPoliceCar()
end, false)


-- Key mapping (falls benötigt - bind im client)
RegisterKeyMapping('spawnpolice', 'Spawnt ein Polizei Fahrzeug', 'keyboard', 'F5')


-- Tasten für Sirene/Lights
Citizen.CreateThread(function()
while true do
Citizen.Wait(0)
if IsControlJustReleased(0, Config.Keys.toggleSiren) then -- Sirene
ToggleSiren()
end
if IsControlJustReleased(0, Config.Keys.toggleLights) then -- Blaulicht
ToggleLights()
end
end
end)


-- Clean up wenn Fahrzeug zerstört oder Spieler aussteigt
Citizen.CreateThread(function()
while true do
Citizen.Wait(1000)
if spawnedVehicle and not DoesEntityExist(spawnedVehicle) then
spawnedVehicle = nil
sirenOn = false
lightsOn = false
end
end