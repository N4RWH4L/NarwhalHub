local global = getgenv() or _G

local _, DrawingNew = loadstring(global.Narwhal.Import("Util/New.lua"))()

local ESPSettings = {
    SelectedPlayer = nil,
    isFFA = function()
        return false
    end,
    CustomTeams = {},
}

local Settings = {
    Names = false,
    TeamColor = Color3.fromRGB(2, 255, 239),
    EnemyColor = Color3.fromRGB(255, 0, 0),
    ShowTeam = true,
    Tracers = false,
    Teamcheck = true
}

local Bottom = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2,workspace.CurrentCamera.ViewportSize.Y)

local function WTS(part)
    local screen = workspace.CurrentCamera:WorldToViewportPoint(part.Position)
    return Vector2.new(screen.x, screen.y)
end

local function ESP(part, text, plr)
    local hrp = part.Character:WaitForChild("HumanoidRootPart")
    local head = part.Character:WaitForChild("Head")
    
    local name = DrawingNew("Text", {
        Text = text,
        Position = WTS(hrp),
        Size = 20.0,
        Outline = true,
        Visible = Settings.Names,
    })

    local tracer = DrawingNew("Line", {
        Transparency = 1,
        Visible = Settings.Tracers,
        From = Bottom,
    })

    game:GetService("RunService").Stepped:Connect(function()
        pcall(function()
            local destroyed = not hrp:IsDescendantOf(workspace)
            if destroyed and name ~= nil then
                name:Remove()
                tracer:Remove()
            end
            if hrp ~= nil then
                name.Position = WTS(head)
                tracer.To = WTS(hrp)
            end
            local _, screen = workspace.CurrentCamera:WorldToViewportPoint(hrp.Position)

            if ESPSettings.SelectedPlayer and part == ESPSettings.SelectedPlayer then
                name.Color = Color3.fromRGB(255, 255, 255)
                tracer.Color = Color3.fromRGB(255, 255, 255)
            else
                if Settings.Teamcheck and not ESPSettings.isFFA() then
                    if plr.TeamColor == game.Players.LocalPlayer.TeamColor then
                        name.Color = Settings.TeamColor
                        tracer.Color = Settings.TeamColor
                    else
                        name.Color = Settings.EnemyColor
                        tracer.Color = Settings.EnemyColor
                    end
                else
                    name.Color = Settings.EnemyColor
                    tracer.Color = Settings.EnemyColor
                end
            end

            if screen then
                if plr.TeamColor == game.Players.LocalPlayer.TeamColor and Settings.Teamcheck and not ESPSettings.isFFA() and not Settings.ShowTeam then
                    name.Visible = false
                    tracer.Visible = false
                else
                    name.Visible = Settings.Names
                    tracer.Visible = Settings.Tracers
                end
            else
                tracer.Visible = false
                name.Visible = false
            end
        end)
    end)
end

for _, v in pairs(game.Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
        if v.Character:findFirstChild("HumanoidRootPart") then
            ESP(v, v.Name, v)
        end
        v.CharacterAdded:connect(function(char)
            ESP(v, v.Name, v)
        end)
    end
end

game.Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function(char)
        ESP(plr, plr.Name, plr)
    end)
end)

function ESPSettings:Names(bool)
    Settings.Names = bool or not Settings.Names
end

function ESPSettings:Tracers(bool)
    Settings.Tracers = bool or not Settings.Tracers
end

function ESPSettings:Teamcheck(bool)
    Settings.Teamcheck = bool or not Settings.Teamcheck
end

function ESPSettings:TeamColor(color)
    Settings.TeamColor = color or Color3.fromRGB(2, 255, 239)
end

function ESPSettings:EnemyColor(color)
    Settings.EnemyColor = color or Color3.fromRGB(255, 0, 0)
end

function ESPSettings:ShowTeam(bool)
    Settings.ShowTeam = bool or not Settings.ShowTeam
end

return ESPSettings
