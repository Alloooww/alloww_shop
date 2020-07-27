ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('alloww:BuyWater')
AddEventHandler('alloww:BuyWater', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PriceEau
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Tu n'a pas assez ~r~d\'argent")
    end
end)

RegisterNetEvent('alloww:BuyBread')
AddEventHandler('alloww:BuyBread', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.PricePain
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Tu n'a pas assez ~r~d\'argent")
    end
end)

-- Merci de ne pas changer le nom de la ressource sans l'accord de l'auhteur (Alloww) - Discord = 𝓐𝓵𝓵𝓸𝔀𝔀#0001

-- © Alloww 2020 


-- 𝓐𝓵𝓵𝓸𝔀𝔀#0001 | https://discord.gg/kpfEuDz