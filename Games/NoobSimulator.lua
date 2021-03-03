local global = getgenv() or _G

local FarmSkillT
local FarmCoinsT
local AutoUpgradeT
local AutoRebirthT
local SkillPopups = false
local CoinPopups = false
local FreeRebirthT
local Diamonds
local RebirthGems
local Hat
local Pet
local Skill
local Coins

local Auto = global.Narwhal.Lib:CreateWindow("Auto")
local Misc = global.Narwhal.Lib:CreateWindow("Misc")

Auto:AddToggle({
    text = "Auto Skill",
    callback = function(bool)
        FarmSkillT = bool
        while FarmSkillT do
            local function GetSkillVal()
                local Area = "Starter"
                local function GetArea(p10, p11)
                    local l__Position__10 = p11.Position;
                    local l__Size__11 = p11.Size;
                    local l__Position__12 = p10.HumanoidRootPart.Position;
                    if l__Position__10.x - l__Size__11.x / 2 <= l__Position__12.x then
                        if l__Position__12.x <= l__Position__10.x + l__Size__11.x / 2 then
                            if l__Position__10.y - l__Size__11.y / 2 <= l__Position__12.y then
                                if l__Position__12.y <= l__Position__10.y + l__Size__11.y / 2 then
                                    if l__Position__10.z - l__Size__11.z / 2 <= l__Position__12.z then
                                        if l__Position__12.z <= l__Position__10.z + l__Size__11.z / 2 then
                                            return true;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                    return false;
                end;

                if GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.StarterArea) then
                    Area = "Starter";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.City) then
                    Area = "City";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.Secret) then
                    Area = "Secret";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.VIP) then
                    Area = "VIP";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.Candy) then
                    Area = "Candy";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.IceCave) then
                    Area = "IceCave";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.VolcanoIsland) then
                    Area = "VolcanoIsland";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.TheDarkAltar) then
                    Area = "DarkAlter";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.AlienPlanet) then
                    Area = "AlienPlanet";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.IceIsland) then
                    Area = "IceIsland";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.TheVoid) then
                    Area = "TheVoid";
                end;

                local function GetAreaValue(p8)
                    if p8 == "Starter" then
                        return 1;
                    end;
                    if p8 == "City" then
                        return 1.5;
                    end;
                    if p8 == "Secret" then
                        return 1.5;
                    end;
                    if p8 == "VIP" then
                        return 5;
                    end;
                    if p8 == "Candy" then
                        return 2;
                    end;
                    if p8 == "IceCave" then
                        return 2.5;
                    end;
                    if p8 == "VolcanoIsland" then
                        return 3;
                    end;
                    if p8 == "DarkAlter" then
                        return 3.5;
                    end;
                    if p8 == "AlienPlanet" then
                        return 4;
                    end;
                    if p8 == "IceIsland" then
                        return 3.5;
                    end;
                    if p8 == "TheVoid" then

                    else
                        return;
                    end;
                    return 4.5;
                end;

                local function GetClickValue(p6)
                    if p6 == 1 then
                        return 2;
                    end;
                    if p6 == 2 then
                        return 5;
                    end;
                    if p6 == 3 then
                        return 20;
                    end;
                    if p6 == 4 then
                        return 50;
                    end;
                    if p6 == 5 then
                        return 100;
                    end;
                    if p6 == 6 then
                        return 250;
                    end;
                    if p6 == 7 then
                        return 500;
                    end;
                    if p6 == 8 then
                        return 1000;
                    end;
                    if p6 == 9 then
                        return 2000;
                    end;
                    if p6 == 10 then
                        return 3500;
                    end;
                    if p6 == 11 then
                        return 5000;
                    end;
                    if p6 == 12 then
                        return 7500;
                    end;
                    if p6 == 13 then
                        return 10000;
                    end;
                    if p6 == 14 then
                        return 13250;
                    end;
                    if p6 == 15 then
                        return 17500;
                    end;
                    if p6 == 16 then
                        return 26000;
                    end;
                    if p6 == 17 then
                        return 34000;
                    end;
                    if p6 == 18 then
                        return 50000;
                    end;
                    if p6 == 19 then
                        return 750000;
                    end;
                    return nil;
                end;

                local ClickValue = GetClickValue(game.Players.LocalPlayer:FindFirstChild("Stats").SkillClick.Value) * GetAreaValue(Area)
                ClickValue = ClickValue + ClickValue * (game.Players.LocalPlayer.leaderstats["\240\159\140\128Rebirths"].Value * 0.5)

                if game.Players.LocalPlayer.DoubleClick.Value == true then
                    ClickValue = ClickValue * 2;
                end;
                if game.Players.LocalPlayer.Stats.SavedHat.Value ~= "" then
                    ClickValue = ClickValue * game.ReplicatedStorage.Items:FindFirstChild(game.Players.LocalPlayer.Stats.SavedHat.Value).SkillIncrease.Value;
                end;
                if game.Players.LocalPlayer.Stats.SavedPet.Value ~= "" then
                    ClickValue = ClickValue * game.ReplicatedStorage.PetStats:FindFirstChild(game.Players.LocalPlayer.Stats.SavedPet.Value).SkillBoost.Value;
                end;

                return math.ceil(ClickValue)
            end

            local Skill = GetSkillVal()

            if SkillPopups then
                local function u5(p12)
                    if p12 >= 1000 and p12 < 1000000 then
                        return tostring(math.floor(p12 / 100) / 10) .. "k+";
                    end;
                    if p12 >= 1000000 and p12 < 1000000000 then
                        return tostring(math.floor(p12 / 100000) / 10) .. "m+";
                    end;
                    if not (p12 >= 1000000000) or not (p12 < 1000000000000) then
                        return p12;
                    end;
                    return tostring(math.floor(p12 / 100000000) / 10) .. "b+";
                end;

                local v13 = game:GetService("Lighting").SkillAdd:Clone();
                v13.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("SkillGui");

                v13.Amount.Text = "+" .. tostring(u5(Skill)) .. " Skill";
                v13.Fade.Disabled = false;
                local v20 = math.random();
                v13.Position = UDim2.new(v20, 0, 1, 0);
                v13:TweenPosition(UDim2.new(v20, 0, 0.2, 0), "Out", "Elastic", 15, false);
                game:GetService("Players").LocalPlayer.PlayerScripts.SkillClick["Air Woosh Hard"]:Play()
            end			

            game:GetService("ReplicatedStorage").Events.AddSkillEvent:FireServer(Skill, 0)		

            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Coins",
    callback = function(bool)
        FarmCoinsT = bool
        while FarmCoinsT do
            --Overcomplicated function I found in the source code to get the Coins
            local function GetCoinsVal()
                local Area = "Starter"
                local function GetArea(p10, p11)
                    local l__Position__10 = p11.Position;
                    local l__Size__11 = p11.Size;
                    local l__Position__12 = p10.HumanoidRootPart.Position;
                    if l__Position__10.x - l__Size__11.x / 2 <= l__Position__12.x then
                        if l__Position__12.x <= l__Position__10.x + l__Size__11.x / 2 then
                            if l__Position__10.y - l__Size__11.y / 2 <= l__Position__12.y then
                                if l__Position__12.y <= l__Position__10.y + l__Size__11.y / 2 then
                                    if l__Position__10.z - l__Size__11.z / 2 <= l__Position__12.z then
                                        if l__Position__12.z <= l__Position__10.z + l__Size__11.z / 2 then
                                            return true;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                    return false;
                end;

                if GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.StarterArea) then
                    Area = "Starter";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.City) then
                    Area = "City";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.Secret) then
                    Area = "Secret";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.VIP) then
                    Area = "VIP";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.Candy) then
                    Area = "Candy";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.IceCave) then
                    Area = "IceCave";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.VolcanoIsland) then
                    Area = "VolcanoIsland";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.TheDarkAltar) then
                    Area = "DarkAlter";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.AlienPlanet) then
                    Area = "AlienPlanet";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.IceIsland) then
                    Area = "IceIsland";
                elseif GetArea(game.Players.LocalPlayer.Character, game.workspace.Areas.TheVoid) then
                    Area = "TheVoid";
                end;

                local function GetAreaValue(p8)
                    if p8 == "Starter" then
                        return 1;
                    end;
                    if p8 == "City" then
                        return 1.5;
                    end;
                    if p8 == "Secret" then
                        return 1.5;
                    end;
                    if p8 == "VIP" then
                        return 5;
                    end;
                    if p8 == "Candy" then
                        return 2;
                    end;
                    if p8 == "IceCave" then
                        return 2.5;
                    end;
                    if p8 == "VolcanoIsland" then
                        return 3;
                    end;
                    if p8 == "DarkAlter" then
                        return 3.5;
                    end;
                    if p8 == "AlienPlanet" then
                        return 4;
                    end;
                    if p8 == "IceIsland" then
                        return 3.5;
                    end;
                    if p8 == "TheVoid" then

                    else
                        return;
                    end;
                    return 4.5;
                end;

                local function GetCoinValue(p7)
                    if p7 == 1 then
                        return 1;
                    end;
                    if p7 == 2 then
                        return 2;
                    end;
                    if p7 == 3 then
                        return 4;
                    end;
                    if p7 == 4 then
                        return 6;
                    end;
                    if p7 == 5 then
                        return 12;
                    end;
                    if p7 == 6 then
                        return 18;
                    end;
                    if p7 == 7 then
                        return 25;
                    end;
                    if p7 == 8 then
                        return 50;
                    end;
                    if p7 == 9 then
                        return 60;
                    end;
                    if p7 == 10 then
                        return 70;
                    end;
                    if p7 == 11 then
                        return 100;
                    end;
                    if p7 == 12 then
                        return 125;
                    end;
                    if p7 == 13 then
                        return 155;
                    end;
                    if p7 == 14 then
                        return 200;
                    end;
                    if p7 == 15 then
                        return 250;
                    end;
                    if p7 == 16 then
                        return 450;
                    end;
                    if p7 == 17 then
                        return 600;
                    end;
                    if p7 == 17 then
                        return 900;
                    end;
                    if p7 == 18 then
                        return 1250;
                    end;
                    if p7 == 19 then
                        return 1750;
                    end;
                    return nil;
                end;


                local CoinsValue = GetCoinValue(game.Players.LocalPlayer:FindFirstChild("Stats").SkillClick.Value) * GetAreaValue(Area);

                if game.Players.LocalPlayer.DoubleCoins.Value == true then
                    CoinsValue = CoinsValue * 2;
                end;
                if game.Players.LocalPlayer.Stats.SavedHat.Value ~= "" then
                    CoinsValue = CoinsValue * game.ReplicatedStorage.Items:FindFirstChild(game.Players.LocalPlayer.Stats.SavedHat.Value).GoldIncrease.Value;
                end;
                if game.Players.LocalPlayer.Stats.SavedPet.Value ~= "" then
                    CoinsValue = CoinsValue * game.ReplicatedStorage.PetStats:FindFirstChild(game.Players.LocalPlayer.Stats.SavedPet.Value).GoldBoost.Value;
                end;

                return math.ceil(CoinsValue)
            end

            if CoinPopups then
                local v21 = Instance.new("ImageLabel", game.Players.LocalPlayer.PlayerGui.SkillGui);
                v21.Size = UDim2.new(0.05, 0, 0.075, 0);
                v21.Image = "rbxassetid://426270253";
                v21.BackgroundTransparency = 1;
                v21.Position = UDim2.new(1 + math.random(), 0, 1 + math.random(), 0);
                local v22 = game:GetService("Players").LocalPlayer.PlayerScripts.SkillClick.Fade:Clone();
                v22.Parent = v21;
                v22.Disabled = false;
                v21:TweenPosition(UDim2.new(0, 0, 0.5, 0), "Out", Enum.EasingStyle.Quart, 1, false);
                game.Debris:AddItem(v21, 5);
            end

            game:GetService("ReplicatedStorage").Events.AddSkillEvent:FireServer(0, GetCoinsVal())
            wait()
        end
    end
})

