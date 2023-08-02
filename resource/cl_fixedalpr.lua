local checkedPlates = {} -- Table to store checked plates and their last checked timestamp

Citizen.CreateThread(function()
    local modelHash = GetHashKey(Config.ModelHash)

    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Citizen.Wait(0)
    end

    for _, location in ipairs(Config.Locations) do
        local coords = location.camera.coords
        local heading = location.camera.heading

        local camProp = CreateObject(modelHash, coords.x, coords.y, coords.z - 1.1, false, false, true)
        while not DoesEntityExist(camProp) do
            Citizen.Wait(0)
        end
        PlaceObjectOnGroundProperly(camProp)
        FreezeEntityPosition(camProp, true)
        SetEntityHeading(camProp, heading)

        location.camera.prop = camProp
    end

    SetModelAsNoLongerNeeded(modelHash)
    print("Placed cameras")
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local PlayerPed = PlayerPedId()

        if IsPedInAnyVehicle(PlayerPed, false) then -- If In-Vehicle
            local vehicle = GetVehiclePedIsIn(PlayerPed, false)
            if GetPedInVehicleSeat(vehicle, -1) then -- If-Driver
                local playerCoords = GetEntityCoords(PlayerPed)

                for _, location in ipairs(Config.Locations) do
                    local distance = #(location.camera.coords - playerCoords)
                    if distance < location.detectionRange then
                        if location.camera and location.camera.coords and location.camera.heading then
                            if DoesEntityExist(vehicle) then
                                --print("Entity exists")
                                local plate = GetVehicleNumberPlateText(vehicle)
                                local heading = GetEntityHeading(vehicle)
                                local speed = GetEntitySpeed(vehicle)

                                local currentTime = GetGameTimer()

                                if not checkedPlates[plate] or (currentTime - checkedPlates[plate]) >= Config.PlateCheckCooldown then
                                    checkedPlates[plate] = currentTime
                                    TriggerServerEvent('plateChecker:checkVehicle', plate, location, heading, speed, playerCoords)
                                else
                                    --print("Plate already checked. Cooldown in progress...")
                                end
                            end
                        else
                            print("Error: Missing 'camera' information for a location entry.")
                        end
                    end
                end
            end -- If Driver end
        end -- In-Vehicle end
    end -- while true end
end)

RegisterCommand("listcameras", function()
    for _, location in ipairs(Config.Locations) do
        local coords = location.camera.coords
        print(string.format("Camera at X: %f, Y: %f, Z: %f, Heading: %f", coords.x, coords.y, coords.z, location.camera.heading))
    end
end, false)

RegisterNetEvent("fixedALPR:clientFlash")
AddEventHandler("fixedALPR:clientFlash", function()
    PlaySoundFrontend(-1, "ScreenFlash", "MissionFailedSounds", true)
    StartScreenEffect("FocusOut", 0, false)
    Wait(2000)
    StopScreenEffect("FocusOut")
end)