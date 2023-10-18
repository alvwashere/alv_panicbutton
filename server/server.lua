if Config.Activate.Command then
    RegisterCommand('panicbutton', function(source, args, rawCommand)
        PanicButton(source)
    end)
end

if Config.Activate.Item then
    ESX.RegisterUsableItem('panicbutton', function(source)
        PanicButton(source)
    end)
end

function PanicButton(source)
    xPlayer = ESX.GetPlayerFromId(source)

    if Config.Jobs[xPlayer.getJob().name] then
        for _, Player in pairs(ESX.GetExtendedPlayers()) do
            if Config.Jobs[Player.getJob().name] then
                TriggerClientEvent('alv_panicbutton:panic', Player.source, GetPlayerName(source), GetEntityCoords(GetPlayerPed(source)))
            end
        end
    else
        return xPlayer.showNotification('You are not a police officer...')
    end
end
