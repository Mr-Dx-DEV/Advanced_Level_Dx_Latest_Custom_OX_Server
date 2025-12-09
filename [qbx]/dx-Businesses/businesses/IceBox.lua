Businesses["icebox"] = {
    enabled = true,
    drawmarker = true,
    job = "icebox",
    dutyzone = {
        zones = {
            vector2(-463.025, -17.574),
            vector2(-462.757, -63.577),
            vector2(-424.985, -61.047),
            vector2(-427.683, -19.326)
        },
        autoClock = { enter = true, exit = true },
        label = "IceBox",
    },
    blips = {
        enabled = false,
        label = "IceBox",
        sprite = 304,
        color = 1,
        scale = 0.7,
        coords = vec3(-427.683, -19.326, 20.83)
    },
    stash = {
        enabled = false,
        label = '',
        slots = '100',
        weight = '1000000',
        coords = {},
    },
    props = {
        enabled = false,
        prop = '',
        coords = {},
    },
    crafting = {},
}