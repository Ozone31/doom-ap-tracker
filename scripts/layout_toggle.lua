function OnChangeEpisodes()
    -- 1. Grab the item objects exactly like the screenshot method
    local ep1 = Tracker:FindObjectForCode("ep1")
    local ep2 = Tracker:FindObjectForCode("ep2")
    local ep3 = Tracker:FindObjectForCode("ep3")
    local ep4 = Tracker:FindObjectForCode("ep4")

    if ep1.CurrentStage == 0 and ep2.CurrentStage == 0 and ep3.CurrentStage == 0 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/Overworld.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 0 and ep3.CurrentStage == 0 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep1.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 1 and ep3.CurrentStage == 0 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep2.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 0 and ep3.CurrentStage == 1 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep3.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 0 and ep3.CurrentStage == 0 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep4.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 1 and ep3.CurrentStage == 0 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep1+2.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 0 and ep3.CurrentStage == 1 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep1+3.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 0 and ep3.CurrentStage == 0 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep1+4.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 1 and ep3.CurrentStage == 1 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep2+3.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 1 and ep3.CurrentStage == 0 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep2+4.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 0 and ep3.CurrentStage == 1 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep3+4.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 1 and ep3.CurrentStage == 1 and ep4.CurrentStage == 0 then
     Tracker:AddLayouts("layouts/Map/ep1+2+3.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 1 and ep3.CurrentStage == 0 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep1+2+4.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 0 and ep3.CurrentStage == 1 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep1+3+4.json")
elseif ep1.CurrentStage == 0 and ep2.CurrentStage == 1 and ep3.CurrentStage == 1 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/Map/ep2+3+4.json")
elseif ep1.CurrentStage == 1 and ep2.CurrentStage == 1 and ep3.CurrentStage == 1 and ep4.CurrentStage == 1 then
     Tracker:AddLayouts("layouts/tabs.json")
end

    -- 2. Verify all item objects exist before checking stages
    if ep1 and ep2 and ep3 and ep4 then
        
        -- --- EPISODE 1 SYSTEM ---
        if ep1.CurrentStage == 1 then
            Tracker:AddLayouts("layouts/Key and level/Episode 1.json")
        else
            Tracker:AddLayouts("layouts/Key and level/ep1_off.json")
        end

        -- --- EPISODE 2 SYSTEM ---
        if ep2.CurrentStage == 1 then
            Tracker:AddLayouts("layouts/Key and level/Episode 2.json")
        else
            Tracker:AddLayouts("layouts/Key and level/ep2_off.json")
        end

        -- --- EPISODE 3 SYSTEM ---
        if ep3.CurrentStage == 1 then
            Tracker:AddLayouts("layouts/Key and level/Episode 3.json")
        else
            Tracker:AddLayouts("layouts/Key and level/ep3_off.json")
        end

        -- --- EPISODE 4 SYSTEM ---
        if ep4.CurrentStage == 1 then
            Tracker:AddLayouts("layouts/Key and level/Episode 4.json")
        else
            Tracker:AddLayouts("layouts/Key and level/ep4_off.json")
        end

    end
end

-- 3. Register the event triggers via PopTracker's correct AddWatchForCode method
-- Arguments format: Tracker:AddWatchForCode(unique_watch_name, item_code, callback_function)
ScriptHost:AddWatchForCode("ep1_layout_watch", "ep1", OnChangeEpisodes)
ScriptHost:AddWatchForCode("ep2_layout_watch", "ep2", OnChangeEpisodes)
ScriptHost:AddWatchForCode("ep3_layout_watch", "ep3", OnChangeEpisodes)
ScriptHost:AddWatchForCode("ep4_layout_watch", "ep4", OnChangeEpisodes)

-- 4. Fire the function immediately on startup to load stored save-states
OnChangeEpisodes()