local ScreenGui = Instance.new("ScreenGui") 
local Frame = Instance.new("Frame") 
local Name = Instance.new("TextLabel") 
local Credits = Instance.new("TextLabel") 
local e1x1x1x1Message = Instance.new("TextButton") 
local e1x1x1x1Music = Instance.new("TextButton") 
local e1x1x1x1Laugh = Instance.new("TextButton") 
local DayToNight = Instance.new("TextButton") 
local e666 = Instance.new("TextButton") 
local EpicSaxGuy = Instance.new("TextButton") 
local Disc0 = Instance.new("TextButton") 
local e2006Theme = Instance.new("TextButton") 
local ForceField = Instance.new("TextButton") 
 
--Properties: 
 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 
Frame.Parent = ScreenGui 
Frame.BackgroundColor3 = Color3.fromRGB(192, 192, 192) 
Frame.Position = UDim2.new(0.382171214, 0, 0.328530252, 0) 
Frame.Size = UDim2.new(0, 378, 0, 250) 
 
Name.Name = "Name" 
Name.Parent = Frame 
Name.BackgroundColor3 = Color3.fromRGB(1, 242, 255) 
Name.Size = UDim2.new(0, 378, 0, 25) 
Name.Font = Enum.Font.GothamBold 
Name.Text = "H00xmenu, from the Hexxteam team" 
Name.TextColor3 = Color3.fromRGB(192, 192, 192) 
Name.TextScaled = true 
Name.TextSize = 14.000 
Name.TextWrapped = true 

e1x1x1x1Message.Name = "e1x1x1x1Message" 
e1x1x1x1Message.Parent = Frame 
e1x1x1x1Message.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
e1x1x1x1Message.Position = UDim2.new(0.0714285746, 0, 0.216000006, 0) 
e1x1x1x1Message.Size = UDim2.new(0, 79, 0, 31) 
e1x1x1x1Message.Font = Enum.Font.GothamBold 
e1x1x1x1Message.Text = "kill" 
e1x1x1x1Message.TextColor3 = Color3.fromRGB(192, 192, 192) 
e1x1x1x1Message.TextScaled = true 
e1x1x1x1Message.TextSize = 14.000 
e1x1x1x1Message.TextWrapped = true 
e1x1x1x1Message.MouseButton1Down:connect(function() 
 while true do 
 msg = Instance.new ("Message") 
 msg.Parent = game.Workspace 
 msg.Text = "BABFT Privace Experience Creepypasta Is Here." 
 game.Lighting.TimeOfDay = "18:00:00" 
 wait(6) 
 msg:remove() 
 wait(3) 
 msg = Instance.new("Message") 
 msg.Parent = game.Workspace 
 msg.Text = "" 
 
 end 
end) 

