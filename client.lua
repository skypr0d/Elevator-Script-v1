local elevator = false
RMenu.Add('elevator', 'menu', RageUI.CreateMenu("Elevator", ""))
RMenu:Get('elevator', 'menu').Closed = function()
    elevator = false
end

function DrawText3Ds(x, y, z, text)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
        SetTextScale(0.0*scale, 0.40*scale)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropshadow(0, 0, 0, 0, 150)
        SetTextEdge(1, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        SetDrawOrigin(x,y,z, 0)
        DrawText(0.0, 0.0)
        ClearDrawOrigin()
end

CreateThread(function()
    while true do
        local isInAnyZone = false

        for k,v in pairs(Config.Elevator) do
            local DistPlayer = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.From, true)
            if DistPlayer < 4.0 then 
                isInAnyZone = true
                if DistPlayer <= v.DistanceAction then
                    DrawText3Ds(v.From.x, v.From.y, v.From.z, v.DrawText)
                    DrawMarker(6, v.From.x, v.From.y, v.From.z-0.97, 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 0.7, 0.7, 0.7, 255, 255, 255, 100, false, false, true, false, false, false, false, false)
                    if IsControlJustPressed(0, 38) then
                        if Config.Elevator[k].FreezePlayer then FreezeEntityPosition(PlayerPedId(), true) end
                        Wait(350)
                        SetEntityCoords(PlayerPedId(), Config.Elevator[k].To.x, Config.Elevator[k].To.y, Config.Elevator[k].To.z, false, false, false, false)
                        SetEntityHeading(PlayerPedId(), Config.Elevator[k].To.w)
                        if Config.Elevator[k].FreezePlayer then Wait(Config.Elevator[k].FreezePlayer) FreezeEntityPosition(PlayerPedId(), false) end
                    end
                end
            end
        end

        if not isInAnyZone then
            Wait(4000)
        else
            Wait(4)
        end
    end
end)
