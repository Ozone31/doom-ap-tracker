local variant = Tracker.ActiveVariantUID
IS_UNLABELLED = variant:find("maps-u")

Tracker:AddItems("items/items.json")

-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")

-- Maps
Tracker:AddMaps("maps/maps.json")

-- Locations
Tracker:AddLocations("locations/locations.json")

-- Layout
Tracker:AddLayouts("layouts/levels.json")
Tracker:AddLayouts("layouts/keys.json")
Tracker:AddLayouts("layouts/weapons.json")
Tracker:AddLayouts("layouts/settings.json")
Tracker:AddLayouts("layouts/tabs.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
