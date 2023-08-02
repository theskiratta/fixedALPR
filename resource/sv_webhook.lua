function CreateDiscordLogSpeed(source, camera, speed, plate, location, heading)
    local webhook = WHConfig.webhook
    local name = GetPlayerName(source)
    local date = os.date('*t')
    local time = os.date("*t")
    local embedsetup = {
        ["fields"] = {
            {
                ["name"] = "Player Name: ",
                ["value"] = name,
                ["inline"] = true
            },
            {
                ["name"] = "Location: ",
                ["value"] = camera,
                ["inline"] = true
            },
            {
                ["name"] = "Speed Limit: ",
                ["value"] = camera.limit,
                ["inline"] = true
            },
            {
                ["name"] = "Detected Speed: ",
                ["value"] = speed,
                ["inline"] = true
            },
            {
                ["name"] = "License Plate:",
                ["value"] = plate,
                ["inline"] = true
            },
            {
                ["name"] = "Location:",
                ["value"] = location,
                ["inline"] = true
            },
            {
                ["name"] = "Heading:",
                ["value"] = heading,
                ["inline"] = true
            },
        },
        ["color"] = 16767002,
        ["title"] = "Automatic Camera Activation",
        ["description"] = "",
        ["footer"] = {
            ["text"] = "Timestamp:"..os.date("%A, %m %B %Y | "), ("%02d:%02d:%02d"):format(time.hour, time.min, time.sec),
        },
        ["thumbnail"] = {
            ["url"] = WHConfig.image,
        },
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = WHConfig.name, embeds = embedsetup }), { ['Content-Type'] = 'application/json' })
end

function CreateDiscordLogBOLO(source, camera, speed, plate, location, heading)
    local webhook = WHConfig.webhook
    local name = GetPlayerName(source)
    local date = os.date('*t')
    local time = os.date("*t")
    local embedsetup = {
        ["fields"] = {
            {
                ["name"] = "Player Name: ",
                ["value"] = name,
                ["inline"] = true
            },
            {
                ["name"] = "Location: ",
                ["value"] = camera,
                ["inline"] = true
            },
            {
                ["name"] = "Speed Limit: ",
                ["value"] = camera.limit,
                ["inline"] = true
            },
            {
                ["name"] = "Detected Speed: ",
                ["value"] = speed,
                ["inline"] = true
            },
            {
                ["name"] = "License Plate:",
                ["value"] = plate,
                ["inline"] = true
            },
            {
                ["name"] = "Location:",
                ["value"] = location,
                ["inline"] = true
            },
            {
                ["name"] = "Heading:",
                ["value"] = heading,
                ["inline"] = true
            },
        },
        ["color"] = 16767002,
        ["title"] = "Automatic Camera Activation",
        ["description"] = "",
        ["footer"] = {
            ["text"] = "Timestamp:"..os.date("%A, %m %B %Y | "), ("%02d:%02d:%02d"):format(time.hour, time.min, time.sec),
        },
        ["thumbnail"] = {
            ["url"] = WHConfig.image,
        },
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = WHConfig.name, embeds = embedsetup }), { ['Content-Type'] = 'application/json' })
end