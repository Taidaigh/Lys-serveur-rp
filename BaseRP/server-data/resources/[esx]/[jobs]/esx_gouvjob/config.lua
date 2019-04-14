Config                        = {}
Config.DrawDistance           = 100.0
Config.MarkerType             = 1
Config.MarkerSize             = {x = 1.5, y = 1.5, z = 1.0}
Config.MarkerColor            = {r = 50, g = 50, b = 204}
Config.EnablePlayerManagement = true
Config.EnableArmoryManagement = true
Config.MaxInService           = -1
Config.Locale       		      = 'fr'

Config.GouvStations = {

	Gouv = {

		Blip = {
			Pos   = {x = -429.23803710938, y = 1109.8786621094, z = 326.68237304688},
			Color = 419
		},

		AuthorizedWeapons = {
			{name = 'WEAPON_NIGHTSTICK',       price = 99999999},
			{name = 'WEAPON_HEAVYPISTOL',      price = 99999999},
			{name = 'WEAPON_SMG',              price = 99999999},
			{name = 'WEAPON_CARBINERIFLE',     price = 99999999},
			{name = 'WEAPON_PUMPSHOTGUN',      price = 99999999},
			{name = 'WEAPON_STUNGUN',          price = 99999999},
			{name = 'WEAPON_FLASHLIGHT',       price = 99999999},
			{name = 'WEAPON_FIREEXTINGUISHER', price = 99999999},
			{name = 'WEAPON_FLAREGUN',         price = 99999999},
			{name = 'WEAPON_SNIPERRIFLE',      price = 99999999},
			{name = 'GADGET_PARACHUTE',        price = 99999999},
		},

		AuthorizedVehicles = {
			{name = 'cognoscenti2', label = 'Voiture BLindée'},
			{name = 'xls2', label = '4x4 Blidée'},
			{name = 'stretch', label = 'Limousine'}
		},
		AuthorizedHelicopters = {
			{name = 'swift' , label = 'Helicoptere'},
		},

		Cloakrooms = {
			{x = -132.741, y = -632.945, z = 167.820}
		},

		Armories = {
			{x = -129.419, y = -636.236, z = 167.820}
		},

		Vehicles = {
			{
				Spawner    = {x = -403.620, y = 1075.759, z = 322.8538},
				SpawnPoint = {x = -409.008, y = 1062.988, z = 322.84,},
				Heading    = 288.0
			}
		},

		Helicopters = {
			{
				Spawner    = {x = -404.044, y = 1073.239, z = 322.845},
				SpawnPoint = {x = -455.289, y = 1145.942, z = 325.904},
				Heading    = 0.0
			}
		},

		VehicleDeleters = {
			{x = -419.997, y = 1062.563, z = 322.4897}
		},

		BossActions = {
			{x = -126.028, y = -641.689, z = 167.822}
		}

	}

}
