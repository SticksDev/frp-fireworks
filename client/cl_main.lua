QBCore = exports['qb-core']:GetCoreObject()
local box = nil
local animlib = 'anim@mp_fireworks'

RegisterNetEvent('frp-fireworks:client:UseFirework')
AddEventHandler('frp-fireworks:client:UseFirework', function()
	print("[frp-fireworks:client] Preparing to use firework...")
	lib.requestAnimDict(animlib, 2000)
	lib.requestNamedPtfxAsset("scr_indep_fireworks", 2000)

	print("[frp-fireworks:client] Starting firework...")

    local ped = GetPlayerPed(-1)
    local pedcoords = GetEntityCoords(ped)
    local times = 20

    TaskPlayAnim(ped, animlib, 'place_firework_3_box', -1, -8.0, 3000, 0, 0, false, false, false)
    Citizen.Wait(4000)
    ClearPedTasks(ped)

    box = CreateObject(GetHashKey('ind_prop_firework_03'), pedcoords, true, false, false)
    PlaceObjectOnGroundProperly(box)
    FreezeEntityPosition(box, true)
    local firecoords = GetEntityCoords(box)

	print("[frp-fireworks:client] Firework placed at: " .. firecoords)
	print("[frp-fireworks:client] Starting firework sequence...")

    Citizen.Wait(10000)
    repeat
        UseParticleFxAssetNextCall("scr_indep_fireworks")
        StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", firecoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
        times = times - 1
        Citizen.Wait(2000)
    until(times == 0)

	print("[frp-fireworks:client] Firework sequence complete! Cleaning up...")
    DeleteEntity(box)
    box = nil

	print("[frp-fireworks:client] Cleanup complete. Firework finished!")
end)
