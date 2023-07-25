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

function e1m5_blueyellowaccess()
    return (
        has("e1m5_access") and (has("e1m5_blue") and has("e1m5_yellow"))
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

function e2m2_redaccess()
    return (
        has("e2m2_access") and has("e2m2_red")
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

function e2m6_blueyellowredaccess()
    return (
        has("e2m6_access") and (has("e2m6_blue") and has("e2m6_yellow") and has("e2m6_red"))
    )
end

function e2m7_blueaccess()
    return (
        has("e2m7_access") and has("e2m7_blue")
    )
end

function e2m7_yellowaccess()
    return (
        has("e2m7_access") and has("e2m7_yellow")
    )
end

function e2m7_blueredaccess()
    return (
        has("e2m7_access") and (has("e2m7_blue") and has("e2m7_red"))
    )
end

function e2m7_redaccess()
    return (
        has("e2m7_access") and has("e2m7_red")
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

function e2m9_yellowaccess()
    return (
        has("e2m9_access") and has("e2m9_yellow")
    )
end

function narrow_access()
    return (
        has("shotgun") or has("chaingun")
    )
end

function e3m2_blueaccess()
    return (
        has("e3m2_access") and has("e3m2_blue")
    )
end

function e3m3_blueaccess()
    return (
        has("e3m3_access") and has("e3m3_blue")
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

function e3m6_blueaccess()
    return (
        has("e3m6_access") and has("e3m6_blue")
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

function e3m7_yellowredaccess()
    return (
        has("e3m7_access") and (has("e3m7_yellow") and has("e3m7_red"))
    )
end

function e3m9_redaccess()
    return (
        has("e3m9_access") and has("e3m9_red")
    )
end

function e4m2_blueaccess()
    return (
        has("e4m2_access") and has("e4m2_blue")
    )
end

function e4m2_yellowaccess()
    return (
        has("e4m2_access") and has("e4m2_yellow")
    )
end

function e4m2_blueyellowaccess()
    return (
        has("e4m2_access") and (has("e4m2_blue") or has("e4m2_yellow"))
    )
end

function e4m3_blueaccess()
    return (
        has("e4m3_access") and has("e4m3_blue")
    )
end

function e4m4_redaccess()
    return (
        has("e4m4_access") and has("e4m4_red")
    )
end

function e4m5_redaccess()
    return (
        has("e4m5_access") and has("e4m5_red")
    )
end

function e4m6_blueaccess()
    return (
        has("e4m6_access") and has("e4m6_blue")
    )
end

function e4m6_blueredaccess()
    return (
        has("e4m6_access") and (has("e4m6_blue") and has("e4m6_red"))
    )
end

function e4m6_blueyellowredaccess()
    return (
        has("e4m6_access") and ((has("e4m6_blue") and has("e4m6_yellow")) or (has("e4m6_blue") and has("e4m6_red")))
    )
end

function e4m7_blueaccess()
    return (
        has("e4m7_access") and has("e4m7_blue")
    )
end

function e4m7_yellowaccess()
    return (
        has("e4m7_access") and has("e4m7_yellow")
    )
end

function e4m7_redaccess()
    return (
        has("e4m7_access") and has("e4m7_red")
    )
end

function e4m8_yellowredaccess()
    return (
        has("e4m8_access") and (has("e4m8_yellow") and has("e4m8_red"))
    )
end

function e4m9_yellowaccess()
    return (
        has("e4m9_access") and has("e4m9_yellow")
    )
end
