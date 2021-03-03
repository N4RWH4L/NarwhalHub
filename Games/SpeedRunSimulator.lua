local global = getgenv() or _G
local library =  global.Narwhal.Lib

local farmWin = library:CreateWindow("Auto")
local misc = library:CreateWindow("Misc")

local teleWin = misc:AddFolder("Teleports")
local adminWin = misc:AddFolder("Admin")


local eggTable = {}
local table1 = {}

for _,tps in pairs(game:GetService("Workspace").GameAssets.GlobalAssets.Teleports:GetChildren()) do
    table.insert(table1, tps.Name)
end

for _,v in pairs(game:GetService("ReplicatedStorage").Assets:GetChildren()) do
    if string.match(v.Name, "Egg") then
        local name = v.Name:sub(1, -4)
        table.insert(eggTable, name)
        print(v.Name)
    end
end

--[[for _,v in pairs(eggTable) do
    print(v)
end]]

farmWin:AddToggle({
    text = "Auto Speed",
    flag = "AutoSpeed",
    callback = function()
        while library.flags.AutoSpeed do
            game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
            wait()
        end
    end
})


adminWin:AddSlider({
    text = "Rebirth Amount",
    flag = "rebirthAm",
    min = -99999999999999999,
    max = 99999999999999999,
    value = 100,
    callback = function()
        print(library.flags.rebirthAm)
    end

})

adminWin:AddButton({
    text = "Add Rebirths",
    callback = function()
        game:GetService("ReplicatedStorage").Remotes.AddRebirth:FireServer(library.flags.rebirthAm) 
    end
})

adminWin:AddSlider({
    text = "Speed Amount",
    flag = "amSpeed",
    min = 1,
    max = 9222000000000000000,
    value = 1000,
    callback = function()
        print(library.flags.amSpeed)
    end
})

adminWin:AddButton({
    text = "Add Speed", 
    callback = function()
        game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer(library.flags.amSpeed)
    end
})

adminWin:AddList({
    text = "Select Egg",
    values = eggTable,
    flag = "SelectEgg"

})

adminWin:AddButton({
    text = "Give Egg",
    callback = function()
        game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(library.flags.SelectEgg)
    end
})

adminWin:AddToggle({
    text = "Auto Give Egg",
    flag = "AutoEgg",
    callback = function ()
        while library.flags.AutoEgg do
            game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(library.flags.SelectEgg)
            wait()
        end
    end
})

--[[
pets:addToggle("Auto Upgrade", false, function(bool)
    upgradeToggle = bool
    while upgradeToggle do
--loop through playerpets

        playerPetsA = game:GetService("Players").LocalPlayer.Pets.Value
playerPets = game.HttpService:JSONDecode(playerPetsA)
for _,v in pairs(playerPets) do
    local A_1 = v
    local Event = game:GetService("ReplicatedStorage").Remotes.UpgradePet
Event:FireServer(A_1)
    wait(.1)
end
wait(.1)
        end
    end)
]]


farmWin:AddToggle({
    text = "Auto Rebirth",
    flag = "AutoRebirth",
    callback = function()
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        wait(1)
    end
})

farmWin:AddToggle({
    text = "Auto Orbs",
    flag = "AutoOrbs",
    callback = function()
        while library.flags.AutoOrbs do
            for i,v in pairs(game:GetService("Workspace").GameAssets.GlobalAssets.OrbSpawns:GetChildren()) do
                if v.Name == "Orb" and v.Name ~= "Part" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
                    wait()
                    if not library.flags.AutoOrbs then break end
                end
            end
            wait()
        end
    end
})


farmWin:AddToggle({
    text = "Auto Rings",
    flag = "AutoRings",
    callback = function()
        while library.flags.AutoRings do
            for i,v in pairs(game:GetService("Workspace").GameAssets.GlobalAssets.OrbSpawns:GetChildren()) do
                if v.Name == "Ring" and v.Name ~= "Part" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
                    wait()
                    if not library.flags.AutoRings then break end
                end
            end
            wait(0.1)
        end
    end
})

farmWin:AddToggle({
    text = "Auto Race",
    flag = "AutoRace",
    callback = function()
        while library.flags.AutoRace do
            game:GetService("ReplicatedStorage").Remotes.RaceTrigger:FireServer()
            wait(0.5)
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "RaceEnd" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                end
            end
            wait(0.1)
        end
    end
})


teleWin:AddList({
    text = "Teleports",
    values = table1,
    callback = function(option)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GameAssets.GlobalAssets.Teleports:FindFirstChild(option).CFrame
    end
})


teleWin:AddButton({
    text = "Race Start",
    callback = function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "RaceStart" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
    end
})

teleWin:AddButton({
    text = "Race End",
    callback = function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "RaceEnd" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
    end
})