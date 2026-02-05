local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools")

local Section = Tab:NewSection("Teleport")

Section:NewButton("Teleport Tools", ";)", function()

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "TeleportGUI"

local bubble = Instance.new("TextButton", gui)
bubble.Size = UDim2.new(0, 60, 0, 60)
bubble.Position = UDim2.new(0.9, 0, 0.8, 0)
bubble.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bubble.Text = "_"
bubble.TextColor3 = Color3.fromRGB(0, 255, 0)
bubble.Font = Enum.Font.SourceSansBold
bubble.TextScaled = true
Instance.new("UICorner", bubble).CornerRadius = UDim.new(1, 0)

TweenService:Create(bubble, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
    BackgroundColor3 = Color3.fromRGB(0, 50, 0)
}):Play()

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 1
frame.Visible = true
Instance.new("UICorner", frame).CornerRadius = UDim.new(0.1, 0)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "TELEPORT TO PLAYER"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true

local closeBtn = Instance.new("TextButton", frame)
closeBtn.Text = "X"
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextScaled = true

local scroll = Instance.new("ScrollingFrame", frame)
scroll.Size = UDim2.new(1, -20, 1, -50)
scroll.Position = UDim2.new(0, 10, 0, 50)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 6
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ClipsDescendants = true

local layout = Instance.new("UIListLayout", scroll)
layout.Padding = UDim.new(0, 5)
layout.SortOrder = Enum.SortOrder.LayoutOrder

local playerButtons = {}

local function createPlayerButton(player)
    if player == LocalPlayer then return end
    if playerButtons[player] then return end

    local card = Instance.new("Frame")
    card.Size = UDim2.new(1, 0, 0, 40)
    card.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    card.Parent = scroll
    Instance.new("UICorner", card).CornerRadius = UDim.new(0.1, 0)

    local nameLabel = Instance.new("TextLabel", card)
    nameLabel.Size = UDim2.new(0.7, 0, 1, 0)
    nameLabel.Position = UDim2.new(0, 10, 0, 0)
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextScaled = true
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left

    local tpButton = Instance.new("TextButton", card)
    tpButton.Size = UDim2.new(0.2, 0, 0.8, 0)
    tpButton.Position = UDim2.new(0.75, 0, 0.1, 0)
    tpButton.Text = "TP"
    tpButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    tpButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    tpButton.Font = Enum.Font.SourceSansBold
    tpButton.TextScaled = true

    tpButton.MouseButton1Click:Connect(function()
        local target = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if target then
            LocalPlayer.Character:MoveTo(target.Position)
        end
    end)

    playerButtons[player] = card
    scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
end

local function removePlayerButton(player)
    if playerButtons[player] then
        playerButtons[player]:Destroy()
        playerButtons[player] = nil
        scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    createPlayerButton(player)
end

Players.PlayerAdded:Connect(createPlayerButton)
Players.PlayerRemoving:Connect(removePlayerButton)

TweenService:Create(frame, TweenInfo.new(0.5), {
    BackgroundTransparency = 0.2
}):Play()

local guiOpen = true
bubble.MouseButton1Click:Connect(function()
    if guiOpen then
        TweenService:Create(frame, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 0, 0, 0),
            BackgroundTransparency = 1
        }):Play()
        task.wait(0.5)
        frame.Visible = false
        guiOpen = false
    else
        frame.Visible = true
        TweenService:Create(frame, TweenInfo.new(0.5), {
            Size = UDim2.new(0, 300, 0, 400),
            BackgroundTransparency = 0.2
        }):Play()
        guiOpen = true
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    TweenService:Create(frame, TweenInfo.new(0.5), {
        Size = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1
    }):Play()
    task.wait(0.5)
    frame.Visible = false
    guiOpen = false
end)

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

local Tab = Window:NewTab("Tools Admin")

local Section = Tab:NewSection("Admin Panel")

Section:NewButton("Admin Panel", "Admin Panel Reviz V2", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/princemiguel1234/af2a4841416e2aa41cce2017a14f2fff/raw/471718ec692954af5028cb8f922f00c66afd954d/Reviz%20Admin%20V2"))()
end)

