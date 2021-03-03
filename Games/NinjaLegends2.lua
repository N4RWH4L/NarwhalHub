local global = getgenv() or _G

local AutoSwingT
local AutoSellT
local AutoUpgradeSwordT
local AutoUpgradeCrystalT
local AutoUpgradeSkillT

local Auto = global.Narwhal.Lib:CreateWindow("Auto")
local Misc = global.Narwhal.Lib:CreateWindow("Misc")

Auto:AddToggle({
    text = "Auto Swing",
    callback = function(bool)
        AutoSwingT = bool
        while AutoSwingT do
            for _, v in pairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
                if v.Name == "attackSaberScript" then
                    local Tool = v.Parent
                    if v.Parent:IsA("Tool") then
                        if Tool.Parent == game:GetService("Players").LocalPlayer.Character then
                            Tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                            wait()
                        else
                            Tool.Parent = game:GetService("Players").LocalPlayer.Character
                            wait()
                        end
                    end
                end
            end
            game:GetService("Players").LocalPlayer.saberEvent:FireServer("swingBlade")
            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Sell",
    callback = function(bool)
        AutoSellT = bool
        while AutoSellT do
            for _, v in pairs(game:GetService("Workspace").sellAreaCircles:GetChildren()) do
                if v.whichPlanet.Value == "Planet Elemental" then
                    v.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait()
                    v.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 100, 0)
                end
            end
            wait(0.1)
        end
    end
})

local Upgrades = Auto:AddFolder("Upgrades")

Upgrades:AddToggle({
    text = "Blades",
    callback = function(bool)
        AutoUpgradeSwordT = bool
        while AutoUpgradeSwordT do
            game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", {["whichItems"] = "Swords", ["whichPlanet"] = "Planet Elemental"})
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Crystals",
    callback = function(bool)
        AutoUpgradeCrystalT = bool
        while AutoUpgradeCrystalT do
            game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", {["whichItems"] = "Crystals", ["whichPlanet"] = "Planet Elemental"})
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Skills",
    callback = function(bool)
        AutoUpgradeSkillT = bool
        while AutoUpgradeSkillT do
            game:GetService("Players").LocalPlayer.saberEvent:FireServer("buyAllItems", {["whichItems"] = "Skills",["whichPlanet"] = "Planet Elemental"})
            wait(1)
        end
    end
})

local Teleports = {
    {
        Name = "Spawn",
        Pos = CFrame.new(-42.6958122, 113.815842, 205.082932)
    },
    {
        Name = "Planet Zephyr",
        Pos = CFrame.new(1.30253005, 1467.45459, 74.1059723)
    },
    {
        Name = "Planet Inferno",
        Pos = CFrame.new(1.30253017, 3057.55396, 74.1059723)
    },
    {
        Name = "Planet Omega",
        Pos = CFrame.new(1.30253017, 4681.55322, 74.1059723)
    },
    {
        Name = "Planet Elemental",
        Pos = CFrame.new(1.6510849, 6311.65332, 72.2243195)
    }
}

local Teles = Misc:AddFolder("Teles")

for _, v in pairs(Teleports) do
    Teles:AddButton({
        text = v.Name,
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Pos
        end
    })
end