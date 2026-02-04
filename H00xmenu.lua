local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("H00xmenu From H00xteam", "RJTheme3")

local Tab = Window:NewTab("Tools")

local Section = Tab:NewSection("Crash Server all(Beta)")

Section:NewButton("Fly flight Bypass(Beta)", "Fly flight Bypass(Beta)", function()
    local player = game:GetService("Players").LocalPlayer
local UIS = game:GetService("UserInputService")
local protected_objs = {}
local preventObjs = {}

local oldnamecall

-- namecalls to hook
local namecallmethods = {
    "FindFirstChildOfClass",
    "FindFirstChildWhichIsA",
    "findFirstChildOfClass",
    "findFirstChildWhichIsA"
}

-- more namecalls to hook
local namecallmethods2 = {
    "children",
    "GetChildren",
    "getChildren",
    "GetDescendants",
    "getDescendants",
    "GetJoints",
    "getJoints",
    "GetConnectedParts",
    "getConnectedParts"
}

-- functions to hook
local findmethods = {
    [game.FindFirstChildOfClass] = true,
    [game.findFirstChildWhichIsA] = true
}

-- more functions to hook
local arraymethods = {
    game.GetChildren,
    game.GetDescendants,
    Instance.new("Part").GetJoints,
    Instance.new("Part").GetConnectedParts
}

local function randomStr()
    local str = ""
    for _ = 1, math.random(8,15) do
        str = str..string.char(math.random(97,122))
    end
    return str
end

-- metamethods hooking
oldnamecall = hookmetamethod(game, "__namecall", function(obj, ...)
    local method = getnamecallmethod()

    if not checkcaller() then
        if table.find(preventObjs, obj) and table.find(namecallmethods2, method) then
            local content = oldnamecall(obj, ...)

            for i,v in pairs(protected_objs) do
                local index = table.find(content, v)
                if index then
                    content[index] = nil
                end
            end

            gcinfo()

            return content
        elseif table.find(namecallmethods, getnamecallmethod()) and table.find(preventObjs, obj) and table.find(protected_objs, oldnamecall(obj, ...)) then
            -- return nil if the object returned from the function is a protected object
            return nil
        end
    end

    return oldnamecall(obj, ...)
end)

-- functions hooking
for i,v in pairs(arraymethods) do
    local old

    old = hookfunction(v, function(obj, ...)
        if not checkcaller() and table.find(preventObjs, obj) then
            -- get the table with the instances
            local content = old(obj, ...)
    
            for i,v in pairs(protected_objs) do
                local index = table.find(content, v)
                if index then
                    -- remove the protected object from the table
                    content[index] = nil
                end
            end
    
            -- update the table's index
            gcinfo()
    
            -- return the edited table
            return content
        end

        return old(obj, ...)
    end)
end

for i,v in pairs(findmethods) do
    local old

    old = hookfunction(i, function(obj, ...)
        if table.find(preventObjs, obj) and table.find(protected_objs, old(obj, ...)) then
            -- return nil if the object returned from the function is a protected object
            return nil
        end

        return old(obj, ...)
    end)
end

-- function to safely add the Fly instances 
local function safeAdd(char)
    local root = char:WaitForChild("HumanoidRootPart", 10)
    local signals = {}

    -- disabling .DescendantAdded and ChildAdded connections and adding them to the table to re-enable later
    for i,v in pairs(getconnections(game.DescendantAdded)) do
        if v.Enabled then
            v:Disable()
            signals[#signals+1] = v
        end
    end

    for i,v in pairs(getconnections(workspace.DescendantAdded)) do
        if v.Enabled then
            v:Disable()
            signals[#signals+1] = v
        end
    end 

    for i,v in pairs(getconnections(workspace.ChildAdded)) do
        if v.Enabled then
            v:Disable()
            signals[#signals+1] = v
        end
    end 

    table.insert(preventObjs, workspace)
    table.insert(preventObjs, game)
    table.insert(preventObjs, root)

    local BG = Instance.new("BodyGyro")
    local BV = Instance.new("BodyVelocity")
    local weld = Instance.new("Weld")
    local part = Instance.new("Part")

    -- inserting all the Fly instances to the protected objs table
    table.insert(protected_objs, BG)
    table.insert(protected_objs, BV)
    table.insert(protected_objs, weld)
    table.insert(protected_objs, part)

    -- random name to instances so the game can't index or :FindFirstChild them
    weld.Name = randomStr()
    part.Name = randomStr()
    BG.Name = randomStr()
    BV.Name = randomStr()

    weld.Parent = part
    weld.Part0 = root
    weld.Part1 = part

    BG.Parent = part
    BV.Parent = part

    part.Parent = workspace

    -- enabling all the connections after parenting the object
    for i,v in pairs(signals) do
        v:Enable()
    end

    return BG, BV
end



-- FLY (Infinite Yield)

local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
local SPEED = 0
local flyspd = 1
local FLYING

local function FLY()
    FLYING = true
    local T = player.Character.HumanoidRootPart
    local BG, BV = safeAdd(player.Character)

    BG.P = 9e4

    BG.maxTorque = Vector3.new(9e9,9e9,9e9)
    BG.CFrame = T.CFrame

    BV.Velocity = Vector3.new(0,0,0)
    BV.maxForce = Vector3.new(9e9,9e9,9e9)

    repeat wait()
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
            SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
            SPEED = 0
        end
        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
            BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
        elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
            BV.Velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
        else
            BV.Velocity = Vector3.new(0,0,0)
        end
        BG.CFrame = workspace.CurrentCamera.CoordinateFrame
    until not FLYING or not player.Character:FindFirstChildOfClass("Humanoid") or player.Character.Humanoid.Health <= 0
    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
    SPEED = 0
    BV.Parent:Destroy()
    protected_objs = {}
    preventObjs = {}
end

UIS.InputBegan:Connect(function(input, proccess)
    if proccess then return end
    if input.keyCode == Enum.KeyCode.W then
        CONTROL.F = flyspd
    elseif input.keyCode == Enum.KeyCode.S then
        CONTROL.B = - flyspd
    elseif input.keyCode == Enum.KeyCode.A then
        CONTROL.L = - flyspd
    elseif input.keyCode == Enum.KeyCode.D then 
        CONTROL.R = flyspd 
    end
end)

UIS.InputEnded:Connect(function(input, proccess)
    if proccess then return end
    if input.keyCode == Enum.KeyCode.W then
        CONTROL.F = 0
    elseif input.keyCode == Enum.KeyCode.S  then
        CONTROL.B = 0
    elseif input.keyCode == Enum.KeyCode.A then
        CONTROL.L = 0
    elseif input.keyCode == Enum.KeyCode.D then
        CONTROL.R = 0
    elseif input.keyCode == Enum.KeyCode.E then
        CONTROL.Q = 0
    elseif input.keyCode == Enum.KeyCode.Q then
        CONTROL.E = 0
    end
end)

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local window = lib.CreateLib("Universal Fly", "BloodTheme")
local tab = window:NewTab("Fly")
local tab2 = window:NewTab("UI Config")
local section = tab:NewSection("Fly config")
local section2 = tab2:NewSection("Config")

section:NewKeybind("Fly toggle", "Fly toggle?", Enum.KeyCode.E, function()
    if not FLYING then
        FLY()
    else
        FLYING = false
    end
end)

section:NewSlider("Fly speed", "Fly speed?", 30, 0, function(s)
    flyspd = s
end)

section2:NewKeybind("UI Toggle", "UI Toggle?", Enum.KeyCode.LeftControl, function()
    lib:ToggleUI()
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
