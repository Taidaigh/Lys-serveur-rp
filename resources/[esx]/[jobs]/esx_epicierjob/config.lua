Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'


Config.AuthorizedVehicles = {
    { name = 'youga2',  label    = 'Camion de livraison' },
}

Config.Blips = {

    Blip = {
      Pos     = { x = -705.530, y = -914.827, z = 18.215 },
      Sprite  = 52,
      Display = 4,
      Scale   = 1.0,
      Colour  = 83,
    },

}

Config.Zones = {

    Vaults = {
        Pos   = { x = -705.933, y = -905.001, z = 18.215 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 1,
    },

    Fridge = {
        Pos   = { x = -705.530, y = -914.827, z = 18.215 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 204, g = 102, b = 0 },
        Type  = 1,
    },

	Harvest = {
        Pos   = { x = -2565.819, y = 2307.284, z = 32.215 },
        Size  = { x = 2.0, y = 2.0, z = 1.0 },
        Color = { r = 0, g = 155, b = 155 },
        Type  = 1,
    },

    Vehicles = {
        Pos          = { x = -702.826, y = -917.369, z = 18.214 },
        SpawnPoint   = { x = -701.805, y = -920.622, z = 18.013 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 0, g = 155, b = 155 },
        Type         = 1,
        Heading      = 89.36,
    },

    VehicleDelete = {
        Pos   = { x = -723.258, y = -913.070, z = 18.013 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 1,
    },

	VehicleDeleters = {
        Pos   = { x = -730.737, y = -908.928, z = 18.039 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 1,
    },

	Craft = {
        Pos   = { x = -3047.385, y = 584.472, z = 6.908 },
        Size  = { x = 2.0, y = 2.0, z = 1.0 },
        Color = { r = 0, g = 155, b = 155 },
        Type  = 1,
    },

	Delivery = {
        Pos   = { x = -1298.256, y = -1381.599, z = 3.481 },
        Size  = { x = 2.0, y = 2.0, z = 1.0 },
        Color = { r = 0, g = 155, b = 155 },
        Type  = 1,
    },

    BossActions = {
        Pos   = { x = -709.251, y = -905.520, z = 18.215 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 204, g = 102, b = 0 },
        Type  = 1,
    },
}
