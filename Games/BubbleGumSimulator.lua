local global = getgenv() or _G
local library =  global.Narwhal.Lib

local Auto = library:CreateWindow("Auto")
local Misc = library:CreateWindow("Misc")

Auto:AddToggle({
    text = "Auto Bubble",
    flag = "AutoBubble",
    callback = function()
        while library.flags.AutoBubble do
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("BlowBubble")
            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Sell",
    flag = "AutoSell",
    callback = function() 
        while library.flags.AutoSell do
            game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer("SellBubble", "TwilightSell")
            wait(1)
        end
    end
})

Misc:AddButton({
    text = "Unlock Islands",
    callback = function()
        for _, v in pairs(game:GetService("Workspace").FloatingIslands.Overworld:GetChildren()) do
            if v:FindFirstChild("TeleportPoint") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.TeleportPoint.CFrame
                wait(0.1)
            end
        end
    end
})