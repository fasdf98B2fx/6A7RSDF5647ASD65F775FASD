if game:GetService'CoreGui':FindFirstChild'RawrHub' then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rawr Hub";
        Text = "its Already Running."; 
        Duration = 5;
        Button1 = "Oh, Okay!";
    })
else
local obj = game.workspace
function XrayOn(obj)
	for _,v in pairs(obj:GetChildren()) do 
		if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0.92
		end
	XrayOn(v) 
	end
end 

function XrayOff(obj)
	for _,v in pairs(obj:GetChildren()) do 
		if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0
		end
	XrayOff(v) 
	end
end 

_G.Theme = {
    ['AccentColor'] = Color3.fromRGB(255, 107, 211),
    ['ImgColor'] = Color3.fromRGB(26, 26, 26),
    ['OtherColor'] = Color3.fromRGB(22, 22, 22),
    ['toggleoff'] = Color3.fromRGB(255, 60, 60),
    ['toggleon'] = Color3.fromRGB(98, 255, 161)
}
if _G.Theme == nil then
    _G.Theme = {
        ['AccentColor'] = Color3.fromRGB(98, 255, 161),
        ['ImgColor'] = Color3.fromRGB(26, 26, 26),
        ['OtherColor'] = Color3.fromRGB(22, 22, 22),
        ['toggleoff'] = Color3.fromRGB(255, 60, 60),
        ['toggleon'] = Color3.fromRGB(98, 255, 161)
    }
