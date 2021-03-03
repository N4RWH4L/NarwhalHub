--Wait until game loaded (for autoexecute)
repeat wait(1) until game:IsLoaded()

--Define Some Variables
local global = getgenv() or _G

global.Narwhal = {}

assert(global, "[Narwhwal Hub]: Your exploit doesn't support getgenv or _G")

--Import (for testing)
local cache = {}

global.Narwhal.Import = function(link)
    if cache[link] then
        return cache[link]
    end

    local url

    if getgenv and getgenv().NarwhalHubDev == "&@(4$`C*t-2ntVaQ" then
        url = readfile(("Dev/NarwhalHub/%s"):format(link))
    else
        url = game:HttpGet(("https://github.com/N4RWH4L/NarwhalHub/raw/main/%s"):format(link), true)
    end

    cache[link] = url
    return url
end

local Notify = loadstring(global.Narwhal.Import("Util/Notify.lua"))()

--Make sure it is run only once
if global.NarwhalHubLoaded then
    Notify("Narwhal Hub was already run")
    return
end

global.NarwhalHubLoaded = true	

--SaveInit
if makefolder and isfolder then
    if not isfolder("NarwhalHub") then
        makefolder("NarwhalHub")
    end
end

global.Narwhal.Location = "NarwhalHub"..((makefolder and isfolder and "/") or ("-"))

global.Narwhal.Lib = loadstring(global.Narwhal.Import("Util/UI.Lua"))()

local Games = game:GetService("HttpService"):JSONDecode(global.Narwhal.Import("Games.json"))

if Games[tostring(game.PlaceId)] then
    loadstring(global.Narwhal.Import(("Games/%s.lua"):format(Games[tostring(game.PlaceId)])))()
else
    loadstring(global.Narwhal.Import("Games/Universal.lua"))()
end

loadstring(global.Narwhal.Import("Util/Other.lua"))()

global.Narwhal.Lib:Init()