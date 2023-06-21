function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function e1m2_redaccess()
    return (
        has("e1m2_access") and has("e1m2_red")
    )
end

function e1m3_blueaccess()
    return (
        has("e1m3_access") and has("e1m3_blue")
    )
end

function e1m3_blueyellowaccess()
    return (
        has("e1m3_access") and has("e1m3_blue") and has("e1m3_yellow")
    )
end

function e1m4_blueyellowaccess()
    return (
        has("e1m4_access") and (has("e1m4_blue") or has("e1m4_yellow"))
    )
end

function e1m5_yellowaccess()
    return (
        has("e1m5_access") and has("e1m5_yellow")
    )
end

function e1m6_blueaccess()
    return (
        has("e1m6_access") and has("e1m6_blue")
    )
end

function e1m6_blueyellowaccess()
    return (
        has("e1m6_access") and (has("e1m6_blue") or has("e1m6_yellow"))
    )
end

function e1m6_redaccess()
    return (
        has("e1m6_access") and has("e1m6_red")
    )
end

function e1m7_blueyellowaccess()
    return (
        has("e1m7_access") and (has("e1m7_blue") and has("e1m7_yellow"))
    )
end

function e1m7_yellowaccess()
    return (
        has("e1m7_access") and has("e1m7_yellow")
    )
end

function e1m7_redaccess()
    return (
        has("e1m7_access") and has("e1m7_red")
    )
end

function e1m7_yellowredaccess()
    return (
        has("e1m7_access") and (has("e1m7_yellow") and has("e1m7_red"))
    )
end

function e1m9_blueaccess()
    return (
        has("e1m9_access") and has("e1m9_blue")
    )
end

function e1m9_yellowaccess()
    return (
        has("e1m9_access") and has("e1m9_yellow")
    )
end

function e1m9_redaccess()
    return (
        has("e1m9_access") and has("e1m9_red")
    )
end

function e2m2_blueaccess()
    return (
        has("e2m2_access") and has("e2m2_blue")
    )
end

function e2m2_yellowaccess()
    return (
        has("e2m2_access") and has("e2m2_yellow")
    )
end

function e2m3_blueaccess()
    return (
        has("e2m3_access") and has("e2m3_blue")
    )
end

function e2m4_blueaccess()
    return (
        has("e2m4_access") and has("e2m4_blue")
    )
end

function e2m4_blueyellowaccess()
    return (
        has("e2m4_access") and (has("e2m4_blue") and has("e2m4_yellow"))
    )
end

function e2m6_yellowaccess()
    return (
        has("e2m6_access") and has("e2m6_yellow")
    )
end

function e2m7_blueaccess()
    return (
        has("e2m7_access") and has("e2m7_blue")
    )
end

function e2m9_blueaccess()
    return (
        has("e2m9_access") and has("e2m9_blue")
    )
end

function e2m9_redaccess()
    return (
        has("e2m9_access") and has("e2m9_red")
    )
end

function e2m7_yellowaccess()
    return (
        has("e2m7_access") and has("e2m7_yellow")
    )
end

function narrow_access()
    return (
        has("shotgun") or has("chaingun")
    )
end

function e3m4_blueaccess()
    return (
        has("e3m4_access") and has("e3m4_blue")
    )
end

function e3m4_blueyellowaccess()
    return (
        has("e3m4_access") and (has("e3m4_blue") and has("e3m4_yellow"))
    )
end

function e3m4_blueredaccess()
    return (
        has("e3m4_access") and (has("e3m4_blue") and has("e3m4_red"))
    )
end

function e3m5_blueaccess()
    return (
        has("e3m5_access") and has("e3m5_blue")
    )
end

function e3m5_yellowaccess()
    return (
        has("e3m5_access") and has("e3m5_yellow")
    )
end

function e3m7_blueaccess()
    return (
        has("e3m7_access") and has("e3m7_blue")
    )
end

function e3m7_redaccess()
    return (
        has("e3m7_access") and has("e3m7_red")
    )
end

function lavaridge_access()
    return (can_freefly("9") or (pass_cablecar() and fallarbor_access()))
end

function rt119_south_access()
    return (
        mauville_access() 
        and can_surf()
    ) 
    or (
        rt121_access() 
        and pass_weatherins()
    )
end

function fortree_side_access()
    return can_freefly("10") 
    or (
        mauville_access() 
        and can_surf() 
        and pass_weatherins()
    )
end

function rt121_access()
    return fortree_side_access() 
    or (
        lilycove_access() 
        and (
            can_cut() 
            or can_surf()
        )
    )
end

function fly_to_rt124()
    return can_surf() 
    and (
        can_freefly("12") 
        or can_freefly("15") 
        or (
            can_freefly("13") 
            and can_dive()
        )
    )
end

function lilycove_access()
    return can_freefly("11") 
    or fortree_side_access() 
    or ferry_from_slateport() 
    or (
        fly_to_rt124() 
        and pass_wailmers()
    )
end

function rt124_access()
    return fly_to_rt124() 
    or (
        lilycove_access() 
        and can_surf() 
        and pass_wailmers()
    )
end

function mossdeep_access()
    return can_freefly("12") or rt124_access()
end

function sootopolis_access()
    return can_freefly("13") or (rt124_access() and can_dive())
end

function victory_road_access()
    return can_freefly("15") or (rt124_access() and can_waterfall())
end

function elite_four()
    return e4_open() 
    and victory_road_access() 
    and can_waterfall() 
    and can_flash() 
    and can_strength() 
    and can_rocksmash()
end