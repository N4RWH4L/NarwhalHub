local global = getgenv() or _G

local hash = loadstring(global.Narwhal.Import("Util/Hash.lua"))()

local Name = "UIConfig"
local DefaultSettings = {
    ToggleBind = "RightShift",
    AntiAFK = true
}
local Settings

Name = hash(Name)

if not pcall(function() readfile(global.Narwhal.Location..Name..".json") end) then writefile(global.Narwhal.Location..Name..".json", game:service'HttpService':JSONEncode(DefaultSettings)) end

Settings = game:GetService('HttpService'):JSONDecode(readfile(global.Narwhal.Location..Name..".json"))

local function Save()
    writefile(global.Narwhal.Location..Name..".json",game:GetService'HttpService':JSONEncode(Settings))
end

local Other = global.Narwhal.Lib:CreateWindow("Other")

local Options = Other:AddFolder("Options")
local Credits = Other:AddFolder("Credits")

Options:AddToggle({
    text = "Anti AFK",
    state = Settings.AntiAFK,
    callback = function(state)
        Settings.AntiAFK = state
        Save()
    end
}) do
    local VirtualUser=game:GetService'VirtualUser'
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        if Settings.AntiAFK then
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())					
        end
    end)
end

Options:AddBind({
    text = "Toggle UI",
    key = Settings.ToggleBind,
    keycallback = function(key)
        Settings.ToggleBind = key
        Save()
    end,
    callback = function()
        global.Narwhal.Lib:Close()
    end
})

Options:AddButton({
    text = "Destroy GUI",
    callback = function()
        for _, v in pairs(game.CoreGui:GetChildren()) do
            if v:FindFirstChild("Hello, how are you today?") then
                v:Destroy()
            end 
        end
        global.NarwhalHubLoaded = nil
    end
})

Credits:AddLabel({
    text = "Scripting:"
})
Credits:AddLabel({
    text = "Narwhal#0187"
})
Credits:AddLabel({
    text = "ParadoxDownwards#7559"
})
Credits:AddLabel({
    text = "green726#2655"
})
Credits:AddLabel({
    text = "Devonte#1873"
})
Credits:AddLabel({
    text = "UI:"
})
Credits:AddLabel({
    text = "Jan"
})