Auto:AddToggle({
    text = "Auto Upgrade",
    callback = function(bool)
        AutoUpgradeT = bool
        while AutoUpgradeT do 
            local function GetClickPrice(p3)
                if p3 == 1 then
                    return 50;
                end;
                if p3 == 2 then
                    return 250;
                end;
                if p3 == 3 then
                    return 750;
                end;
                if p3 == 4 then
                    return 2500;
                end;
                if p3 == 5 then
                    return 7500;
                end;
                if p3 == 6 then
                    return 20000;
                end;
                if p3 == 7 then
                    return 50000;
                end;
                if p3 == 8 then
                    return 250000;
                end;
                if p3 == 9 then
                    return 500000;
                end;
                if p3 == 10 then
                    return 750000;
                end;
                if p3 == 11 then
                    return 1000000;
                end;
                if p3 == 12 then
                    return 1250000;
                end;
                if p3 == 13 then
                    return 1500000;
                end;
                if p3 == 14 then
                    return 2000000;
                end;
                if p3 == 15 then
                    return 3000000;
                end;
                if p3 == 16 then
                    return 4500000;
                end;
                if p3 == 17 then
                    return 6000000;
                end;
                if p3 == 18 then
                    return 90000000;
                end;
                return nil;
            end;

            if GetClickPrice(game.Players.LocalPlayer:WaitForChild("Stats").SkillClick.Value) <= game.Players.LocalPlayer:WaitForChild("Stats").Coins.Value then
                game:GetService("ReplicatedStorage").Events.UpgradeSkillClick:FireServer(game:GetService("Players").LocalPlayer.Stats.SkillClick.Value)
            end
            wait(1)
        end
    end
})

