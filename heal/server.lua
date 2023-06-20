ESX = exports["es_extended"]:getSharedObject()

RegisterCommand("heal", function(source, args, rawCommand, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local group = xPlayer.getGroup()
    local target = tonumber(args[1])
    if group == "admin" or group == "mod" then -- Vérifie si l'utilisateur appartient à un groupe admin ou mod
        if target ~= nil then
            TriggerClientEvent("healPlayer", target)
        else
            TriggerClientEvent("healPlayer", source)
        end
    else
        TriggerClientEvent("chatMessage", source, "SYSTEM", {255, 0, 0}, "Vous n'avez pas les permissions nécessaires pour utiliser cette commande.")
    end
end)

