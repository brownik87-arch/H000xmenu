local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools speed")

local Section = Tab:NewSection("Speed")

Section:NewToggle("Invisibility", "Enable push button, Disable respawn", function(state)
    if state then
        script.Disabled = false
        
        Local = game:GetService('Players').LocalPlayer
        Char = Local.Character
        touched, tpdback = false, false
        
        local charAddedConn = Local.CharacterAdded:Connect(function(char)
            if script.Disabled ~= true then
                wait(0.25)
                loc = Char.HumanoidRootPart.Position
                Char:MoveTo(box.Position + Vector3.new(0, 0.5, 0))
            end
        end)
        
        local inputConn = game:GetService('UserInputService').InputBegan:Connect(function(key)
            if key.KeyCode == Enum.KeyCode.Equals then
                if script.Disabled ~= true then
                    script.Disabled = true
                    print("you may re-execute")
                end
            end
        end)
        
        box = Instance.new('Part', workspace)
        box.Anchored = true
        box.CanCollide = true
        box.Size = Vector3.new(10, 1, 10)
        box.Position = Vector3.new(0, 10000, 0)
        
        local touchedConn = box.Touched:Connect(function(part)
            if (part.Parent.Name == Local.Name) then
                if touched == false then
                    touched = true
                    function apply()
                        if script.Disabled ~= true then
                            no = Char.HumanoidRootPart:Clone()
                            wait(0.25)
                            Char.HumanoidRootPart:Destroy()
                            no.Parent = Char
                            Char:MoveTo(loc)
                            touched = false
                        end
                    end
                    if Char then
                        apply()
                    end
                end
            end
        end)
        
        repeat wait() until Char
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0, 0.5, 0))
        
        connections = {charAddedConn, inputConn, touchedConn}
        
    else
        script.Disabled = true
        print("Toggle Off")
        
        -- Удаляем платформу
        if box and box.Parent then
            box:Destroy()
        end
        
        if connections then
            for _, conn in ipairs(connections) do
                conn:Disconnect()
            end
            connections = nil
        end
    end

Section:NewButton("Menu", "ButtonInfo", function()
loadstring(game:HttpGet("https://obj.wearedevs.net/2/scripts/Infinite%20Yield.lua"))()  
end)