Auto:AddToggle({
    text = "Auto Rebrth",
    callback = function(bool)
        AutoRebirthT = bool
        while AutoRebirthT do 
            if 25000000 + game.Players.LocalPlayer:WaitForChild("leaderstats")["\240\159\140\128Rebirths"].Value * 25000000 <= game.Players.LocalPlayer.Stats.Skill.Value then
                game:GetService("ReplicatedStorage").Events.RebirthEvent:FireServer()
            end
            wait(1)
        end
    end
})

Auto:AddToggle({
    text = "Auto Free Rebirth",
    callback = function(bool)
        FreeRebirthT = bool
        while FreeRebirthT do
            game:GetService("ReplicatedStorage").Events.AddSkillEvent:FireServer(25000000 + game.Players.LocalPlayer:WaitForChild("leaderstats")["\240\159\140\128Rebirths"].Value * 25000000 + 1, 0)
            game:GetService("ReplicatedStorage").Events.RebirthEvent:FireServer()
            wait()
        end
    end
})

local Teles = Misc:AddFolder("Teles")

Teles:AddButton({
    text = "Spawn",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-121.176468, -12.819829, 163.445587) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "The City",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-283.899139, -12.893322, 129.70314) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Candy Land",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(46.5922432, -188.429489, -1944.35181) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Ice Cave",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.680481, 4.15001106, -407.489563) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Volcano Island",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-493.361053, -117.56028, 831.383484) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Ice Island",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.785645, -119.781616, 826.056946) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Dark Altar",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(942.720215, -266.51474, 2912.71802) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Alien Planet",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1922.78015, -252.87854, 2120.71094) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "The Void",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2584.2749, -256.472656, 909.714844) + Vector3.new(1,0,0)
    end
})

