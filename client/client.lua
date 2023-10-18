RegisterNetEvent('alv_panicbutton:panic', function(o_name, coords)
    if Config.UseUI then
        SendNUIMessage({
            type='update_panic',
            toggle=true,
            name = o_name
        })
    end

    if Config.Blip.Enabled then
        blip = AddBlipForCoord(coords)
        SetBlipSprite(blip, Config.Blip.Sprite)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipColour(blip, Config.Blip.Color)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(o_name.."'s Panic Button")
        EndTextCommandSetBlipName(blip)
    end

    Wait(Config.Timer * 1000)

    if Config.UseUI then
        SendNUIMessage({
            type='update_panic',
            toggle = false
        })
    end

    if Config.Blip then
        RemoveBlip(blip)
    end
end)