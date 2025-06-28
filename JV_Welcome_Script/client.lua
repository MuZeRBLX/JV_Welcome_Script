require(config.lua)

AddEventHandler('playerSpawned', function ()
    local name = GetPlayerName(PlayerId())
    local servername = config.servername

    exports.chat:addMessage({
        color = { 255, 0 ,0},
        args = {"^2Welcome To " ..servername.. " " ..name }
    })
end)

RegisterCommand('welcomemsg', function()
    local name = GetPlayerName(PlayerId())
    local servername = "Jvaeth's Development"
    exports.chat:addMessage({
        color = { 255, 0 ,0},
        args = {"^2Welcome To " ..servername.. " " ..name }
    })
end, false)