ForceField.Name = "ForceField" 
ForceField.Parent = Frame 
ForceField.BackgroundColor3 = Color3.fromRGB(1, 242, 255) 
ForceField.Position = UDim2.new(0.693121672, 0, 0.648000002, 0) 
ForceField.Size = UDim2.new(0, 89, 0, 34) 
ForceField.Font = Enum.Font.GothamBold 
ForceField.Text = "FF" 
ForceField.TextColor3 = Color3.fromRGB(0, 0, 0) 
ForceField.TextScaled = true 
ForceField.TextSize = 14.000 
ForceField.TextWrapped = true 
ForceField.MouseButton1Down:connect(function() 
 -- Gui to Lua 
 -- Version: 3. 
 -- Instances: 
 
 local ForceFieldGUI = Instance.new("ScreenGui") 
 local ForceFieldGUI_2 = Instance.new("TextButton") 
 local ForceFieldOFF = Instance.new("TextButton") 
 local ForceFieldON = Instance.new("TextButton") 
 
 --Properties: 
 
 ForceFieldGUI.Name = "ForceFieldGUI" 
 ForceFieldGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
 
 ForceFieldGUI_2.Name = "ForceFieldGUI" 
 ForceFieldGUI_2.Parent = ForceFieldGUI 
 ForceFieldGUI_2.BackgroundColor3 = Color3.fromRGB(1, 242, 255) 
 ForceFieldGUI_2.BackgroundTransparency = 0.300 
 ForceFieldGUI_2.BorderColor3 = Color3.fromRGB(1, 242, 255) 
 ForceFieldGUI_2.BorderSizePixel = 0 
 ForceFieldGUI_2.Position = UDim2.new(0, 0, 0, 240) 
 ForceFieldGUI_2.Size = UDim2.new(0, 100, 0, 20) 
 ForceFieldGUI_2.Text = "ForceField" 
 ForceFieldGUI_2.TextColor3 = Color3.fromRGB(17, 17, 17) 
 ForceFieldGUI_2.TextTransparency = 0.300 
 
 ForceFieldOFF.Name = "ForceFieldOFF" 
 ForceFieldOFF.Parent = ForceFieldGUI 
 ForceFieldOFF.BackgroundColor3 = Color3.fromRGB(1, 242, 255) 
 ForceFieldOFF.BackgroundTransparency = 0.300 
 ForceFieldOFF.BorderColor3 = Color3.fromRGB(1, 242, 255) 
 ForceFieldOFF.BorderSizePixel = 0 
 ForceFieldOFF.Position = UDim2.new(0, 0, 0, 280) 
 ForceFieldOFF.Size = UDim2.new(0, 100, 0, 20) 
 ForceFieldOFF.Visible = false 
 ForceFieldOFF.Text = "Off" 
 ForceFieldOFF.TextColor3 = Color3.fromRGB(17, 17, 17) 
 
 ForceFieldON.Name = "ForceFieldON" 
 ForceFieldON.Parent = ForceFieldGUI 
 ForceFieldON.BackgroundColor3 = Color3.fromRGB(1, 242, 255) 
 ForceFieldON.BackgroundTransparency = 0.300 
 ForceFieldON.BorderColor3 = Color3.fromRGB(245, 244, 247) 
 ForceFieldON.BorderSizePixel = 0 
 ForceFieldON.Position = UDim2.new(0, 0, 0, 260) 
 ForceFieldON.Size = UDim2.new(0, 100, 0, 20) 
 ForceFieldON.Visible = false 
 ForceFieldON.Text = "On" 
 ForceFieldON.TextColor3 = Color3.fromRGB(17, 17, 17) 
 
 -- Scripts: 
 
 local function DVAWVL_true_script() -- ForceFieldGUI_2.Script  
 local script = Instance.new('Script', ForceFieldGUI_2) 
 
 function onClicked(GUI) 
 h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid") 
 if (h ~= nil) then 
 script.Parent.Parent.ForceFieldOFF.Visible = true 
 script.Parent.Parent.ForceFieldON.Visible = true 
 else return end 
 end 
 script.Parent.MouseButton1Click:connect(onClicked) 
 end 
 coroutine.wrap(DVAWVL_true_script)() 
 local function HYECSMJ_true_script() -- ForceFieldOFF.Script  
 local script = Instance.new('Script', ForceFieldOFF) 
 
 function onClicked(GUI) 
 f = script.Parent.Parent.Parent.Parent.Character:findFirstChild("ForceField") 
 if (f ~= nil) then 
 f:remove() 
 else return end 
 end 
 script.Parent.MouseButton1Click:connect(onClicked) 
	end
 coroutine.wrap(HYECSMJ_true_script)() 
 local function LOYRXPU_true_script() -- ForceFieldOFF.Script  
 local script = Instance.new('Script', ForceFieldOFF) 
 
 function onClicked(GUI) 
 h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid") 
 if (h ~= nil) then 
 script.Parent.Parent.ForceFieldOFF.Visible = false 
 script.Parent.Parent.ForceFieldON.Visible = false 
 else return end 
 end 
 script.Parent.MouseButton1Click:connect(onClicked) 
	end
 coroutine.wrap(LOYRXPU_true_script)() 
 local function PFEVNBW_true_script() -- ForceFieldON.Script  
 local script = Instance.new('Script', ForceFieldON) 
 
 function onClicked(GUI) 
 h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid") 
 if (h ~= nil) then 
 FF = Instance.new("ForceField") 
 FF.Parent = script.Parent.Parent.Parent.Parent.Character 
 else return end 
 end 
 script.Parent.MouseButton1Click:connect(onClicked) 
	end
 coroutine.wrap(PFEVNBW_true_script)() 
 local function FNHQ_true_script() -- ForceFieldON.Script  
 local script = Instance.new('Script', ForceFieldON) 
 
 function onClicked(GUI) 
 h = script.Parent.Parent.Parent.Parent.Character:findFirstChild("Humanoid") 
 if (h ~= nil) then 
 script.Parent.Parent.ForceFieldOFF.Visible = false 
 script.Parent.Parent.ForceFieldON.Visible = false 
 else return end 
 end 
 script.Parent.MouseButton1Click:connect(onClicked) 
	end
 coroutine.wrap(FNHQ_true_script)() 
end) 
