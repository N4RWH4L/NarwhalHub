local global = getgenv() or _G
local library =  global.Narwhal.Lib

local Auto = library:CreateWindow("Auto")
local Misc = library:CreateWindow("Misc")

Auto:AddToggle({
    text = "Cash Out",
    flag = "CashOut",
    callback = function()
        while library.flags.CashOut do
            game:GetService("ReplicatedStorage").Signals.ActivateEssentials:FireServer("CashOut")
            wait(0.1)
        end
    end
})

Auto:AddToggle({
    text = "Collect Coins",
    flag = "CollectCoins",
    callback = function()
        while library.flags.CollectCoins do
            local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

            for _, v in pairs(game:GetService("Workspace").Plots["Plot_"..game.Players.LocalPlayer.Name].Coins:GetChildren()) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                wait(0.25)
            end

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPos
            wait(5)
        end
    end
})

local Upgrades = Auto:AddFolder("Upgrades")

Upgrades:AddToggle({
    text = "Workers",
    flag = "UpgradeWorkers",
    callback = function()
        while library.flags.UpgradeWorkers do
            game:GetService("ReplicatedStorage").Signals.ActivateEssentials:FireServer("Workers")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Speed",
    flag = "UpgradeSpeed",
    callback = function()
        while library.flags.UpgradeSpeed do
            game:GetService("ReplicatedStorage").Signals.ActivateEssentials:FireServer("Speed")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Strength",
    flag = "UpgradeStrength",
    callback = function()
        while library.flags.UpgradeStrength do
            game:GetService("ReplicatedStorage").Signals.ActivateEssentials:FireServer("Strength")
            wait(1)
        end
    end
})

Misc:AddToggle({
    text = "Disable Notifications",
    callback = function(state)
        game:GetService("Players").LocalPlayer.PlayerGui.Messages.Enabled = not state
    end
})