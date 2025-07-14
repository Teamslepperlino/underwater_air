ESX = exports['es_extended']:getSharedObject()

local function notify(source, msg)
    if Config.NotifySystem == "okok" then
        TriggerClientEvent("okokNotify:Alert", source, "Tauchen", msg, 5000, "info")
    else
        TriggerClientEvent('esx:showNotification', source, msg)
    end
end

local function debugPrint(...)
    if Config.Debug then
        print("[DEBUG]", ...)
    end
end

-- scuba_gear benutzen
ESX.RegisterUsableItem("scuba_gear", function(source)
    TriggerClientEvent("esx_underwater:startScuba", source, Config.OxygenTime)
    notify(source, _U("scuba_used"))
    debugPrint("scuba_gear verwendet von:", GetPlayerName(source))
end)

-- scuba_tank benutzen
ESX.RegisterUsableItem("scuba_tank", function(source)
    TriggerClientEvent("esx_underwater:refillOxygen", source, Config.OxygenTime)
    notify(source, _U("tank_used"))
    debugPrint("scuba_tank verwendet von:", GetPlayerName(source))
end)