-- Mostra uma notificação no canto da tela, igual as do GTA
local function notificar(texto)
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(texto)
        PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
        EndTextCommandThefeedPostTicker(false, true)
end

RegisterCommand('bilhete', function()
    local ped = PlayerPedId()
    local posicao = GetEntityCoords(ped)

    local x = math.floor(posicao.x)
    local y = math.floor(posicao.y)

    notificar('Papel e caneta na mão. Você está em X ' .. x .. ', Y ' .. y)
end, false)