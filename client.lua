local usingScuba = false

local function debugPrint(...)
    if Config.Debug then
        print("[DEBUG]", ...)
    end
end

RegisterNetEvent("esx_underwater:startScuba", function(time)
    local ped = PlayerPedId()
    usingScuba = true

    SetEnableScuba(ped, true)
    SetPedScubaGearVariation(ped)
    SetPedMaxTimeUnderwater(ped, time)

    debugPrint("Tauchanzug aktiviert (Sekunden):", time)

    CreateThread(function()
        local remaining = time
        while usingScuba and remaining > 0 do
            Wait(1000)
            remaining = remaining - 1
        end

        if usingScuba then
            TriggerEvent('esx:showNotification', _U("air_out"))
            SetEnableScuba(ped, false)
            SetPedMaxTimeUnderwater(ped, 10.0)
            usingScuba = false
            debugPrint("Luft abgelaufen.")
        end
    end)
end)

RegisterNetEvent("esx_underwater:refillOxygen", function(time)
    local ped = PlayerPedId()
    if usingScuba then
        SetPedMaxTimeUnderwater(ped, time)
        TriggerEvent('esx:showNotification', _U("refill_success"))
        debugPrint("Luft aufgefüllt (Sekunden):", time)
    else
        TriggerEvent('esx:showNotification', _U("no_gear"))
        debugPrint("Tank verwendet ohne Tauchanzug.")
    end
end)