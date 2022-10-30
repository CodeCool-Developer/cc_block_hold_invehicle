local script_name = GetCurrentResourceName()
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

RegisterCommand(Config.AddAllowHoldPlayer.command, function(source, args, user)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.AddAllowHoldPlayer.group[xPlayer.getGroup()] then
        print('command add allow player hold',xPlayer.source)
        local playerId = args[1] or xPlayer.source
        TriggerClientEvent(script_name .. ':addAllowPlayer', -1, playerId)
    end
end)

RegisterCommand(Config.RemoveAllowHoldPlayer.command, function(source, args, user)
    local xPlayer = ESX.GetPlayerFromId(source)
    if Config.RemoveAllowHoldPlayer.group[xPlayer.getGroup()] then
        print('command remove allow player hold',xPlayer.source)
        local playerId = args[1] or xPlayer.source
        TriggerClientEvent(script_name .. ':removeAllowPlayer', -1, playerId)
    end
end)
