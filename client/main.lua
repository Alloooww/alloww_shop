ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

local blips = { -- Blips sur la map
     {title="Superette 24/7", colour=3, id=52, x = 29.23, y = -1345.33, z = 29.5},
     {title="Superette 24/7", colour=3, id=52, x = 374.09, y = 326.77, z = 103.57},
     {title="Superette 24/7", colour=3, id=52, x = 2556.2, y = 382.14, z = 108.62},
     {title="Superette 24/7", colour=3, id=52, x = -3040.44, y = 585.44, z = 7.91},
     {title="Superette 24/7", colour=3, id=52, x = -3243.11, y = 1001.34, z = 12.83},
     {title="Superette 24/7", colour=3, id=52, x = 547.9, y = 2670.3, z = 42.16},
     {title="Superette 24/7", colour=3, id=52, x = 2678.02, y = 3280.93, z = 55.24},
     {title="Superette 24/7", colour=3, id=52, x = 1960.61, y = 3741.67, z = 32.34},
     {title="Superette 24/7", colour=3, id=52, x = 1729.34, y = 6415.32, z = 35.04},
     {title="Superette LTD", colour=3, id=52, x = -48.47, y = -1757.02, z = 29.42},
     {title="Superette LTD", colour=3, id=52, x = -1820.89, y = 792.89, z = 138.11},
     {title="Superette LTD", colour=3, id=52, x = -707.41, y = -914.01, z = 19.22},
     {title="Superette LTD", colour=3, id=52, x = 1163.42, y = -323.83, z = 69.21},
     {title="Superette LTD", colour=3, id=52, x = 1698.25, y = 4924.34, z = 42.06},
     {title="Superette Rob's Liquor", colour=3, id=52, x = -1223.11, y = -907.34, z = 12.33},
     {title="Superette Rob's Liquor", colour=3, id=52, x = -2967.91, y = 390.74, z = 15.04},
     {title="Superette Rob's Liquor", colour=3, id=52, x = 1135.66, y = -981.98, z = 46.42},
     {title="Superette Rob's Liquor", colour=3, id=52, x = 1166.5, y = 2709.36, z = 38.16},
     {title="Superette Rob's Liquor", colour=3, id=52, x = 1392.17, y = 3604.85, z = 34.98},
     {title="Superette Rob's Liquor", colour=3, id=52, x = -1487.11, y = -379.23, z = 40.16} 
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


RMenu.Add('shop', 'main', RageUI.CreateMenu("Magasin", "Superette"))
RMenu.Add('shop', 'boisson', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Boisson", "Achète Ta boisson"))
RMenu.Add('shop', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Nourriture", "Achète Ta Nourriture"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shop', 'main'), true, true, true, function()

            RageUI.Button("🍻 Boisson", "Achète De La boisson !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'boisson'))

            RageUI.Button("🍔 Nourriture", "Achète De La Nourritures", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'nourriture'))

        end, function()
        end)

         RageUI.IsVisible(RMenu:Get('shop', 'boisson'), true, true, true, function()

            RageUI.Button("Eau", "Achète De L'eau", {RightLabel = "~g~10$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('alloww:BuyWater')
                end
            end)
        end, function()
    end)

            RageUI.IsVisible(RMenu:Get('shop', 'nourriture'), true, true, true, function()

                RageUI.Button("Pain", "Achète Du Pain", {RightLabel = "~g~15$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('alloww:BuyBread')
                    end
                end)
                    
            end, function()
            end, 1)

    
            Citizen.Wait(0)
        end
    
    end)




    local position = {
        {x = 25.66 , y = -1346.29, z = 29.5, },
        {x = -48.39 , y = -1757.89, z = 29.42, },
        {x = -1223.11, y = -907.34, z = 12.33},
        {x = -1487.11, y = -379.23, z = 40.16},
        {x = -707.41, y = -914.01, z = 19.22},
        {x = 1135.66, y = -981.98, z = 46.42},
        {x = 374.09, y = 326.77, z = 103.57},
        {x = 1163.42, y = -323.83, z = 69.21},
        {x = 2556.2, y = 382.14, z = 108.62},
        {x = -3040.44, y = 585.44, z = 7.91},
        {x = -3243.11, y = 1001.34, z = 12.83},
        {x = -2967.91, y = 390.74, z = 15.04},
        {x = -1820.89, y = 792.89, z = 138.11},
        {x = 547.9, y = 2670.3, z = 42.16},
        {x = 1166.5, y = 2709.36, z = 38.16},
        {x = 2678.02, y = 3280.93, z = 55.24},
        {x = 1960.61, y = 3741.67, z = 32.34},
        {x = 1392.17, y = 3604.85, z = 34.98},
        {x = 1698.25, y = 4924.34, z = 42.06},
        {x = 1729.34, y = 6415.32, z = 35.04}
        
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                  -- RageUI.Text({
                   --    message = "Appuyez sur [~b~E~w~] pour parler à Apu",
                   --     time_display = 1
                   -- })
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour parler à ~b~Apu")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('shop', 'main'), not RageUI.Visible(RMenu:Get('shop', 'main')))
                    end
                end
            end
        end
    end)


-- Merci de ne pas changer le nom de la ressource sans l'accord de l'auhteur (Alloww) - Discord = 𝓐𝓵𝓵𝓸𝔀𝔀#0001

-- © Alloww 2020 


-- 𝓐𝓵𝓵𝓸𝔀𝔀#0001 | https://discord.gg/kpfEuDz