local ESX = nil
local script_name = GetCurrentResourceName()

local allowId = {}

RegisterNetEvent(script_name .. ':addAllowPlayer')
AddEventHandler(script_name .. ':addAllowPlayer', function(playerId)
    log(script_name .. ':addAllowPlayer', playerId)
    allowId['player_' .. playerId] = true
    log(allowId)
end)

RegisterNetEvent(script_name .. ':removeAllowPlayer')
AddEventHandler(script_name .. ':removeAllowPlayer', function(playerId)
    log(script_name .. ':removeAllowPlayer', playerId)
    allowId['player_' .. playerId] = false
    log(allowId)
end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    Citizen.CreateThread(function()
        while true do
            local hold = getHoldStatus()
            local playerPed = PlayerPedId()
            local PedVeh = GetVehiclePedIsIn(playerPed, false)
            if PedVeh ~= 0 and #hold > 0 then
                local playerData = ESX.GetPlayerData()
                local playerId = hold[1].PlayerId
                if not IsPedDeadOrDying(GetPlayerPed(playerId), 1) then
                    local PlayerSvId = hold[1].PlayerSvId
                    if not allowId['player_' .. PlayerSvId] then
                        if not Config.AllowJob[playerData.job.name] then
                            TaskLeaveVehicle(playerPed, PedVeh, 0)
                        end
                    end
                end
            end
            Citizen.Wait(1000)       --TODO ตั้งค่าหน่วงเวลาตามใจชอบได้เลย
        end
    end)
end)

function getHoldStatus()
    return exports.xzero_hold:isHoldActive()
end