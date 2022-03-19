--[[
    ____ ___ ____ _  _ ____    ____ _  _ ___ _    _  _ _  _ _    ___  _   _ ___  ____ ____ ____ 
    [__   |  |__| |\ | |___    |__| |\ |  |  |    |\ | |  | |    |__]  \_/  |__] |__| [__  [__  
    ___]  |  |  | | \| |___    |  | | \|  |  |    | \| |__| |    |__]   |   |    |  | ___] ___] 
    
    [v] Version :  1.0
    [x] Coded By : Stane
    [d] Description : You have to change and obfuscate or tokenize this NUI Callback and Events if you want to be safe 100%
]]

RegisterServerEvent('anticheat:randomEvent')
AddEventHandler('anticheat:randomEvent', function()
    local _source = source
    print(GetPlayerName(_source) .. ' tried to bypass NUI Tools')
    DropPlayer(_source, 'You can\'t bypass us') -- or put your ban sys.
end)


RegisterServerEvent('anticheat:warrningEvent')
AddEventHandler('anticheat:warrningEvent', function()
    local _source = source
    print(GetPlayerName(_source) .. ' maybe trying to bypass NUI Tools.')
end)
