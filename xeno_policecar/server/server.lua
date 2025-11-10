-- Einfacher Server-Befehl, um Spieler das Spawnen auf Server-Seite erlauben
RegisterCommand('server_spawnpolice', function(source, args, raw)
local src = source
if src == 0 then
print('[policecar] Server spawned vehicle (console)')
return
end
-- Sende Event an Client um zu spawnen (client kontrolliert Modell-Laden)
TriggerClientEvent('policecar:client:spawn', src)
end, true)


-- optional: Hier könntest du Berechtigungen prüfen (z.B. ob Spieler Polizist ist)


-- Event-handler falls Client Event senden möchte
RegisterNetEvent('policecar:server:logspawn')
AddEventHandler('policecar:server:logspawn', function()
local _src = source
print('[policecar] Spieler ' .. tostring(_src) .. ' hat ein Polizeiauto gespawnt')
end)