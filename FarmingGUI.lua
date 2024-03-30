local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Burrito's Farming GUI", "DarkTheme")
local Tab = Window:NewTab("Epic Pug Farms")
local Section = Tab:NewSection("Autofarms")
Section:NewButton("Autofarm (FISTS)", "Run after finishing Boxing Farm", function()
 _G.ToolMode = '1' -- '1' for Combat | '2' for Knife
 _G.FpsCap = 25 -- fpscap For your Account
 _G.LowGfx = true -- true for LowGfx on | false for LowGfx off
 _G.ToggleKey = 'k' -- Toggle Key to hide Gui
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/dahood/main/AutoFarm.lua',true))()
end)
Section:NewButton("Autofarm (KNIFE)", "Purchase a Knife before running", function()
 _G.ToolMode = '2' -- '1' for Combat | '2' for Knife
 _G.FpsCap = 25 -- fpscap For your Account
 _G.LowGfx = true -- true for LowGfx on | false for LowGfx off
 _G.ToggleKey = 'k' -- Toggle Key to hide Gui
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/dahood/main/AutoFarm.lua',true))()
end)
-------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Epic Pug Farms")
local g = Tab:NewSection("Iku Farms")
Section:NewButton("Knife Farm", "no knife required, will buy for you", function()
_G.AutofarmSettings = {
    ["AttackMode"] = "3",
    --// ^ 1 - Fast Punch | 2 - Super Punch | 3 - Knife (PROB THE FASTEST).
    ["Credits"] = "iku autofarm - by @trans"
}
loadstring(game:HttpGet("https://github.com/applless/RandomScripts/raw/main/IkuAutofarm"))()
 end)
Section:NewButton("Super Punch Farm", "no knife required, will buy for you", function()
_G.AutofarmSettings = {
    ["AttackMode"] = "2",
    --// ^ 1 - Fast Punch | 2 - Super Punch | 3 - Knife (PROB THE FASTEST).
    ["Credits"] = "iku autofarm - by @trans"
}
loadstring(game:HttpGet("https://github.com/applless/RandomScripts/raw/main/IkuAutofarm"))()
 end)
Section:NewButton("Fast Punch Farm", "edge maxxing", function()
_G.AutofarmSettings = {
    ["AttackMode"] = "1",
    --// ^ 1 - Fast Punch | 2 - Super Punch | 3 - Knife (PROB THE FASTEST).
    ["Credits"] = "iku autofarm - by @trans"
}
loadstring(game:HttpGet("https://github.com/applless/RandomScripts/raw/main/IkuAutofarm"))()
 end)
-------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Boxing Farm")
local a = Tab:NewSection("Boxing Farm")
a:NewButton("BOXING FARM", "use before doing fist farm", function()
 _G.FpsCap = 20
 loadstring(game:HttpGet('https://raw.githubusercontent.com/EpicPug/dahood/main/BoxFarm.lua'))()
end)
-------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Update Log")
local b = Tab:NewSection("Update Logs")
b:NewLabel("Update 2/27/24 (V1.3)")
b:NewLabel("Added: Optimization Fixes")
b:NewLabel("Added: Auto Reload Black UI")
-------------------------------------------------------------------------------------------------------------------------
local Tab = Window:NewTab("Credits")
local c = Tab:NewSection("Credits:")
c:NewLabel("Made By: LokoBurrito")
c:NewLabel("UI made by: xHeptc")
c:NewLabel("Farm Scripts made by: EpicPug")
-------------------------------------------------------------------------------------------------------------------------
local Tab= Window:NewTab("Settings")
local d = Tab:NewSection("Settings")
d:NewKeybind("GUI Keybind", "Keybind to turn the GUI on and off", Enum.KeyCode.F, function()
 Library:ToggleUI()
end)
d:NewButton("Reload GUI", "incase it crashes, use this.", function()
local function createGUI()
    -- Create GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "AutofarmGUI"
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 1, 0)
    Frame.BackgroundColor3 = Color3.new(0, 0, 0)
    Frame.BackgroundTransparency = 0
    Frame.Parent = ScreenGui

    -- Execute provided code on top of all other GUIs
    local success, error = pcall(function()
        print("Reloaded UI!")
    end)

    if not success then
        warn("Failed to execute UI Fix:", error)
    end
end

createGUI() -- Create GUI initially
end)
