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