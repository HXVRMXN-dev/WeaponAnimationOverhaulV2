AddEventHandler('playerSpawned', function()
    TriggerServerEvent('syncWeaponAnim')
end)

RegisterNetEvent('applyWeaponAnim')
AddEventHandler('applyWeaponAnim', function(playerId)
    local player = GetPlayerFromServerId(playerId)
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        if DoesEntityExist(ped) then
            SetWeaponAnimationOverride(ped, "GangFemale")
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        TriggerServerEvent('syncWeaponAnim')
    end
end)