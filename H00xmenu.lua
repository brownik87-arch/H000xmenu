local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools speed")

local Section = Tab:NewSection("Speed")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
    else
        print("Toggle Off")
    end
end)
