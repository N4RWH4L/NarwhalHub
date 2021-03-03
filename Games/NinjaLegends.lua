local global = getgenv() or _G

local AutoSwing
local AutoSell
local RobotBoss
local EternalBoss
local AncientMagmaBoss
local AutoSword
local AutoBelt
local AutoSkills
local AutoShurikens

local Auto = global.Narwhal.Lib:CreateWindow("Auto")
local Misc = global.Narwhal.Lib:CreateWindow("Misc")

local Player = game:GetService("Players").LocalPlayer
local InfJumps = nil
local table1 = {}

for _,tp in pairs(game.Workspace.islandUnlockParts:GetChildren()) do
    table.insert(table1, tp.Name)
end

Auto:AddToggle({
    text = "Auto Swing",
    callback = function(bool)
        AutoSwing = bool
        while AutoSwing do
            for i,v in pairs(Player:GetDescendants()) do
                if v.Name == "attackKatanaScript" then
                    local Tool = v.Parent
                    if v.Parent:IsA("Tool") then
                        if Tool.Parent == Player.Character then
                            Tool.Parent = Player.Backpack
                            wait()
                        else
                            Tool.Parent = Player.Character
                            wait()
                        end
                    end
                end
            end
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Sell",
    callback = function(bool)
        AutoSell = bool
        while AutoSell do
            for i,v in pairs(game.workspace.sellAreaCircles:GetDescendants()) do
                if v.Parent.Name == "sellAreaCircle12" and v:IsA("Part") and v.Name == "circleInner" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    wait()
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 100, 0)
                    wait()
                end
            end
            wait(0.1)
        end
    end
})

local Bosses = Auto:AddFolder("Bosses")

Bosses:AddToggle({
    text = "Robot Boss",
    callback = function(bool)
        RobotBoss = bool
        while RobotBoss do
            for i,v in pairs(game.workspace:GetDescendants()) do
                if v.Name == "HumanoidRootPart" and v:IsA("Part") and v.Parent.Name == "RobotBoss" then
                    local Player = game:GetService("Players").LocalPlayer
                    for i,v in pairs(Player:GetDescendants()) do
                        if v.Name == "attackKatanaScript" then
                            local Tool = v.Parent
                            if v.Parent:IsA("Tool") then
                                if Tool.Parent == Player.Character then
                                    Tool.Parent = Player.Backpack
                                    wait()
                                else
                                    Tool.Parent = Player.Character
                                    wait()
                                end
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    wait()
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                    wait()
                end
            end
            wait(1)
        end
    end
})

Bosses:AddToggle({
    text = "Eternal Boss",
    callback = function(bool)
        EternalBoss = bool
        while EternalBoss do
            for i,v in pairs(game.workspace:GetDescendants()) do
                if v.Name == "HumanoidRootPart" and v:IsA("Part") and v.Parent.Name == "EternalBoss" then
                    for i,v in pairs(Player:GetDescendants()) do
                        if v.Name == "attackKatanaScript" then
                            local Tool = v.Parent
                            if v.Parent:IsA("Tool") then
                                if Tool.Parent == Player.Character then
                                    Tool.Parent = Player.Backpack
                                    wait()
                                else
                                    Tool.Parent = Player.Character
                                    wait()
                                end
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    wait()
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                    wait()
                end
            end
        end
    end
})

Bosses:AddToggle({
    text = "Ancient Magma Boss",
    callback = function(bool)
        AncientMagmaBoss = bool
        while AncientMagmaBoss do
            for i,v in pairs(game.workspace:GetDescendants()) do
                if v.Name == "HumanoidRootPart" and v:IsA("Part") and v.Parent.Name == "AncientMagmaBoss" then
                    for i,v in pairs(Player:GetDescendants()) do
                        if v.Name == "attackKatanaScript" then
                            local Tool = v.Parent
                            if v.Parent:IsA("Tool") then
                                if Tool.Parent == Player.Character then
                                    Tool.Parent = Player.Backpack
                                    wait()
                                else
                                    Tool.Parent = Player.Character
                                    wait()
                                end
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    wait()
                    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                    wait()
                end
            end
            wait(1)
        end
    end
})

local Buy = Auto:AddFolder("Upgrades")

Buy:AddToggle({
    text = "Swords",
    callback = function(bool)
        AutoSword = bool
        while AutoSword do
            local args = {
                [1] = "buyAllSwords",
                [2] = "Inner Peace Island"
            }

            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(1)
        end
    end
})

Buy:AddToggle({
    text = "Belts",
    callback = function(bool)
        AutoBelt = bool
        while AutoBelt do
            local args = {
                [1] = "buyAllBelts",
                [2] = "Inner Peace Island"
            }

            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(1)
        end
    end
})

Buy:AddToggle({
    text = "Skills",
    callback = function(bool)
        AutoSkills = bool
        while AutoSkills do
            local args = {
                [1] = "buyAllSkills",
                [2] = "Inner Peace Island"
            }

            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(1)
        end
    end
})

Buy:AddToggle({
    text = "Shurikens",
    callback = function(bool)
        AutoShurikens = bool
        while AutoShurikens do
            local args = {
                [1] = "buyAllShurikens",
                [2] = "Inner Peace Island"
            }

            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(1)
        end
    end
})

Misc:AddList({
    text = "Islands", 
    values = table1,
    callback = function(v)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.islandUnlockParts:FindFirstChild(v).CFrame
    end
})

Misc:AddSlider({
    text = "Jumps",
    min = 1,
    max = 999,
    value = game.Players.LocalPlayer.multiJumpCount.Value,
    callback = function(value)
        game.Players.LocalPlayer.multiJumpCount.Value = value
    end
})

Misc:AddButton({
    text = "Unlock All Islands",
    callback = function()
        for i,v in pairs(game.workspace.islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
    end
})

Misc:AddButton({
    text = "Disable Notifications",
    callback = function()
        game.Players.LocalPlayer.PlayerGui.statEffectsGui:Destroy()
    end
})