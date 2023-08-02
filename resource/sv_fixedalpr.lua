function CameraActivatedBOLO(camera, speed, plate, location, heading)
    -- if SVConfig.UseDiscordLogging then
    --     CreateDiscordLogBOLO(source, camera, speed, plate, location, heading)
    --     print("Initiated Discord BOLO Log")
    -- end

    -- Add any framework logic here, i.e. event triggers. Default is a print statement to server console
    print(string.format("Plate: %s, Speed: %f, Heading: %f, Location: %s - ALERT: Bolo Plate Detected!", plate, speed, heading, camera.name))
end

function CameraActivatedSpeed(camera, speed, plate, location, heading)
    -- if SVConfig.UseDiscordLogging then
    --     CreateDiscordLogSpeed(source, camera, speed, plate, location, heading)
    --     print("Initiated Discord Speed Log")
    -- end
    if Config.FlashClient then
        TriggerClientEvent('fixedALPR:clientFlash', source)
    end

    -- Add any framework logic here, i.e. event triggers. Default is a print statement to server console
    print(string.format("Plate: %s, Speed: %f, Heading: %f, Location: %s - ALERT: Speeding Vehicle Detected!", plate, speed, heading, camera.name))
end


RegisterServerEvent('plateChecker:checkVehicle')
AddEventHandler('plateChecker:checkVehicle', function(plate, camera, heading, speed, v3location)
    local isBoloPlate = false
    local isSpeeding = false
    local truespeed = 0

    -- Calculates true speed of vehicle
    if Config.UseMPH then
        truespeed = speed * 2.236936
    else
        truespeed = speed * 3.6
    end

    -- If speed check is enabled, checks whether speed was over limit.
    if Config.CheckSpeed then
        if truespeed > camera.limit then
            isSpeeding = true
        end
    end


    -- Perform checks or actions based on the plate data received
    -- For example, you can use an external API to look up the plate information, or log it to a database, etc.

    -- Bolo Check
    -- Check against table
    local boloplates = {
        "60DRA486",
        -- Add more plates to the list as needed
    }
    for _, boloPlate in ipairs(boloplates) do
        if plate == boloPlate then
            isBoloPlate = true
            break
        end
    end


    -- Takes action based on the results of above checks:
    if isBoloPlate then -- Plate has BOLO
        CameraActivatedBOLO(camera, truespeed, plate, v3location, heading)
        -- Change the events upon BOLO detection above not here
    else if isSpeeding then -- Vehicle is Speeding
        CameraActivatedSpeed(camera, truespeed, plate, v3location, heading)
        
    else -- Regular Plate
        print(string.format("Plate: %s, Speed: %f, Heading: %f, Location: %s", plate, truespeed, heading, camera.name))
    end

    if isBoloPlate or isSpeeding and Config.FlashClient then  
        TriggerClientEvent('fixedALPR:clientFlash', source)
    end
    -- Bolo Check end
    end
end)