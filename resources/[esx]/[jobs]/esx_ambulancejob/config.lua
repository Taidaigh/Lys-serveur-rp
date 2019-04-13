Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.RespawnDelayAfterRPDeath   = 5 * 60 * 1000
Config.MenuRespawnToHospitalDelay = 2 * 60 * 1000
Config.EnableSocietyOwnedVehicles = false
Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true
Config.EnablePlayerManagement     = true
Config.ShowDeathTimer             = true
Config.EarlyRespawn               = false
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 0
Config.NPCJobEarnings             = {min = 25, max = 100}
Config.Locale                     = 'fr'

Config.Zones = {

--point pour entrée dehors
  HospitalInteriorEntering1 = {
    Pos  = { x = 295.139, y = -1447.687, z = 28.966 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },
--point invisible zone d'entrée a l'interieur
  HospitalInteriorInside1 = {
    Pos  = { x = 279.421, y = -1346.505, z = 24.537 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },
--point invisible spawn dehors
  HospitalInteriorOutside1 = {
    Pos  = { x = 297.406, y = -1445.108, z = 29.889 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },
--point pour sortir dedans
  HospitalInteriorExit1 = {
    Pos  = { x = 279.736, y = -1349.299, z = 23.537 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },
-------------------------------------------------------
--point pour entrée dehors

  HospitalInteriorEntering2 = {
    Pos  = { x = 334.615, y = -1432.810, z = 45.511 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },
--point invisible zone d'entrée a l'interieur
  HospitalInteriorInside2 = {
    Pos  = { x = 242.063,  y = -1362.044, z = 29.647 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },
--point invisible spawn dehors
  HospitalInteriorOutside2 = {
    Pos  = { x = 332.840, y = -1435.016, z = 46.510 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },
--point pour sortir dedans
  HospitalInteriorExit2 = {
    Pos  = { x = 239.176,  y = -1361.600, z = 28.648 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },
--Coffre,ActionPatron,Vestiaire
  AmbulanceActions = {
    Pos  = { x = 268.296, y = -1365.006, z = 23.537 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 0
  },
  --récolte
  Garage = {
    Pos   = { x = 3625.1921386719, y = 3736.8173828125, z = 28.69008636 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  Craft = {
    Pos   = { x = 249.562423706, y = -1375.0285644531, z = 38.524370422363 },
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 0,
  },

  VehicleSpawner = {
    Pos  = { x = 307.001, y = -1434.278, z = 28.849 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = 1
  },

  HelicoSpawner = {
    Pos   = {x = 316.048, y = -1455.075, z = 45.509},
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Type  = 1
  },

  VehicleSpawnPoint = {
    Pos  = { x = 303.250, y = -1437.991, z = 29.804 },
    Size = { x = 1.5, y = 1.5, z = 1.0 },
    Type = -1
  },

  HelicoSpawnPoint = {
    Pos   = {x = 313.481, y = -1465.002, z = 46.509 },
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Type  = -1
  },
--delete voiture
  VehicleDeleter = {
    Pos  = { x = 301.127, y = -1432.285, z = 28.804 },
    Size = { x = 3.0, y = 3.0, z = 2.0 },
    Type = 1
  },
--delete helico
  VehicleDeleter2 = {
    Pos   = {x = 299.473, y = -1453.415, z = 45.509 },
    Size  = {x = 5.0, y = 5.0, z = 2.0},
    Type  = 1
  }

}

Config.JobLocations = {
  {x = 293.476, y = -590.163, z = 42.7371},
  {x = 253.404, y = -375.86, z = 44.0819},
  {x = 120.808, y = -300.416, z = 45.1399},
  {x = -38.4132, y = -381.576, z = 38.3456},
  {x = -107.442, y = -614.377, z = 35.6703},
  {x = -252.292, y = -856.474, z = 30.5626},
  {x = -236.138, y = -988.382, z = 28.7749},
  {x = -276.989, y = -1061.18, z = 25.6853},
  {x = -576.451, y = -998.989, z = 21.785},
  {x = -602.798, y = -952.63, z = 21.6353},
  {x = -790.653, y = -961.855, z = 14.8932},
  {x = -912.588, y = -864.756, z = 15.0057},
  {x = -1069.77, y = -792.513, z = 18.8075},
  {x = -1306.94, y = -854.085, z = 15.0959},
  {x = -1468.51, y = -681.363, z = 26.178},
  {x = -1380.89, y = -452.7, z = 34.0843},
  {x = -1326.35, y = -394.81, z = 36.0632},
  {x = -1383.68, y = -269.985, z = 42.4878},
  {x = -1679.61, y = -457.339, z = 39.4048},
  {x = -1812.45, y = -416.917, z = 43.6734},
  {x = -2043.64, y = -268.291, z = 22.9927},
  {x = -2186.45, y = -421.595, z = 12.6776},
  {x = -1862.08, y = -586.528, z = 11.1747},
  {x = -1859.5, y = -617.563, z = 10.8788},
  {x = -1634.95, y = -988.302, z = 12.6241},
  {x = -1283.99, y = -1154.16, z = 5.30998},
  {x = -1126.47, y = -1338.08, z = 4.63434},
  {x = -867.907, y = -1159.67, z = 5.00795},
  {x = -847.55, y = -1141.38, z = 6.27591},
  {x = -722.625, y = -1144.6, z = 10.2176},
  {x = -575.503, y = -318.446, z = 34.5273},
  {x = -592.309, y = -224.853, z = 36.1209},
  {x = -559.594, y = -162.873, z = 37.7547},
  {x = -534.992, y = -65.6695, z = 40.634},
  {x = -758.234, y = -36.6906, z = 37.2911},
  {x = -1375.88, y = 20.9516, z = 53.2255},
  {x = -1320.25, y = -128.018, z = 48.097},
  {x = -1285.71, y = 294.287, z = 64.4619},
  {x = -1245.67, y = 386.533, z = 75.0908},
  {x = -760.355, y = 285.015, z = 85.0667},
  {x = -626.786, y = 254.146, z = 81.0964},
  {x = -563.609, y = 267.962, z = 82.5116},
  {x = -486.806, y = 271.977, z = 82.8187},
  {x = 88.295, y = 250.867, z = 108.188},
  {x = 234.087, y = 344.678, z = 105.018},
  {x = 434.963, y = 96.707, z = 99.1713},
  {x = 482.617, y = -142.533, z = 58.1936},
  {x = 762.651, y = -786.55, z = 25.8915},
  {x = 809.06, y = -1290.8, z = 25.7946},
  {x = 490.819, y = -1751.37, z = 28.0987},
  {x = 432.351, y = -1856.11, z = 27.0352},
  {x = 164.348, y = -1734.54, z = 28.8982},
  {x = -57.6909, y = -1501.4, z = 31.1084},
  {x = 52.2241, y = -1566.65, z = 29.006},
  {x = 295.44149780273,y = -1439.6423339844,z = 28.803928375244 },
  {x = 1165.1629638672,y = -1536.8948974609,z = 38.400791168213 },
  {x = 1827.8881835938,y = 3693.8835449219,z = 33.224269866943 },  
}
