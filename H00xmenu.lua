local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools speed")

local Section = Tab:NewSection("Speed")

Section:NewSlider("Speed", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
