-- Mostra uma notificação no canto da tela, igual as do GTA
local function notificar(texto)
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(texto)
        PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
        EndTextCommandThefeedPostTicker(false, true)
end

-- Guarda se o bilhete ta na tela
local aberto = false

RegisterCommand('bilhete', function()
    aberto = not aberto

    if aberto then
        SendNUIMessage({ acao = 'abrir' })
        notificar('Você pegou o bilhete.')
    else
        SendNUIMessage({ acao = 'fechar' })
        notificar('Você guardou o bilhete.')
    end
end, false)