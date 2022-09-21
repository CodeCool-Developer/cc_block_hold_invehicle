local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    Citizen.CreateThread(function()
        while true do
            if IsPedInAnyVehicle(GetPlayerPed(-1), false) and #exports.xzero_hold:isHoldActive() > 0 then
                local playerData = ESX.GetPlayerData()
                if not Config.AllowJob[playerData.job.name] then
                    ClearPedTasksImmediately(GetPlayerPed(-1))
                end
            end
            Citizen.Wait(1000)       --TODO ตั้งค่าหน่วยเวลาตามใจชอบได้เลย
        end
    end)
end)

function ArrayIsInOne(list, search)
    local text = search:lower()
    for k, v in ipairs(list) do
        if v:lower() == text:lower() then
            return true
        end
    end
    return false
end