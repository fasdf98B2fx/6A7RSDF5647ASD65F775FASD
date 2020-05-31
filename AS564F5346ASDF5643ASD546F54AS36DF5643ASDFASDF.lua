local thewildwOst = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Upper = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Box = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local EPS = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local Huge = Instance.new("ImageButton")
local TextLabel_4 = Instance.new("TextLabel")
local NoRecoil = Instance.new("ImageButton")
local TextLabel_5 = Instance.new("TextLabel")
local Lower = Instance.new("ImageLabel")
local TextLabel_6 = Instance.new("TextLabel")

thewildwOst.Name = "thewildwOst"
thewildwOst.Parent = game.CoreGui
thewildwOst.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = thewildwOst
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.794642866, 0, 0.764127791, 0)
Main.Size = UDim2.new(0.200487018, 0, 0.228501245, 0)
Main.Image = "rbxassetid://1511196841"
Main.ImageColor3 = Color3.fromRGB(28, 28, 28)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(12, 12, 13, 13)

Upper.Name = "Upper"
Upper.Parent = Main
Upper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Upper.BackgroundTransparency = 1.000
Upper.Size = UDim2.new(1.00000012, 0, 0.134030432, 0)
Upper.Image = "rbxassetid://1511196841"
Upper.ImageColor3 = Color3.fromRGB(12, 95, 217)
Upper.ScaleType = Enum.ScaleType.Slice
Upper.SliceCenter = Rect.new(12, 12, 13, 13)

TextLabel.Parent = Upper
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.899998546, 0)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "WildHaxx [Testing]"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(22, 22, 22)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

Box.Name = "Box"
Box.Parent = Main
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 1.000
Box.Position = UDim2.new(0.0162788425, 0, 0.176739424, 0)
Box.Size = UDim2.new(0.967442155, 0, 0.695554852, 0)
Box.Image = "rbxassetid://1511196841"
Box.ImageColor3 = Color3.fromRGB(18, 18, 18)
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(12, 12, 13, 13)

TextLabel_2.Parent = Box
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.00999999978, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.21622546, 0)
TextLabel_2.Font = Enum.Font.Highway
TextLabel_2.Text = "Kill Outlaws [U] - Off"
TextLabel_2.TextColor3 = Color3.fromRGB(12, 95, 217)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextWrapped = true

EPS.Name = "EPS"
EPS.Parent = Box
EPS.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
EPS.BackgroundTransparency = 1.000
EPS.Position = UDim2.new(0.0372793339, 0, 0.280906647, 0)
EPS.Size = UDim2.new(0.292736024, 0, 0.279545248, 0)
EPS.Image = "rbxassetid://1511196841"
EPS.ImageColor3 = Color3.fromRGB(12, 95, 217)
EPS.ScaleType = Enum.ScaleType.Slice
EPS.SliceCenter = Rect.new(9, 11, 91, 89)
EPS.MouseButton1Down:Connect(function()
    local gui = Instance.new("BillboardGui");
    gui.Name = "";
    gui.AlwaysOnTop = true;
    gui.LightInfluence = 0;
    gui.Size = UDim2.new(1.75, 0, 1.75, 0);
    local frame = Instance.new("Frame", gui);
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 67, 230)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(132, 61, 255))}
    UIGradient.Parent = frame
    frame.Size = UDim2.new(1, 0, 1, 0);
    frame.BorderSizePixel = 4;
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
    local gi = gui:Clone();
    local body = frame:Clone();
    body.Parent = gi;
    body.BackgroundColor3 = Color3.fromRGB(0, 170, 170);
    
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            gui:Clone().Parent = v.Character.HumanoidRootPart;
        end
    end
end)

