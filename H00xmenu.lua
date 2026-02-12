local H00xmenuScript = Instance.new("ScreenGui")
local Gradient = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")



FlyScript.Name = "FlyScript"
FlyScript.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FlyScript.ResetOnSpawn = false

Gradient.Name = "Gradient"
Gradient.Parent = FlyScript
Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gradient.BorderColor3 = Color3.fromRGB(27, 42, 53)
Gradient.BorderSizePixel = 0
Gradient.Position = UDim2.new(0.0199062824, 0, 0.781767964, 0)
Gradient.Size = UDim2.new(0, 231, 0, 81)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(57, 104, 252)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(51, 68, 175))}
UIGradient.Parent = Gradient

UICorner.CornerRadius = UDim.new(0.0399999991, 0)
UICorner.Parent = Gradient
