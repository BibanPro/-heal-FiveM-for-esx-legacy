RegisterNetEvent("healPlayer")
AddEventHandler("healPlayer", function()
    local playerPed = PlayerPedId()
    local map = GetPlayerServerId(PlayerId())

    SetPlayerInvincible(playerPed, true)
    SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
    SetPlayerInvincible(playerPed, false)
end)