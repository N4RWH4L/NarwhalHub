local global = getgenv() or _G

local ESP = loadstring(global.Narwhal.Import("Util/ESP.lua"))()
	
local Visuals = global.Narwhal.Lib:CreateWindow("Visuals")

Visuals:AddToggle({
    text = "Names",
    callback = function(bool)
        ESP:Names(bool)
    end
})

Visuals:AddToggle({
    text = "Tracers",
    callback = function(bool)
        ESP:Tracers(bool)
    end
})

Visuals:AddToggle({
    text = "Teamcheck",
    state = true,
    callback = function(bool)
        ESP:Teamcheck(bool)
    end
})

Visuals:AddToggle({
    text = "Show Team",
    state = true,
    callback = function(bool)
        ESP:ShowTeam(bool)
    end
})

Visuals:AddColor({
    text = "Team Color",
    color = Color3.fromRGB(2, 255, 239),
    callback = function(color)
        ESP:TeamColor(color)
    end
})

Visuals:AddColor({
    text = "Enemy Color",
    color = Color3.fromRGB(255, 0, 0),
    callback = function(color)
        ESP:EnemyColor(color)
    end
})