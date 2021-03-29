--Obfuscator:Aztup

local library = loadstring(Import("UI.lua"))()

local Auto = library:CreateWindow("Auto")
-- local Misc = library:CreateWindow("Misc")

local function getTycoon()
    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Tycoon"..game.Players.LocalPlayer.Name then
            return v
        end
    end
end

Auto:AddToggle({
    text = "Auto Farm",
    flag = "AutoFarm"
}) spawn(function()
    while wait(0.5) do
        if library.flags.AutoFarm then
            print("1")
            local function getNextButton()
                local button = nil
                local cost = math.huge
    
                for _, v in pairs(getTycoon():GetDescendants()) do
                    if v:IsA("Model") and v:FindFirstChild("ButtonData") and v:FindFirstChild("ButtonCost") then
                        if v:FindFirstChild("ButtonCost").Value < cost and v:FindFirstChild("ButtonCost").Value < game:GetService("Players").LocalPlayer.Stats.Cash.Value then
                            button = v
                            cost = v:FindFirstChild("ButtonCost").Value
                        end
                    end
                end
    
                return button or nil
            end

            print("2")
    
            if getNextButton() then
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("ButtonTriggeredLocally", getNextButton(), getNextButton().ButtonData)
            end

            print("3")

            if game:GetService("Players").LocalPlayer.PlayerGui.Interface.PickStore.PickStore.Background.Visible then
                print("4")
                local function getType()
                    -- TODO: Some rarity checking to always pick the best store

                    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.PickStore.PickStore.Background.RoundedBackground:GetChildren()) do
                        if v:IsA("ImageButton") then return v end
                    end

                    return nil
                end

                print("5")

                if getType() then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("AttemptPurchaseStore", getType().StoreTitle.Text)
                end

                print("6")
            else
                print("4-6 False")
            end
    
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer("RequestCollectCash")

            print("7")
        end
    end
end)

library:Init()
