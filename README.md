Xeno Polizei Auto

Dieses Resource ermöglicht es, ein Polizei-Fahrzeug in FiveM zu spawnen, inklusive Sirene, Blaulicht, Blip und Keybinds. Es ist als Basis gedacht und kann erweitert werden, z.B. um eigene Fahrzeuge, Livery, Sirenenmuster oder Integration in ESX/ox_core.

Features

Spawn eines Polizei-Fahrzeugs per Command oder Keybind.

Blaulicht- und Sirenensteuerung per Tasten.

Blip auf der Karte für das Fahrzeug.

Unterstützung für Standard GTA Fahrzeuge (police, police2, police3) oder eigene Modelle.

Einfache Konfiguration in config.lua.

Installation

Ordner fivem-policecar in den resources-Ordner deines Servers kopieren.

ensure fivem-policecar in deiner server.cfg hinzufügen.

Server neu starten.

Im Spiel /spawnpolice oder die Keybinds verwenden:

F5: Polizeiauto spawnen

F6: Blaulicht toggeln

F7: Sirene toggeln

Konfiguration (config.lua)

VehicleModel: Fahrzeugmodell, z.B. 'police'

Spawn: Spawn-Koordinaten und Heading (optional, sonst bei Spielerposition)

Blip: Blip-Einstellungen (sichtbar, Name, Farbe, Sprite, Größe)

Keys: Keybinds für Sirene und Blaulicht

PrimaryColor, SecondaryColor, Livery: Fahrzeugfarben und Livery

Commands

/spawnpolice oder F5: Spawnt das konfigurierte Polizeifahrzeug.

/server_spawnpolice: Serverseitiger Spawn (optional, nur für Admins oder mit Job-Prüfung).

Hinweise

Eigene Modelle müssen in stream bereitgestellt und korrekt in fxmanifest.lua eingebunden werden.

Für Integration mit ESX/ox_core oder Job-Systemen kann server.lua erweitert werden.

Blaulicht und Sirene nutzen einfache natives; komplexere Patterns können hinzugefügt werden.

Das Resource ist als Basis gedacht und kann beliebig erweitert werden.

Support

Bei Fragen oder Fehlern kannst du das Script direkt anpassen oder den FiveM Community-Discord besuchen.

Viel Spaß mit deinem Polizeiauto-Resource!
