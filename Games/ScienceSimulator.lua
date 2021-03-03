local global = getgenv() or _G

local AutoClickT
local AutoRankT
local AutoRebirthAmmount
local AutoRebithT
local AutoUpgradeRebirthOptionsT
local AutoUpgradeGemMultiplierT
local AutoUpgradeShinyChanceT
local AutoUpgradeInventoryStorageT
local AutoUpgradePetXPT

local Auto = global.Narwhal.Lib:CreateWindow("Auto")
local Teles = global.Narwhal.Lib:CreateWindow("Teleports")

Auto:AddToggle({
    text = "Auto Click",
    callback = function(state)
        AutoClickT = state
        while AutoClickT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["19d7b766-eacf-4c22-a734-8c9e317b42f5"]:FireServer()
            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Rank Up",
    callback = function(state)
        AutoRankT = state
        while AutoRankT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["ac662adf-9f5d-4b54-869d-43653ca0cfc0"]:FireServer()
            wait(1)
        end
    end
})

local AutoRebirths = {
    "1",
    "5",
    "25",
    "50",
    "100",
    "250",
    "500",
    "3k",
    "5k",
    "10k",
    "20k",
    "40k",
    "80k",
    "160k",
    "200k",
    "400k",
    "2M",
    "4M",
    "15M",
    "75M"
}

Auto:AddList({
    text = "Rebirth Ammount",
    values = AutoRebirths,
    callback = function(option)
        AutoRebirthAmmount = option
    end
})

Auto:AddToggle({
    text = "Auto Rebirth",
    callback = function(state)
        local function getNum(amt)
            for i, v in pairs(AutoRebirths) do
                if v == amt then
                    return i -1
                end
            end
            return 0
        end
        AutoRebithT = state
        while AutoRebithT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["585382b7-4c48-4d65-a921-89c2849483f9"]:FireServer(getNum(AutoRebirthAmmount))
            wait(1)
        end
    end
})

local Upgrades = Auto:AddFolder("Upgrades")

Upgrades:AddToggle({
    text = "Rebirth Options",
    callback = function(state)
        AutoUpgradeRebirthOptionsT = state
        while AutoUpgradeRebirthOptionsT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["040287a9-e38e-46c0-b4d2-f9e5348e845c"]:FireServer("Rebirth Unlocks")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Gem Multiplier",
    callback = function(state)
        AutoUpgradeGemMultiplierT = state
        while AutoUpgradeGemMultiplierT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["040287a9-e38e-46c0-b4d2-f9e5348e845c"]:FireServer("Gem Multiplier")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Shiny Chance",
    callback = function(state)
        AutoUpgradeShinyChanceT = state
        while AutoUpgradeShinyChanceT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["040287a9-e38e-46c0-b4d2-f9e5348e845c"]:FireServer("Shiny Chance")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Inventory Storage",
    callback = function(state)
        AutoUpgradeInventoryStorageT = state
        while AutoUpgradeInventoryStorageT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["040287a9-e38e-46c0-b4d2-f9e5348e845c"]:FireServer("Inventory Upgrades")
            wait(1)
        end
    end
})

Upgrades:AddToggle({
    text = "Pet XP",
    callback = function(state)
        AutoUpgradePetXPT = state
        while AutoUpgradePetXPT do
            game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged["040287a9-e38e-46c0-b4d2-f9e5348e845c"]:FireServer("Pet Experience")
            wait(1)
        end
    end
})

local Teleports = {
    {
        Name = "Spawn",
        Pos = CFrame.new(602.867981, -164.44278, 391.866913)
    },
    {
        Name = "Faded Mountains",
        Pos = CFrame.new(43525.3594, 130.888931, -48822.6484)
    },
    {
        Name = "Winter Tundra",
        Pos = CFrame.new(-2425.89624, 130.119385, 11292.7402)
    },
    {
        Name = "Candy Land",
        Pos = CFrame.new(20324.4395, 139.204559, -3707.48438)
    },
    {
        Name = "Tropical Lobby",
        Pos = CFrame.new(-3866.85889, 209.808823, 1510.25818)
    },
    {
        Name = "Toy Land",
        Pos = CFrame.new(-1437.25037, 157.568604, 647.434448)
    },
    {
        Name = "Desert",
        Pos = CFrame.new(-457.383972, 40.4149208, 3145.63184)
    },
    {
        Name = "Twilight Space",
        Pos = CFrame.new(3533.0376, 184.047501, 840.135071)
    }
}

for _, v in pairs(Teleports) do
    Teles:AddButton({
        text = v.Name,
        callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Pos
        end
    })
end
