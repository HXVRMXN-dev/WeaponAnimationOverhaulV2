RegisterNetEvent('syncWeaponAnim')
AddEventHandler('syncWeaponAnim', function()
    local src = source
    TriggerClientEvent('applyWeaponAnim', -1, src)
end)