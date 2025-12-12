Config = {}
Config.Interior = vector3(-1004.36, -477.9, 51.63) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1004.36, -477.9, 51.63) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-1008.49, -474.51, 50.03, 208.64) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(-1001.11, -478.06, 50.03, 24.55) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-1005.53, -480.73, 50.52, 27.44)           -- Camera position          -- Camera position (no heading here)       -- Camera coordinates for character preview screen
Config.EnableDeleteButton = true                                      -- Define if the player can delete the character or not
Config.customNationality = false                                      -- Defines if Nationality input is custom of blocked to the list of Countries
Config.SkipSelection = false                                          -- Skip the spawn selection and spawns the player at the last location

Config.DefaultNumberOfCharacters = 5                                  -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = {                                  -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = 'license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', numberOfChars = 2 },
}

Config.CameraArc = {
    start = vector4(-1007.53, -480.73, 50.22, 15.44), -- Left start/stop
    stop = vector4(-1004.53, -477.33, 50.52, 75.44),  -- Right start/stop
}
