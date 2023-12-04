Config.Elevator = {
    -- Parking > Hall Hôpital
    ['hopital_ambulance_up'] = {
        From = vector3(-667.15, 326.6, 83.09),
        To = vector4(-667.09, 326.5, 78.12, 345.23),
        DrawText = '[E] Descendre au parking',
        DistanceAction = 2.0 
    },
    ['hopital_ambulance_down'] = {
        From = vector3(-667.09, 326.5, 78.12),
        To = vector4(-667.15, 326.6, 83.09, 359.52),
        DrawText = '[E] Monter au 1er',
        DistanceAction = 2.0 
    },

   -- Asceneur 1er > 2eme
   ['hopital_hall_down'] = {
       From = vector3(-664.37, 326.4, 83.09),
       To = vector4(-664.34, 326.28, 88.02, 353.04),
       DrawText = '[E] Monter au 2ème',
       DistanceAction = 2.0 
   },
   ['hopital_hall_up'] = {
       From = vector3(-664.34, 326.28, 88.02),
       To = vector4(-664.36, 326.33, 83.09, 348.79),
       DrawText = '[E] Descendre au 1er',
       DistanceAction = 2.0 
   },

   -- Asceneur 2eme > 3eme
   ['hopital_couloir_down'] = {
       From = vector3(-661.35, 325.93, 88.02),
       To = vector4(-661.42, 326.04, 92.74, 355.3),
       DrawText = '[E] Monter au 3ème',
       DistanceAction = 2.0 
   },
   ['hopital_couloir_up'] = {
       From = vector3(-661.29, 325.95, 92.74),
       To = vector4(-661.35, 325.93, 88.02, 356.32),
       DrawText = '[E] Descendre au 2ème',
       DistanceAction = 2.0 
   },

   -- 3eme > Toit Helipad
   ['hopital_helipad_down'] = {
       From = vector3(-664.19, 326.51, 92.74),
       To = vector4(-664.33, 326.46, 140.12, 352.66),
       DrawText = '[E] Monter sur le toit',
       DistanceAction = 2.0 
   },
   ['hopital_helipad_up'] = {
       From = vector3(-664.33, 326.46, 140.12),
       To = vector4(-664.19, 326.51, 92.74, 352.88),
       DrawText = '[E] Descendre au 3ème',
       DistanceAction = 2.0 
   },

  

   ['Calisto_down'] = {
    From = vector3(417.44, -10.8, 99.65),
    To = vector4(380.35, -15.2, 83.0, 42.75),
    DrawText = '[E] Descendre au Parking',
    DistanceAction = 2.0 
    },
    ['Calisto_up'] = {
        From = vector3(380.35, -15.2, 83.0),
        To = vector4(417.44, -10.8, 99.65, 243.33),
        DrawText = '[E] Monter au Premier',
        DistanceAction = 2.0 
    },


}