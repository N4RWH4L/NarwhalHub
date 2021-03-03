local global = getgenv() or _G

local SilentAimToggle = false
local KnifeSpeed = false
local InfiniteJump = false

local ESP = loadstring(global.Narwhal.Import("Util/ESP.lua"))()

ESP.isFFA = function()
    if game:GetService("ReplicatedStorage").wkspc.FFA.Value == true then
        return true
    end
    return false
end

local combat = global.Narwhal.Lib:CreateWindow("Combat")
local visuals = global.Narwhal.Lib:CreateWindow("Visuals")
local player = global.Narwhal.Lib:CreateWindow("Player")

local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local mouse = localPlayer:GetMouse()
local GuiService = game:GetService("GuiService")

local circle = Drawing.new("Circle")
circle.Transparency = 1
circle.Thickness = 2
circle.Color = Color3.fromRGB(255, 255, 255)
circle.NumSides = 12
circle.Filled = false
circle.Visible = false
circle.Radius = (100)
circle.Position = Vector2.new(mouse.X, mouse.Y + GuiService:GetGuiInset().Y)

local function CheckRay(Player, Distance, Position, Unit)
    local Pass = true;

    if Distance > 999 then
        return false;
    end

    local _Ray = Ray.new(Position, Unit * Distance);

    local List = {
        localPlayer.Character,
        currentCamera,
        mouse.TargetFilter
    };

    local Hit = workspace:FindPartOnRayWithIgnoreList(_Ray, List);

    if Hit and not Hit:IsDescendantOf(Player.Character) then
        Pass = false;
    end

    return Pass;
end

local function getClosestPlayerToCursor()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and v.TeamColor ~= localPlayer.TeamColor or game:GetService("ReplicatedStorage").wkspc.Status.LastGamemode == "Railgun Royale" then
            local pos = currentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude

            local Visible = CheckRay(v, (currentCamera.CFrame.p - v.Character.Head.Position).magnitude, currentCamera.CFrame.p, (v.Character.Head.Position - currentCamera.CFrame.p).unit);

            if circle.Radius >= magnitude and magnitude < shortestDistance and Visible then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end

    return closestPlayer or nil
end

local function getPart()
    return getClosestPlayerToCursor().Character.Head or nil
end

game:GetService("RunService"):BindToRenderStep("RefreshAim", 10, function()
    circle.Position = Vector2.new(mouse.X, mouse.Y + GuiService:GetGuiInset().Y)
    if SilentAimToggle then
        ESP.SelectedPlayer = getClosestPlayerToCursor() or nil
    end
end)

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
if setreadonly then
    setreadonly(mt, false)
else
    make_writeable(mt, true)
end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f)
    return f
end

mt.__namecall = newClose(function(...)
    local method = namecallMethod()
    local args = {
        ...
    }

    if tostring(method) == "FireServer" and tostring(args[1]) == "HitPart" and SilentAimToggle then
        local part = getPart()
        args[2] = getClosestPlayerToCursor() and part or args[2]
        args[3] = getClosestPlayerToCursor() and part.Position or args[3]

        return args[1].FireServer(unpack(args))
    end

    return oldNamecall(...)
end)

if setreadonly then
    setreadonly(mt, true)
else
    make_writeable(mt, false)
end

local chr = game:GetService'Players'.LocalPlayer.Character or game:service'Players'.LocalPlayer.CharacterAdded:wait()
if setreadonly then
    setreadonly(mt, false)
else
    make_writeable(mt, true)
end
local backup = mt.__index
mt.__index = newClose(function(z, x)
    if x == "WalkSpeed" and KnifeSpeed then
        return 25
    end
    return backup(z, x)
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.KeyDown:Connect(function(k)
    if InfiniteJump then
        if k:byte() == 32 then
            local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            Humanoid:ChangeState("Jumping")
            wait(0.1)
            Humanoid:ChangeState("Seated")
        end
    end
end)

combat:AddToggle({
    text = "Silent Aim",
    callback = function(bool)
        SilentAimToggle = bool
    end
})

combat:AddSlider({
    text = "FOV",
    min = 1,
    max = 500,
    value = 100,
    callback = function(value)
        circle.Radius = value
    end
})

local circleT = combat:AddFolder("Circle")

circleT:AddToggle({
    text = "Show Circle",
    state = true,
    callback = function(bool)
        circle.Visible = bool
    end
})

circleT:AddToggle({
    text = "Circle Filled",
    callback = function(bool)
        circle.Filled = bool
    end
})

circleT:AddColor({
    text = "Circle Color",
    color = Color3.fromRGB(255, 255, 255),
    callback = function(color)
        circle.Color = color
    end
})

circleT:AddSlider({
    text = "Circle Transparency",
    min = 0,
    max = 1,
    float = 0.01,
    value = 1,
    callback = function(val)
        circle.Transparency = val
    end
})

visuals:AddToggle({
    text = "Names",
    callback = function(bool)
        ESP:Names(bool)
    end
})

visuals:AddToggle({
    text = "Tracers",
    callback = function(bool)
        ESP:Tracers(bool)
    end
})

visuals:AddToggle({
    text = "Teamcheck",
    state = true,
    callback = function(bool)
        ESP:Teamcheck(bool)
    end
})

visuals:AddToggle({
    text = "Show Team",
    state = true,
    callback = function(bool)
        ESP:ShowTeam(bool)
    end
})

visuals:AddColor({
    text = "Team Color",
    color = Color3.fromRGB(2, 255, 239),
    callback = function(color)
        ESP:TeamColor(color)
    end
})

visuals:AddColor({
    text = "Enemy Color",
    color = Color3.fromRGB(255, 0, 0),
    callback = function(color)
        ESP:EnemyColor(color)
    end
})

player:AddToggle({
    text = "Knife Speed",
    callback = function(bool)
        KnifeSpeed = bool
    end
})

player:AddToggle({
    text = "Infinite Jump",
    callback = function(bool)
        InfiniteJump = bool
    end
})