TextLabel_3.Parent = EPS
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, -0.00834826753, 0)
TextLabel_3.Size = UDim2.new(1, 0, 0.939343572, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "ESP"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 30.000
TextLabel_3.TextStrokeTransparency = 0.500
TextLabel_3.TextWrapped = true

Huge.Name = "Huge"
Huge.Parent = Box
Huge.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Huge.BackgroundTransparency = 1.000
Huge.Position = UDim2.new(0.0369998552, 0, 0.628028035, 0)
Huge.Size = UDim2.new(0.928830624, 0, 0.279545248, 0)
Huge.Image = "rbxassetid://1511196841"
Huge.ImageColor3 = Color3.fromRGB(12, 95, 217)
Huge.ScaleType = Enum.ScaleType.Slice
Huge.SliceCenter = Rect.new(9, 11, 91, 89)
Huge.MouseButton1Down:Connect(function()
    local players = game:GetService("Players")
    local plr = players.LocalPlayer
    coroutine.resume(coroutine.create(function()
        while  wait(1) do
            coroutine.resume(coroutine.create(function()
                for _,v in pairs(players:GetPlayers()) do
                    if v.Name ~= plr.Name and v.Character then
                        v.Character.LowerTorso.CanCollide = false
                        v.Character.LowerTorso.Material = "Plastic"
                        v.Character.LowerTorso.Transparency = 0.5
                        v.Character.LowerTorso.Size = Vector3.new(15,15,15)
                        v.Character.HumanoidRootPart.Size = Vector3.new(15,15,15)
                    end
                end
            end))
        end
    end))
end)

TextLabel_4.Parent = Huge
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 0, -0.00834826753, 0)
TextLabel_4.Size = UDim2.new(1, 0, 0.939343572, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Huge Hitbox"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 30.000
TextLabel_4.TextStrokeTransparency = 0.500
TextLabel_4.TextWrapped = true

NoRecoil.Name = "NoRecoil"
NoRecoil.Parent = Box
NoRecoil.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
NoRecoil.BackgroundTransparency = 1.000
NoRecoil.Position = UDim2.new(0.367678791, 0, 0.280906647, 0)
NoRecoil.Size = UDim2.new(0.598152041, 0, 0.279545248, 0)
NoRecoil.Image = "rbxassetid://1511196841"
NoRecoil.ImageColor3 = Color3.fromRGB(12, 95, 217)
NoRecoil.ScaleType = Enum.ScaleType.Slice
NoRecoil.SliceCenter = Rect.new(9, 11, 91, 89)
NoRecoil.MouseButton1Down:Connect(function()
    for i, v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v, "BaseRecoil") then
       v.BaseRecoil = 0.01
	   v.FireSpeed = 100
	   v.ProjectileAccuracy = 100
	   v.ProjectilePenetration = 100
	   v.ProjectilePower = 10000
	   v.ProjectileDamage = 10000
	   print("Modified:" , v)
     for ch,e in pairs(v) do
		--print(ch,e)


   end
   end
end
end)

TextLabel_5.Parent = NoRecoil
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0, 0, -0.00834826753, 0)
TextLabel_5.Size = UDim2.new(1, 0, 0.939343572, 0)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Mod Gun"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 30.000
TextLabel_5.TextStrokeTransparency = 0.500
TextLabel_5.TextWrapped = true

Lower.Name = "Lower"
Lower.Parent = Main
Lower.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lower.BackgroundTransparency = 1.000
Lower.Position = UDim2.new(0, 0, 0.908602059, 0)
Lower.Size = UDim2.new(1.00000012, 0, 0.0913968608, 0)
Lower.Image = "rbxassetid://1511196841"
Lower.ImageColor3 = Color3.fromRGB(12, 95, 217)
Lower.ScaleType = Enum.ScaleType.Slice
Lower.SliceCenter = Rect.new(12, 12, 13, 13)

TextLabel_6.Parent = Lower
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Size = UDim2.new(1, 0, 0.899998665, 0)
TextLabel_6.Font = Enum.Font.Highway
TextLabel_6.Text = "Credits - RawrHub"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextStrokeColor3 = Color3.fromRGB(22, 22, 22)
TextLabel_6.TextStrokeTransparency = 0.000
TextLabel_6.TextWrapped = true

--[[
    Kill Outlaws:
]]
------------------------------------------------------------------------------
------------------------------------------------------------------------------
mouse = game.Players.LocalPlayer:GetMouse()
KillOutlaws = false
Player = game.Players.LocalPlayer
function Loop()
for i,v in pairs(game.Teams.Outlaws:GetPlayers()) do
if v.Name ~= Player.Name then
Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 4)
plr = game:service'Players'.LocalPlayer
plr.Character.Head.CanCollide = false
plr.Character.LowerTorso.CanCollide = false
plr.Character.UpperTorso.CanCollide = false
plr.Character.HumanoidRootPart.CanCollide = false
if plr.Character:FindFirstChild'Badge' then
plr.Character.Badge.CanCollide = false
end
end
end
end
mouse.KeyDown:connect(function(key)
if key == "u" then
if KillOutlaws ~= true then
KillOutlaws = true
warn("Auto Kill Started!")
TextLabel_2.Text = "Kill Outlaws [U] - On"
repeat
Loop()
wait(.0001)
until KillOutlaws ~= true
else
KillOutlaws = false
plr = game:service'Players'.LocalPlayer
plr.Character.Head.CanCollide = true
plr.Character.LowerTorso.CanCollide = true
plr.Character.UpperTorso.CanCollide = true
plr.Character.HumanoidRootPart.CanCollide = true
if plr.Character:FindFirstChild'Badge' then
plr.Character.Badge.CanCollide = true
end
TextLabel_2.Text = "Kill Outlaws [U] - Off"
warn("Auto Kill Stopped.")
end
end
end)
print("Loaded! Credits: irfan#7830")
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--[[
    On / Off Gui
]]
------------------------------------------------------------------------------
------------------------------------------------------------------------------
_G.Visible = true
plr = game.Players.LocalPlayer 
mouse = plr:GetMouse() 
mouse.KeyDown:connect(function(key) 
if key == "g" then 
        if _G.Visible then
        Main:TweenPosition(UDim2.new(0.795, 0,0.764, 0),"Out","Elastic", 1)
        wait(.5)
        _G.Visible = false
        else
        Main:TweenPosition(UDim2.new(0.795, 0,1, 0),"Out","Elastic", 1)
        wait(.5)
        _G.Visible = true
end
end
end)
------------------------------------------------------------------------------
------------------------------------------------------------------------------
