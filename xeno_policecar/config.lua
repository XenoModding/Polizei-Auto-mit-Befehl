-- Konfiguration für das Polizeiauto
Config = {}


-- Fahrzeugmodell (Standard-GTA Modelle z.B. 'police', 'police2', 'police3')
Config.VehicleModel = 'police' -- ändere nach Bedarf


-- Spawn-Position (x, y, z, heading). Setze auf nil, um Spawn an Spielerposition durchzuführen.
Config.Spawn = {
x = nil,
y = nil,
z = nil,
heading = nil
}


-- Blip Einstellungen
Config.Blip = {
show = true,
name = "Polizei Fahrzeug",
sprite = 56,
color = 29,
scale = 0.8
}


-- Keybinds
Config.Keys = {
toggleLights = 117, -- F6
toggleSiren = 168 -- F7
}


-- Livery / Farben (optional)
Config.PrimaryColor = 0
Config.SecondaryColor = 0
Config.Livery = 0