Teles:AddButton({
    text = "Illuminati Area",
    callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(947.063599, -305.550018, -10.7261829) + Vector3.new(1,0,0)
    end
})

local Free = Misc:AddFolder("Free")

Free:AddSlider({
    text = "Diamonds",
    min = 0,
    max = 1000,
    value = 100,
    callback = function(val)
        Diamonds = val
    end
})

Free:AddButton({
    text = "Give Diamonds",
    callback = function()
        game:GetService("ReplicatedStorage").Events.ChangeDiamonds:FireServer(game:GetService("Players").LocalPlayer.Stats.Gems.Value + Diamonds)
    end
})

Free:AddSlider({
    text = "Rebirth Gems",
    min = 0,
    max = 1000,
    value = 100,
    callback = function(val)
        RebirthGems = val
    end
})

Free:AddButton({
    text = "Give Rebirth Gems",
    callback = function()
        game:GetService("ReplicatedStorage").Events.ChangeRebirthGems:FireServer(game:GetService("Players").LocalPlayer.Stats.RebirthCoins.Value + RebirthGems)
    end
})

local Hats = {}

for i, v in pairs(game:GetService("Players").LocalPlayer.Hats:GetChildren()) do
    table.insert(Hats, i, v.Name)
end

Free:AddList({
    text = "Hat",
    values = Hats,
    callback = function(option)
        Hat = option
    end
})

Free:AddButton({
    text = "Give Hat",
    callback = function()
        game:GetService("ReplicatedStorage").Events.AddHat:FireServer(Hat)
    end
})

local Pets = {}

for i, v in pairs(game:GetService("Players").LocalPlayer.Pets:GetChildren()) do
    table.insert(Pets, i, v.Name)
end

Free:AddList({
    text = "Pet",
    values = Pets,
    callback = function(option)
        Pet = option
    end
})

Free:AddButton({
    text = "Give Pet",
    callback = function()
        game:GetService("ReplicatedStorage").Events.AddPet:FireServer(Pet)
    end
})

Free:AddSlider({
    text = "Skill",
    min = 1,
    max = 1000000000000000,
    value = 100000,
    callback = function(val)
        Skill = val
    end
})

Free:AddButton({
    text = "Give Skill",
    callback = function()
        game:GetService("ReplicatedStorage").Events.AddSkillEvent:FireServer(Skill, 0)
    end
})

Free:AddSlider({
    text = "Coins",
    min = 1,
    max = 1000000000000000,
    value = 100000,
    callback = function(val)
        Coins = val
    end
})

Free:AddButton({
    text = "Give Coins",
    callback = function()
        game:GetService("ReplicatedStorage").Events.AddSkillEvent:FireServer(0, Coins)
    end
})