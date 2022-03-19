--[[
    ____ ___ ____ _  _ ____    ____ _  _ ___ _    _  _ _  _ _    ___  _   _ ___  ____ ____ ____ 
    [__   |  |__| |\ | |___    |__| |\ |  |  |    |\ | |  | |    |__]  \_/  |__] |__| [__  [__  
    ___]  |  |  | | \| |___    |  | | \|  |  |    | \| |__| |    |__]   |   |    |  | ___] ___] 
    
    [v] Version :  1.0
    [x] Coded By : Stane
    [d] Description : You have to change and obfuscate or tokenize this NUI Callback and Events if you want to be safe 100%
]]

local JSLoaded = nil

local bypassWarrning = 0

RegisterNUICallback('Connector', function(data,cb)
    if data.action == nil then
        return TriggerServerEvent('anticheat:randomEvent')
    end
    if data.action == 'sPfdLksjyszxsalk1m,jyksdXjmvDbjaY;ak1337nakz;1d291' then
        TriggerServerEvent('anticheat:randomEvent')
        return
    elseif data.action == 'GykLdBjDkWrt21wksz.Kjyl1337133333333333333333333337asslc' then
        JSLoaded = true -- When js send heartbeat JSLoaded is true
    else
        TriggerServerEvent('anticheat:randomEvent')
    end
end)

function checkJS() 
    return JSLoaded
end

function StartChecking()
    Wait(20)
    if checkJS() == nil or checkJS() == false then -- Check if JSloaded is true or nil or false
        bypassWarrning = bypassWarrning + 1 -- If JSLoaded is nil or false adding Warrning to player.
        if bypassWarrning > 1 then -- If the warning is higher than 1 player will be banned, but if warrning equals 0 player will be sended to console.
            TriggerServerEvent('anticheat:randomEvent')
        else
            TriggerServerEvent('anticheat:warrningEvent') 
        end
    end
    Wait(20) -- Wait 20 miliseconds
    JSLoaded = false -- We set JSLoaded to false because we are waiting for javascript to send the heartbeat again
    SetTimeout(5000, StartChecking) -- Here we make a thread that will call a function StartChecking every 5000 milliseconds
end)

Citizen.CreateThread(function()
    Wait(5000) -- We will wait 5000 miliseconds for javascript to send heartbeat to lua 
    StartChecking() -- Then we will check if javascript sent heartbeat with this function
end)