end
local library = {}
function library:Create(Text)
    local ScreenGui = Instance.new('ScreenGui')
    local HomeFrame = Instance.new("ImageLabel")
    local TopDesign = Instance.new("ImageLabel")
    local TopDesign_2 = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")
    local TabContainer = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    ScreenGui.Name = 'RawrHub'
    ScreenGui.Parent = game.CoreGui

    HomeFrame.Name = "HomeFrame"
    HomeFrame.Parent = ScreenGui
    HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HomeFrame.BackgroundTransparency = 1.000
    HomeFrame.Position = UDim2.new(0.0438378826, 0, 0.152298853, 0)
    HomeFrame.Size = UDim2.new(0, 412, 0, 260)
    HomeFrame.Image = "rbxassetid://3570695787"
    HomeFrame.ImageColor3 = _G.Theme['OtherColor']
    HomeFrame.ScaleType = Enum.ScaleType.Slice
    HomeFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    HomeFrame.SliceScale = 0.05

    TopDesign.Name = "TopDesign"
    TopDesign.Parent = HomeFrame
    TopDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign.BackgroundTransparency = 1.000
    TopDesign.Size = UDim2.new(0, 412, 0, 44)
    TopDesign.Image = "rbxassetid://3570695787"
    TopDesign.ImageColor3 = _G.Theme['ImgColor']
    TopDesign.ScaleType = Enum.ScaleType.Slice
    TopDesign.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign.SliceScale = 0.05

    TopDesign_2.Name = "TopDesign"
    TopDesign_2.Parent = HomeFrame
    TopDesign_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign_2.BackgroundTransparency = 1.000
    TopDesign_2.Size = UDim2.new(0, 412, 0, 5)
    TopDesign_2.Image = "rbxassetid://3570695787"
    TopDesign_2.ImageColor3 = _G.Theme['AccentColor']
    TopDesign_2.ScaleType = Enum.ScaleType.Slice
    TopDesign_2.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign_2.SliceScale = 0.05

    TextLabel.Parent = HomeFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, 5)
    TextLabel.Size = UDim2.new(0, 120, 0, 40)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = Text
    TextLabel.TextColor3 = _G.Theme['AccentColor']
    TextLabel.TextSize = 18.000

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = HomeFrame
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderSizePixel = 0
    TabContainer.ClipsDescendants = true
    TabContainer.Position = UDim2.new(0.29126215, 0, 0.0219298247, 0)
    TabContainer.Size = UDim2.new(0, 292, 0, 35)

    UIListLayout.Parent = TabContainer
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Container.Name = "Container"
    Container.Parent = HomeFrame
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.173076928, 0)
    Container.Size = UDim2.new(0, 412, 0, 215)

    local function TQVF_fake_script() -- HomeFrame.LocalScript 
        local script = Instance.new('LocalScript', HomeFrame)
        local UILIB = {}
        UILIB = script.Parent
        local UserInputService = game:GetService("UserInputService")
        local dragging
        local dragInput
        local dragStart
        local startPos
        local function update(input)
            local delta = input.Position - dragStart
            UILIB:TweenPosition(UDim2.new(startPos.X.Scale,
                                          startPos.X.Offset + delta.X,
                                          startPos.Y.Scale,
                                          startPos.Y.Offset + delta.Y),
                                "Out", "Linear", 0.1, true)
        end
        UILIB.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = UILIB.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
            end
        end)
        UILIB.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end)
        end
    coroutine.wrap(TQVF_fake_script)()

    local tabshit = {}
    function tabshit:CreateTab(Text)
        local Frame = Instance.new("Frame")
        local TextButton = Instance.new("TextButton")
        local SecContainer = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        Frame.Parent = TabContainer
        Frame.BackgroundColor3 = _G.Theme['ImgColor']
        Frame.BorderSizePixel = 0
        Frame.ClipsDescendants = true
        Frame.Position = UDim2.new(0, 175, 0, 110)
        Frame.Size = UDim2.new(0, 103, 0, 40)

        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(56, 56, 56)
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0, 103, 0, 40)
        TextButton.AutoButtonColor = false
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = Text
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 15.000
        TextButton.MouseButton1Down:connect(
            function()
                for i, v in pairs(Container:GetChildren()) do
                    if v:IsA('Frame') then
                        v.Visible = false
                        if v.Name == Text then
                            v.Visible = true
                        end
                    elseif v:IsA('ImageLabel') then
                        v.Visible = false
                    end
                end
            end)

        SecContainer.Name = Text
        SecContainer.Parent = Container
        SecContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SecContainer.BackgroundTransparency = 1.000
        SecContainer.BorderSizePixel = 0
        SecContainer.Position = UDim2.new(0, 5, 0, 7)
        SecContainer.Size = UDim2.new(0, 116, 0, 201)

        UIListLayout_2.Parent = SecContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        local function JEOZBI_fake_script() -- TabContainer.LocalScript 
            local script = Instance.new('LocalScript', TabContainer)
    
            local parent = script.Parent
            local value = 0
            for _, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then value = value + 1 end
            end
            wait(.25)
            local storedshit = value
            value = value * 292 / value
            storedshit = value / storedshit
            for i, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then
                    v.Size = UDim2.new(0, storedshit, 0, 40)
                    v.TextButton.Size = UDim2.new(0, storedshit, 0, 40)
                end
            end
        end
        coroutine.wrap(JEOZBI_fake_script)()

        local section = {}

        function section:CreateSection(text)

            local Frame_3 = Instance.new("ImageLabel")
            local TextButton_3 = Instance.new("TextButton")
            local ShitContainer = Instance.new("ImageLabel")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout_3 = Instance.new("UIListLayout")

            Frame_3.Name = text
            Frame_3.Parent = SecContainer
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_3.BackgroundTransparency = 1.000
            Frame_3.Size = UDim2.new(0, 116, 0, 32)
            Frame_3.Image = "rbxassetid://3570695787"
            Frame_3.ImageColor3 = _G.Theme['ImgColor']
            Frame_3.ScaleType = Enum.ScaleType.Slice
            Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_3.SliceScale = 0.05

            TextButton_3.Parent = Frame_3
            TextButton_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            TextButton_3.BackgroundTransparency = 1.000
            TextButton_3.BorderColor3 = Color3.fromRGB(56, 56, 56)
            TextButton_3.BorderSizePixel = 0
            TextButton_3.Size = UDim2.new(0, 116, 0, 32)
            TextButton_3.AutoButtonColor = false
            TextButton_3.Font = Enum.Font.SourceSansBold
            TextButton_3.Text = text
            TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_3.TextSize = 15.000
            TextButton_3.MouseButton1Down:connect(
                function()
                    for i, v in pairs(Container:GetChildren()) do
                        if v:IsA('ImageLabel') then
                            v.Visible = false
                            if v.Name == text then
                                v.Visible = true
                            end
                        end
                    end
                end)

            ShitContainer.Name = text
            ShitContainer.Parent = Container
            ShitContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ShitContainer.BackgroundTransparency = 1.000
            ShitContainer.Position = UDim2.new(0, 125, 0, 7)
            ShitContainer.Size = UDim2.new(0, 282, 0, 201)
            ShitContainer.Image = "rbxassetid://3570695787"
            ShitContainer.ImageColor3 = _G.Theme['ImgColor']
            ShitContainer.ScaleType = Enum.ScaleType.Slice
            ShitContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            ShitContainer.SliceScale = 0.05

            ScrollingFrame.Parent = ShitContainer
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position =
                UDim2.new(0.0106382975, 0, 0.0298507456, 0)
            ScrollingFrame.Size = UDim2.new(0, 275, 0, 195)
            ScrollingFrame.ScrollBarThickness = 0

            UIListLayout_3.Parent = ScrollingFrame
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 4)

            local function aidsppshit() -- TextButton_5.LocalScript 
                local script = Instance.new('LocalScript', ScrollingFrame)

                local aids = script.Parent
                wait(1.5)
                aids.CanvasSize = UDim2.new(0, 0, 0, aids.UIListLayout.AbsoluteContentSize.Y)
            end
            coroutine.wrap(aidsppshit)()

            local Toolshit = {}

            function Toolshit:CreateButton(text, callback)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")
                local callback = callback or function() end

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = _G.Theme['OtherColor']
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
                TextButton_4.MouseButton1Down:connect(
                    function() pcall(callback) end)
            end

            function Toolshit:CreateLabel(text)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = _G.Theme['OtherColor']
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
            end

            function Toolshit:CreateToggle(title, description, callback)
                local callback = callback or function() end
                local actions = {}
                local enabled = false
                local Frame_7 = Instance.new("ImageLabel")
                local Frame_8 = Instance.new("ImageLabel")
                local TextButton_7 = Instance.new("TextButton")
                local TextLabel_3 = Instance.new("TextLabel")

                Frame_7.Name = "Frame"
                Frame_7.Parent = ScrollingFrame
                Frame_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_7.BackgroundTransparency = 1.000
                Frame_7.ClipsDescendants = true
                Frame_7.Position = UDim2.new(0, 0, 0.369230777, 0)
                Frame_7.Size = UDim2.new(0, 275, 0, 50)
                Frame_7.Image = "rbxassetid://3570695787"
                Frame_7.ImageColor3 = _G.Theme['OtherColor']
                Frame_7.ScaleType = Enum.ScaleType.Slice
                Frame_7.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_7.SliceScale = 0.05

                Frame_8.Name = "Frame"
                Frame_8.Parent = Frame_7
                Frame_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_8.BackgroundTransparency = 1.000
                Frame_8.ClipsDescendants = true
                Frame_8.Position = UDim2.new(0, 249, 0, 6)
                Frame_8.Size = UDim2.new(0, 20, 0, 20)
                Frame_8.Image = "rbxassetid://3570695787"
                Frame_8.ImageColor3 = Color3.fromRGB(255, 60, 60)
                Frame_8.ScaleType = Enum.ScaleType.Slice
                Frame_8.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_8.SliceScale = 0.05

                TextButton_7.Parent = Frame_7
                TextButton_7.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_7.BackgroundTransparency = 1.000
                TextButton_7.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_7.BorderSizePixel = 0
                TextButton_7.Size = UDim2.new(0, 275, 0, 32)
                TextButton_7.AutoButtonColor = false
                TextButton_7.Font = Enum.Font.SourceSansBold
                TextButton_7.Text = title
                TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_7.TextSize = 15.000

                TextLabel_3.Parent = Frame_7
                TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.BackgroundTransparency = 1.000
                TextLabel_3.Position = UDim2.new(0, 9, 0, 28)
                TextLabel_3.Size = UDim2.new(0, 266, 0, 22)
                TextLabel_3.Font = Enum.Font.SourceSansBold
                TextLabel_3.Text = description
                TextLabel_3.TextColor3 = Color3.fromRGB(111, 111, 111)
                TextLabel_3.TextSize = 14.000
                TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

                function fire()
                    enabled = not enabled
                    Frame_8.ImageColor3 = enabled and _G.Theme['toggleon'] or _G.Theme['toggleoff']
                    pcall(callback, enabled)
                end

                TextButton_7.MouseButton1Down:connect(fire)

                function actions:Set(arg)
                    Frame_8.ImageColor3 = enabled and _G.Theme['toggleon'] or _G.Theme['toggleoff']
                    pcall(callback, arg)
                end
            end

            function Toolshit:CreateTextBox(text, callback)
                local callback = callback or function() end
                local Frame_9 = Instance.new("ImageLabel")
                local TextBox = Instance.new("TextBox")

                Frame_9.Name = "Frame"
                Frame_9.Parent = ScrollingFrame
                Frame_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_9.BackgroundTransparency = 1.000
                Frame_9.ClipsDescendants = true
                Frame_9.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_9.Size = UDim2.new(0, 275, 0, 32)
                Frame_9.Image = "rbxassetid://3570695787"
                Frame_9.ImageColor3 = _G.Theme['OtherColor']
                Frame_9.ScaleType = Enum.ScaleType.Slice
                Frame_9.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_9.SliceScale = 0.05

                TextBox.Parent = Frame_9
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Size = UDim2.new(0, 275, 0, 32)
                TextBox.Font = Enum.Font.SourceSansBold
                TextBox.PlaceholderText = text
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 15.000
                TextBox.FocusLost:Connect(
                    function(ep)
                        if ep then
                            if #TextBox.Text > 0 then
                                pcall(callback, TextBox.Text)
                                TextBox.Text = ""
                            end
                        end
                    end)
            end
            function Toolshit:CreateDropdown(text)
                local Frame_5 = Instance.new("ImageLabel")
                local TextLabel_2 = Instance.new("TextLabel")
                local TextButton_5 = Instance.new("TextButton")
                local Frame_6 = Instance.new("ImageLabel")
                local UIListLayout_4 = Instance.new("UIListLayout")

                Frame_5.Name = "Frame"
                Frame_5.Parent = ScrollingFrame
                Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_5.BackgroundTransparency = 1.000
                Frame_5.ClipsDescendants = true
                Frame_5.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_5.Size = UDim2.new(0, 275, 0, 32)
                Frame_5.Image = "rbxassetid://3570695787"
                Frame_5.ImageColor3 = _G.Theme['OtherColor']
                Frame_5.ScaleType = Enum.ScaleType.Slice
                Frame_5.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_5.SliceScale = 0.05

                TextLabel_2.Parent = Frame_5
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Size = UDim2.new(0, 275, 0, 32)
                TextLabel_2.Font = Enum.Font.SourceSansBold
                TextLabel_2.Text =
                    "                                                                                   v"
                TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.TextSize = 15.000
                TextLabel_2.TextWrapped = true

                TextButton_5.Parent = Frame_5
                TextButton_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_5.BackgroundTransparency = 1.000
                TextButton_5.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_5.BorderSizePixel = 0
                TextButton_5.Size = UDim2.new(0, 275, 0, 32)
                TextButton_5.AutoButtonColor = false
                TextButton_5.Font = Enum.Font.SourceSansBold
                TextButton_5.Text = text
                TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_5.TextSize = 15.000

                Frame_6.Name = "Frame"
                Frame_6.Parent = Frame_5
                Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_6.BackgroundTransparency = 1.000
                Frame_6.ClipsDescendants = false
                Frame_6.Position = UDim2.new(0, 0, 0, 32)
                Frame_6.Size = UDim2.new(0, 275, 0, 32)
                Frame_6.Image = "rbxassetid://3570695787"
                Frame_6.ImageColor3 = _G.Theme['OtherColor']
                Frame_6.ScaleType = Enum.ScaleType.Slice
                Frame_6.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_6.SliceScale = 0.05

                UIListLayout_4.Parent = Frame_6
                UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

                function dropdownshit()
                        local script = Instance.new("LocalScript",TextButton_5)
                        local TextButton_5 = script.Parent
                        local container = script.Parent.Parent.Frame
                        local box = script.Parent.Parent.Parent
                        local value = 0
                        local toggled = false
                        wait(1)
                        for _,v in pairs(container:GetChildren()) do
                            if v:IsA('TextButton')  then
                                value = value + 1
                            end
                        end
                        wait(1)
                        value = value * 32
                        value = value + 32
                        TextButton_5.MouseButton1Down:connect(function()
                        if toggled == false then
                            toggled = true
                            Frame_5:TweenSize(
                                UDim2.new(0, 275, 0, value), 'Out',
                                'Linear', .25)
                            wait(.25)
                            box.CanvasSize =
                                UDim2.new(0, 0, 0, box.UIListLayout
                                            .AbsoluteContentSize.Y)
                        elseif toggled == true then
                            toggled = false
                            print(value..' true')
                            Frame_5:TweenSize(
                                UDim2.new(0, 275, 0, 32), 'In', 'Linear',
                                .25)
                            wait(.25)
                            box.CanvasSize =
                                UDim2.new(0, 0, 0, box.UIListLayout
                                            .AbsoluteContentSize.Y)
                        end
                    end)
                end
                coroutine.wrap(dropdownshit)()
                
                    local droptable = {}

                    function droptable:AddButton(text, callback)
                        local TextButton_6 = Instance.new("TextButton")

                        TextButton_6.Parent = Frame_6
                        TextButton_6.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        TextButton_6.BackgroundTransparency = 1.000
                        TextButton_6.BorderColor3 = Color3.fromRGB(56, 56, 56)
                        TextButton_6.BorderSizePixel = 0
                        TextButton_6.Size = UDim2.new(0, 275, 0, 32)
                        TextButton_6.AutoButtonColor = false
                        TextButton_6.Font = Enum.Font.SourceSansBold
                        TextButton_6.Text = text
                        TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextButton_6.TextSize = 15.000
                        TextButton_6.MouseButton1Down:connect(
                            function() pcall(callback) end)
                    end
                    return droptable
                end
                return Toolshit
            end
            return section
        end
        return tabshit
    end
	local mainui = library:Create('Rawr Hub')
	local testingtab = mainui:CreateTab('The Wild West')
    local testingsection2 = testingtab:CreateSection('Misc')
    testingsection2:CreateToggle('ESP','Captures every trace of every single player.',function(bool)
        if bool == true then
            local a=Instance.new("Folder",game.CoreGui)a.Name="NIGGESP"local b=Instance.new("BoxHandleAdornment")b.Name="nilBox"b.Size=Vector3.new(4,7,4)b.Color3=Color3.new(100/255,100/255,100/255)b.Transparency=0.85;b.ZIndex=0;b.AlwaysOnTop=true;b.Visible=true;local c=Instance.new("BillboardGui")c.Name="nilNameTag"c.Enabled=false;c.Size=UDim2.new(0,200,0,50)c.AlwaysOnTop=true;c.StudsOffset=Vector3.new(0,1.8,0)local d=Instance.new("TextLabel",c)d.Name="Tag"d.BackgroundTransparency=1;d.Position=UDim2.new(0,-50,0,0)d.Size=UDim2.new(0,300,0,20)d.TextSize=24;d.TextColor3=Color3.new(100/255,100/255,100/255)d.TextStrokeColor3=Color3.new(0/255,0/255,0/255)d.TextStrokeTransparency=0;d.Text="nil"d.Font=Enum.Font.Cartoon;d.TextScaled=false;local e=function(f)repeat wait()until f.Character~=nil;f.Character:WaitForChild("Humanoid")local g=a:FindFirstChild(f.Name)g:ClearAllChildren()local h=b:Clone()h.Name=f.Name.."Box"h.Adornee=f.Character;h.Parent=g;local i=c:Clone()i.Name=f.Name.."NameTag"i.Enabled=true;i.Parent=g;i.Adornee=f.Character:WaitForChild("Head",5)if not i.Adornee then return UnloadCharacter(f)end;i.Tag.Text=f.Name;h.Color3=Color3.new(f.TeamColor.r,f.TeamColor.g,f.TeamColor.b)i.Tag.TextColor3=Color3.new(f.TeamColor.r,f.TeamColor.g,f.TeamColor.b)local j;local k=function()if not pcall(function()f.Character.Humanoid.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None;local l=math.floor(f.Character.Humanoid.MaxHealth)local m=math.floor(f.Character.Humanoid.Health)i.Tag.Text=f.Name end)then j:Disconnect()end end;k()j=f.Character.Humanoid.Changed:Connect(k)end;local UnloadCharacter=function(f)local g=a:FindFirstChild(f.Name)if g and(g:FindFirstChild(f.Name.."Box")~=nil or g:FindFirstChild(f.Name.."NameTag")~=nil)then g:ClearAllChildren()end end;local n=function(f)local g=Instance.new("Folder",a)g.Name=f.Name;f.CharacterAdded:Connect(function()pcall(e,f)end)f.CharacterRemoving:Connect(function()pcall(UnloadCharacter,f)end)f.Changed:Connect(function(o)if o=="TeamColor"then UnloadCharacter(f)wait()e(f)end end)e(f)end;local p=function(f)UnloadCharacter(f)local g=a:FindFirstChild(f.Name)if g then g:Destroy()end end;for q,f in pairs(game:GetService("Players"):GetPlayers())do spawn(function()pcall(n,f)end)end;game:GetService("Players").PlayerAdded:Connect(function(f)pcall(n,f)end)game:GetService("Players").PlayerRemoving:Connect(function(f)pcall(p,f)end)game:GetService("Players").LocalPlayer.NameDisplayDistance=0
        else
            local esp = game:GetService("CoreGui").NIGGESP
            esp:Remove()
        end
    end)
    testingsection2:CreateToggle('XRay','Making World Transparency.',function(bool)
        if bool == true then
            XrayOn(obj)
        else
            XrayOff(obj)
        end
    end)
    testingsection2:CreateToggle('Spawn UI','You Can Spawn Another Base Without Cooldown / Die.',function(bool)
        if bool == true then
            game.Players.LocalPlayer.PlayerGui.SpawnUI.Enabled = true
        else
            game.Players.LocalPlayer.PlayerGui.SpawnUI.Enabled = false
        end
    end)
    testingsection2:CreateButton('Always Day',function()
        local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
s.Brightness = .3
s.Range = 100

game.Lighting.Changed:connect(function()
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.FogEnd = 9999
game.Lighting.Brightness = 2
game.Lighting.ColorCorrection.Brightness = 0.1
game.Lighting.ColorCorrection.Saturation = 0.1
game.Lighting.Bloom.Intensity = 0.1
end)
end)
    local testingsection3 = testingtab:CreateSection('Combat')
    testingsection3:CreateToggle('Huge HitBox','Huge HitBox',function(bool)
        if bool == true then
            local size = 15
            _G.hugehitboxloop = true
            while _G.hugehitboxloop do
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character then
            v.Character.LowerTorso.CanCollide = false
            v.Character.LowerTorso.Transparency = .7
            v.Character.LowerTorso.Size = Vector3.new(size,size,size)
            v.Character.HumanoidRootPart.Size = Vector3.new(size,size,size)
        end
        end
        wait()
    end
        else
            _G.hugehitboxloop = false
            local size = 1
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character then
            v.Character.LowerTorso.CanCollide = false
            v.Character.LowerTorso.Transparency = 0
            v.Character.LowerTorso.Size = Vector3.new(size,size,size)
            v.Character.HumanoidRootPart.Size = Vector3.new(size,size,size)
    end
    end
    end
    end)

    testingsection3:CreateButton('Modify Gun',function()
        for i, v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v, "BaseRecoil") then
                v.BaseRecoil = 0.01
                v.FireSpeed = 100
                v.ProjectileAccuracy = 100
                v.ProjectilePenetration = 100
              for ch,e in pairs(v) do
            end
            end
         end
    end)

    local testingsection4 = testingtab:CreateSection('Player')
    testingsection4:CreateToggle('Max Speed','Get Maximum Speed Without Stamina.',function(bool)
        if bool == true then
            local speedval = 30
_G.speedloop = true
while _G.speedloop do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedval
wait()
end
        else
_G.speedloop = false
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)
    
    testingsection4:CreateToggle('Unlock CameraMinDistance','For FPS Players.',function(bool)
        if bool == true then
            game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
        else
            game.Players.LocalPlayer.CameraMinZoomDistance = 5
        end
    end)
    local testingsection5 = testingtab:CreateSection('Credits')
    testingsection5:CreateButton('Script: 1temz#7830',function()
    end)
    testingsection5:CreateButton('Style & Library: Masterzz#0001',function()
    end)
    testingsection5:CreateButton('Ideas: bugged#0001',function()
    end)
    return library
end
