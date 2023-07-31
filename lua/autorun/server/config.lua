MoPrecacher = {}
MoPrecacher.Config = {}

MoPrecacher.Config.VehList = list.Get("Vehicles") -- Do not touch
MoPrecacher.Config.Count = 0 -- Do not touch

MoPrecacher.Config.Enable = true -- Enable precacher.

MoPrecacher.Config.modelWhitelist = { -- List of models that will be guaranteed to be loaded!
    "models/dannio/m135i.mdl",
    "models/dannio/riverside/x5_13unm.mdl",
    "models/dannio/riverside/x5_13police.mdl",
}

MoPrecacher.Config.modelBlacklist = { -- List of models that will be guaranteed to NOT be loaded!
    "models/vehicle/..."
}

MoPrecacher.Config.maxPrecacheCount = 120 -- The maximum amount of models to precache. Set to 0 to disable. This is a dangerous setting, as overloading the server with precaching can cause it to crash. (4096 limit)
MoPrecacher.Config.printPrecacheList = true -- Print the precache list to the console.



