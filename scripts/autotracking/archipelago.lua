ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")

CUR_INDEX = -1
--SLOT_DATA = nil

FLAG_CODES = {
    "e1m1_complete"
}

function has_value (t, val)
    for i, v in ipairs(t) do
        if v == val then return 1 end
    end
    return 0
end

function dump_table(o, depth)
    if depth == nil then
        depth = 0
    end
    if type(o) == 'table' then
        local tabs = ('\t'):rep(depth)
        local tabs2 = ('\t'):rep(depth + 1)
        local s = '{\n'
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. tabs2 .. '[' .. k .. '] = ' .. dump_table(v, depth + 1) .. ',\n'
        end
        return s .. tabs .. '}'
    else
        return tostring(o)
    end
end


function onClear(slot_data)
    --SLOT_DATA = slot_data
    CUR_INDEX = -1
    -- reset locations
    for _, v in pairs(LOCATION_MAPPING) do
        if v[1] then
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[1]:sub(1, 1) == "@" then
                    obj.AvailableChestCount = obj.ChestCount
                else
                    obj.Active = false
                end
            end
        end
    end
    -- reset items
    for _, v in pairs(ITEM_MAPPING) do
        if v[1] and v[2] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: clearing item %s of type %s", v[1], v[2]))
            end
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[2] == "toggle" then
                    obj.Active = false
                elseif v[2] == "progressive" then
                    obj.CurrentStage = 0
                    obj.Active = false
                elseif v[2] == "consumable" then
                    obj.AcquiredCount = 0
                elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                    print(string.format("onClear: unknown item type %s for code %s", v[2], v[1]))
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: could not find object for code %s", v[1]))
            end
        end
    end

    Archipelago:SetNotify({"events"}) --change to whatever
    Archipelago:Get({"events"})

    if slot_data == nil  then
        print("welp")
        return
    end

    PLAYER_ID = Archipelago.PlayerNumber or -1
    TEAM_NUMBER = Archipelago.TeamNumber or 0

    if slot_data['allow_death_logic'] then
        local obj = Tracker:FindObjectForCode("deathlogic")
        local stage = slot_data['allow_death_logic']
        if (stage >=2) then
            stage = 2
        end
        if obj then
            obj.CurrentStage = stage
        end
    end

    if slot_data['episode1'] then
        local obj = Tracker:FindObjectForCode("ep1")
        local stage = slot_data['episode1']
        if (stage >=2) then
            stage = 2
        end
        if obj then
            obj.CurrentStage = stage
        end
    end

    if slot_data['episode2'] then
        local obj = Tracker:FindObjectForCode("ep2")
        local stage = slot_data['episode2']
        if (stage >=2) then
            stage = 2
        end
        if obj then
            obj.CurrentStage = stage
        end
    end

    if slot_data['episode3'] then
        local obj = Tracker:FindObjectForCode("ep3")
        local stage = slot_data['episode3']
        if (stage >=2) then
            stage = 2
        end
        if obj then
            obj.CurrentStage = stage
        end
    end

    if slot_data['episode4'] then
        local obj = Tracker:FindObjectForCode("ep4")
        local stage = slot_data['episode4']
        if (stage >=2) then
            stage = 2
        end
        if obj then
            obj.CurrentStage = stage
        end
    end

    if slot_data['difficulty'] then
        local obj = Tracker:FindObjectForCode("difficulty")
        local stage = slot_data['difficulty']
        if obj then
            obj.CurrentStage = stage
        end
    end

    --print(dump_table(slot_data))

    if PLAYER_ID>-1 then
        local eventId="doom1993_events_"..TEAM_NUMBER.."_"..PLAYER_ID
        Archipelago:SetNotify({eventId})
        Archipelago:Get({eventId})
    end
end

function onItem(index, item_id, item_name, player_number)
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local v = ITEM_MAPPING[item_id]
    if not v or not v[1] then
        --print(string.format("onItem: could not find item mapping for id %s", item_id))
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[2] == "toggle" then
            obj.Active = true
        elseif v[2] == "progressive" then
            if obj.Active then
                obj.CurrentStage = obj.CurrentStage + 1
            else
                obj.Active = true
            end
        elseif v[2] == "consumable" then
            obj.AcquiredCount = obj.AcquiredCount + obj.Increment
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("onItem: unknown item type %s for code %s", v[2], v[1]))
        end
    else
        print(string.format("onItem: could not find object for code %s", v[1]))
    end
end

--called when a location gets cleared
function onLocation(location_id, location_name)
    local v = LOCATION_MAPPING[location_id]
    if not v or not v[1] then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[1]:sub(1, 1) == "@" then
            obj.AvailableChestCount = obj.AvailableChestCount - 1
        else
            obj.Active = true
        end
    else
        print(string.format("onLocation: could not find object for code %s", v[1]))
    end
end

function onEvent(key, value, old_value)
    updateEvents(value)
end

function onEventsLaunch(key, value)
    updateEvents(value)
end

Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)
Archipelago:AddSetReplyHandler("event handler", onEvent)
Archipelago:AddRetrievedHandler("event launch handler", onEventsLaunch)
