print("[frp-fireworks] Starting resource...")
QBCore = exports['qb-core']:GetCoreObject()

if QBCore == nil then
	print("[!] QBCore is not installed (failed to get core object). This resource requires QBCore to function properly. Shutting down resource...")
	Citizen.Wait(5000)
	StopResource(GetCurrentResourceName())
end

-- Create our command to use fireworks. Only allow people with the frp.useFireworks permission to use this command.
QBCore.Commands.Add("fireworks", "Trigger a firework show!", {}, false, function(source, args)
	local Player = QBCore.Functions.GetPlayer(source)
	TriggerClientEvent('frp-fireworks:client:UseFirework', source)
	TriggerClientEvent('QBCore:Notify', source, "Starting the show...", "success")
end, 'admin')

print("[frp-fireworks] Done!")
print("[frp-fireworks] Resource started successfully!")
