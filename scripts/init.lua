local variant = Tracker.ActiveVariantUID
IS_UNLABELLED = variant:find("maps-u")

Tracker:AddItems("items/items.json")
-- Logic
ScriptHost:LoadScript("scripts/logic/logic.lua")
Tracker:AddMaps("maps/maps.json")

-- Maps

-- Locations
Tracker:AddLocations("locations/locations_overview.json")
Tracker:AddLocations("locations/locations_ep1.json")
Tracker:AddLocations("locations/locations_ep2.json")
Tracker:AddLocations("locations/locations_ep3.json")
Tracker:AddLocations("locations/locations_ep4.json")

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
