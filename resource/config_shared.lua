Config = {}

Config.PlateCheckCooldown = 5000 -- 5 seconds cooldown between plate checks (adjust as needed)

Config.ModelHash = "prop_cctv_pole_01a" -- Model name or hash for the camera prop (adjust as needed)

Config.CheckSpeed = true
Config.UseMPH = true

Config.Locations = {
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(613.47, -1035.70, 36.85),
            heading = 277.0,
        },
        name = "MRPD Southern Bridge EB"
    },
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(573.33, -1015.72, 36.99),
            heading = 96.80,
        },
        name = "MRPD Southern Bridge WB"
    },
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(758.75, -863.44, 43.43),
            heading = 268.80,
        },
        name = "MRPD Northern Bridge EB"
    },
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(679.79, -839.18, 43.17),
            heading = 88.73,
        },
        name = "MRPD Northern Bridge WB"
    },
    {
        limit = 75.0,
        detectionRange = 18.0,
        camera = {
            coords = vector3(1417.90, 690.37, 78.53),
            heading = 321.0,
        },
        name = "LS Freeway Mid NB"
    },
    {
        limit = 75.0,
        detectionRange = 18.0,
        camera = {
            coords = vector3(1374.62, 684.22, 79.44),
            heading = 137.5,
        },
        name = "LS Freeway Mid SB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(1677.61, 1417.98, 85.96),
            heading = 167.0,
        },
        name = "LS Freeway Northern SB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(1780.36, 1814.70, 80.46),
            heading = 347.38,
        },
        name = "LS Freeway Northern NB (Bridge)"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(1878.42, 1627.34, 81.61),
            heading = 264.64,
        },
        name = "LS Fwy onto Palomino Fwy"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(1966.23, 1633.63, 73.47),
            heading = 202.54,
        },
        name = "Senora Fwy onto Palomino Fwy"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(2003.70, 1633.4, 72.93),
            heading = 17.74,
        },
        name = "Palomino Fwy onto Senora Fwy"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(1550.76, -1014.07, 58.34),
            heading = 300.55,
        },
        name = "Palomino Fwy into City NB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(1522.82, -994.32, 57.96),
            heading = 116.90,
        },
        name = "Palomino Fwy into City SB"
    },
    {
        limit = 75.0,
        detectionRange = 20.0,
        camera = {
            coords = vector3(2385.70, 2827.0, 45.33),
            heading = 296.6,
        },
        name = "Senora Fwy onto Senora Way NB"
    },
    {
        limit = 75.0,
        detectionRange = 13.0,
        camera = {
            coords = vector3(2520.79, 2952.15, 41.96),
            heading = 321.79,
        },
        name = "Senora Way onto Senora Fwy NB"
    },
    {
        limit = 75.0,
        detectionRange = 13.0,
        camera = {
            coords = vector3(2477.47, 3015.65, 42.24),
            heading = 112.89,
        },
        name = "Senora Fwy onto Senora Way SB"
    },
    {
        limit = 75.0,
        detectionRange = 20.0,
        camera = {
            coords = vector3(2294.39, 2868.93, 42.4),
            heading = 136.5,
        },
        name = "Senora Way onto Senora Fwy SB"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(2921.80, 3703.78, 52.64),
            heading = 344.3,
        },
        name = "Senora Fwy YouTool NB"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(2870.97, 3680.13, 52.62),
            heading = 164.7,
        },
        name = "Senora Fwy YouTool SB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(-2560.98, -153.74, 20.47),
            heading = 61.09,
        },
        name = "GOH LA - Chumash NB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(-2522.46, -206.94, 18.84),
            heading = 252.73,
        },
        name = "GOH LA - Chumash SB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(-2642.15, 2654.70, 16.69),
            heading = 351.90,
        },
        name = "GOH Zancudo Bridge NB"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(-2685.39, 2539.92, 16.69),
            heading = 172.26,
        },
        name = "GOH Zancudo Bridge SB"
    },
    {
        limit = 75.0,
        detectionRange = 13.0,
        camera = {
            coords = vector3(-1810.64, 4694.80, 57.04),
            heading = 314.,
        },
        name = "GOH State Forest NB"
    },
    {
        limit = 75.0,
        detectionRange = 13.0,
        camera = {
            coords = vector3(-1891.22, 4640.81, 57.04),
            heading = 133.01,
        },
        name = "GOH State Forest SB"
    },
    {
        limit = 75.0,
        detectionRange = 18.0,
        camera = {
            coords = vector3(2185.22, 6066.04, 52.11),
            heading = 46.50,
        },
        name = "Senory Fwy Tunnel NB"
    },
    {
        limit = 75.0,
        detectionRange = 18.0,
        camera = {
            coords = vector3(2112.71, 6019.86, 50.94),
            heading = 236.58,
        },
        name = "Senory Fwy Tunnel SB"
    },
    {
        limit = 75.0,
        detectionRange = 16.0,
        camera = {
            coords = vector3(-806.94, -2065.91, 29.64),
            heading = 235.08,
        },
        name = "La Puerta Fwy Bridge Western EB"
    },
    {
        limit = 75.0,
        detectionRange = 16.0,
        camera = {
            coords = vector3(-829.89, -2015.34, 27.88),
            heading = 52.40,
        },
        name = "La Puerta Fwy Bridge Western WB"
    },
    {
        limit = 75.0,
        detectionRange = 17.0,
        camera = {
            coords = vector3(1047.01, -2596.75, 38.90),
            heading = 280.24,
        },
        name = "La Puerta Fwy Bridge Eastern EB"
    },
    {
        limit = 75.0,
        detectionRange = 16.0,
        camera = {
            coords = vector3(1011.80, -2575.42, 42.04),
            heading = 100.11,
        },
        name = "La Puerta Fwy Bridge Eastern WB"
    },
    {
        limit = 75.0,
        detectionRange = 13.0,
        camera = {
            coords = vector3(-1107.56, -596.19, 19.74),
            heading = 122.59,
        },
        name = "Del Perro Fwy onto Rockford Drive"
    },
    {
        limit = 75.0,
        detectionRange = 12.0,
        camera = {
            coords = vector3(-1050.83, -640.82, 18.46),
            heading = 300.30,
        },
        name = "Rockford Drive onto Del Perro Fwy"
    },
    {
        limit = 75.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(-1834.07, -557.73, 11.54),
            heading = 41.58,
        },
        name = "Del Perro Fwy Beach WB"
    },
    {
        limit = 75.0,
        detectionRange = 20.0,
        camera = {
            coords = vector3(-1836.92, -609.08, 11.34),
            heading = 228.67,
        },
        name = "Del Perro Fwy Beach EB"
    },
    {
        limit = 75.0,
        detectionRange = 25.0,
        camera = {
            coords = vector3(-137.16, -484.19, 29.29),
            heading = 90.58,
        },
        name = "Del Perro Fwy Mid WB"
    },
    {
        limit = 75.0,
        detectionRange = 24.0,
        camera = {
            coords = vector3(-118.23, -538.66, 29.86),
            heading = 270.38,
        },
        name = "Del Perro Fwy Mid EB"
    },
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(365.32, -2284.61, 10.53),
            heading = 359.0,
        },
        name = "Signal St. Bridge NB"
    },
    {
        limit = 40.0,
        detectionRange = 15.0,
        camera = {
            coords = vector3(341.38, -2346.81, 10.55),
            heading = 182.21,
        },
        name = "Signal St. Bridge SB"
    },
    -- Add more locations here as needed
}
