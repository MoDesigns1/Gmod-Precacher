if MoPrecacher.Config.Enable then
    for _, model in pairs(MoPrecacher.Config.modelWhitelist) do
        if model == nil then break end

        if MoPrecacher.Config.printPrecacheList then
            print("[Mo's Vehicle Precacher] Caching Vehicle Model: " .. model)
        end
        util.PrecacheModel(model)
    end

    for _, veh in pairs(MoPrecacher.Config.VehList) do
        if MoPrecacher.Config.maxPrecacheCount > 0 and MoPrecacher.Config.Count >= MoPrecacher.Config.maxPrecacheCount then break end
        local model = veh.Model

        if model and !MoPrecacher.Config.modelBlacklist[model] and !MoPrecacher.Config.modelWhitelist[model] then
            if MoPrecacher.Config.printPrecacheList then
                print("[Mo's Vehicle Precacher] Caching Vehicle Model: " .. model)
            end
            util.PrecacheModel(model)
            MoPrecacher.Config.Count = MoPrecacher.Config.Count + 1
        end
    end
end