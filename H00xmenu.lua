local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools")

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print("RJTheme1", "RJTheme2")
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
