
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
local SoundClick2 = Instance.new("Sound")
SoundClick2.Name = "Sound Effect"
SoundClick2.SoundId = ""
SoundClick2.Volume = 1
SoundClick2.Parent = game.Workspace
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local RobloxButton = Enum.ButtonStyle.RobloxButton
ScreenGui.Parent = game.CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules")
ScreenGui.Name = "dsfwefwfwdfsfasdadaxczcw"
ImageButton.Parent = ScreenGui
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 45, 0, 45)
ImageButton.Draggable = true
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BackgroundTransparency = 1
ImageButton.Image = "rbxassetid://104450799419041"
function LoadFunction()    
        ImageButton.MouseEnter:Connect(function()
        TweenService:Create(
            ImageButton,
            TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 80, 0, 80)}
        ):Play()
    end)
    ImageButton.MouseLeave:Connect(function()
        TweenService:Create(
            ImageButton,
            TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 50, 0, 50)}
        ):Play()
    end)
    
    local LoadFocus = false
    
    ImageButton.MouseButton1Down:Connect(function()
        if LoadFocus == false then 
            LoadFocus = false
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Rotation = 180}
            ):Play()
            SoundClick2:Play()
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {ImageTransparency = 0}
            ):Play()
            wait(.5)
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Rotation = 0}
            ):Play()
            TweenService:Create(
                ImageButton,
                TweenInfo.new(.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
                {ImageTransparency = 0}
            ):Play()
            wait(.5)	
            
        end
    end)
end
    LoadFunction()
    ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)
	function Vec(text)
		local Notification = require(game.ReplicatedStorage.Notification)
		local notification = Notification.new(text)
		notification.Duration = 4
		notification:Display()
	end
	local function tablefound(ta, object)
		for i,v in pairs(ta) do
			if v == object then
				return true
			end
		end
		return false
	end


do local GUI = game.CoreGui:FindFirstChild("SOMEXHUB");if GUI then GUI:Destroy();end;if _G.Color == nil then
    _G.Color = Color3.fromRGB(0, 247, 255)
   end 
end

do
    local DomadicHub = workspace:FindFirstChild("Sawat")
    if DomadicHub then
        DomadicHub:Destroy()
    end
end

local Dmax = Instance.new("Part",workspace)
Dmax.Size = Vector3.new(30,5,30)
Dmax.Name = "Sawat"
Dmax.Transparency = 1
Dmax.CanCollide = true
Dmax.Anchored = true

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
        local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local Update = {}

function Update:Window(text,logo,keybind)
    local uihide = false
    local abc = false
    local logo = logo or 0
    local currentpage = ""
    local keybind = keybind or Enum.KeyCode.RightControl
    local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
    
    local SOMEXHUB = Instance.new("ScreenGui")
    SOMEXHUB.Name = "SOMEXHUB"
    SOMEXHUB.Parent = game.CoreGui
    SOMEXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.Parent = SOMEXHUB
    Main.ClipsDescendants = true
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 0, 0, 0)

    
    Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Main

    local Top = Instance.new("Frame")
    Top.Name = "Top"
    Top.Parent = Main
    Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Top.Size = UDim2.new(0, 656, 0, 27)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Top
    
    local Name = Instance.new("TextLabel")
    Name.Name = "Name"
    Name.Parent = Top
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.Position = UDim2.new(0.0609756112, -25, 0, 0)
    Name.Size = UDim2.new(0, 61, 0, 27)
    Name.Font = Enum.Font.GothamSemibold
    Name.Text = text
    Name.TextColor3 = Color3.fromRGB(225, 225, 225)
    Name.TextSize = 20.000

    local Hub = Instance.new("TextLabel")
    Hub.Name = "Hub"
    Hub.Parent = Top
    Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hub.BackgroundTransparency = 1.000
    Hub.Position = UDim2.new(0, 85, 0, 0)
    Hub.Size = UDim2.new(0, 81, 0, 27)
    Hub.Font = Enum.Font.GothamSemibold
    Hub.Text = "        HUB"
    Hub.TextColor3 = Color3.fromRGB(0, 247, 255)   
    Hub.TextSize = 20.000
    Hub.TextXAlignment = Enum.TextXAlignment.Left

    local MapName = Instance.new("TextLabel")
    MapName.Name = "MapName"
    MapName.Parent = Top
    MapName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MapName.BackgroundTransparency = 1.000
    MapName.Position = UDim2.new(0, 85, 0, 0)
    MapName.Size = UDim2.new(0, 81, 0, 27)
    MapName.Font = Enum.Font.GothamSemibold
    MapName.Text = "                | Meme Sea"
    MapName.TextColor3 = Color3.fromRGB(225, 225, 225)   
    MapName.TextSize = 20.000
    MapName.TextXAlignment = Enum.TextXAlignment.Left

    local Hubb = Instance.new("TextLabel")
    Hubb.Name = "Hubb"
    Hubb.Parent = Top
    Hubb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hubb.BackgroundTransparency = 1.000
    Hubb.Position = UDim2.new(0, 480, 0, 0)
    Hubb.Size = UDim2.new(0, 81, 0, 27)
    Hubb.Font = Enum.Font.GothamSemibold
    Hubb.Text = ""
    Hubb.TextColor3 = Color3.fromRGB(255, 255, 255)
    Hubb.TextSize = 17.000
    Hubb.TextXAlignment = Enum.TextXAlignment.Left

    local Tab = Instance.new("Frame")
    Tab.Name = "Tab"
    Tab.Parent = Main
    Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Tab.BackgroundTransparency = 1.000
    Tab.Position = UDim2.new(0, 5, 0, 30)
    Tab.Size = UDim2.new(0, 150, 0, 350)

local LogoHub = Instance.new("ImageLabel")
    LogoHub.Name = "LogoHub"
    LogoHub.Parent = Top
    LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogoHub.BackgroundTransparency = 1.000
    LogoHub.Position = UDim2.new(0, 5, 0, 1)
    LogoHub.Size = UDim2.new(0, 26, 0, 26)
    LogoHub.Image = "http://www.roblox.com/asset/?id="..tostring(104450799419041)

    local ScrollTab = Instance.new("ScrollingFrame")
    ScrollTab.Name = "ScrollTab"
    ScrollTab.Parent = Tab
    ScrollTab.Active = true
    ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollTab.BackgroundTransparency = 1.000
    ScrollTab.Size = UDim2.new(0, 150, 0, 365)
    ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollTab.ScrollBarThickness = 0

    local PLL = Instance.new("UIListLayout")
    PLL.Name = "PLL"
    PLL.Parent = ScrollTab
    PLL.SortOrder = Enum.SortOrder.LayoutOrder
    PLL.Padding = UDim.new(0, 15)

    local PPD = Instance.new("UIPadding")
    PPD.Name = "PPD"
    PPD.Parent = ScrollTab
    PPD.PaddingLeft = UDim.new(0, 10)
    PPD.PaddingTop = UDim.new(0, 10)

    local Page = Instance.new("Frame")
    Page.Name = "Page"
    Page.Parent = Main
    Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
    Page.Size = UDim2.new(0, 490, 0, 365)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Page

    local MainPage = Instance.new("Frame")
    MainPage.Name = "MainPage"
    MainPage.Parent = Page
    MainPage.ClipsDescendants = true
    MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainPage.BackgroundTransparency = 1.000
    MainPage.Size = UDim2.new(0, 490, 0, 365)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = MainPage

    local PageList = Instance.new("Folder")
    PageList.Name = "PageList"
    PageList.Parent = MainPage

    local UIPageLayout = Instance.new("UIPageLayout")

    UIPageLayout.Parent = PageList
    UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
    UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
    UIPageLayout.FillDirection = Enum.FillDirection.Vertical
    UIPageLayout.Padding = UDim.new(0, 15)
    UIPageLayout.TweenTime = 0.400
    UIPageLayout.GamepadInputEnabled = false
    UIPageLayout.ScrollWheelInputEnabled = false
    UIPageLayout.TouchInputEnabled = false
    
    MakeDraggable(Top,Main)

    UserInputService.InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode[yoo] then
            if uihide == false then
                uihide = true
                Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
            else
                uihide = false
                Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
            end
        end
    end)
    
    local uitab = {}
    
    function uitab:AddTab(text,image)
        local Image = image
        
        local TabButton = Instance.new("TextButton")
        TabButton.Parent = ScrollTab
        TabButton.Name = text.."Server"
        TabButton.Text = text
        TabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        TabButton.BackgroundTransparency = 0.150
        TabButton.Size = UDim2.new(0, 130, 0, 23)
        TabButton.Font = Enum.Font.GothamSemibold
        TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
        TabButton.TextSize = 15.000
        TabButton.TextTransparency = 0.500

        local UICorner = Instance.new("UICorner")
        UICorner.Parent = TabButton

            local PageImage = Instance.new("ImageLabel")
            PageImage.Name = "PageImage"
            PageImage.Parent = TabButton
            PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageImage.BackgroundTransparency = 1.000
            PageImage.Position = UDim2.new(0, 5, 0, 5)
            PageImage.Size = UDim2.new(0, 15, 0, 15)
            PageImage.Image = "rbxassetid://"..tostring(Image)
            
        local MainFramePage = Instance.new("ScrollingFrame")
        MainFramePage.Name = text.."_Page"
        MainFramePage.Parent = PageList
        MainFramePage.Active = true
        MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainFramePage.BackgroundTransparency = 1.000
        MainFramePage.BorderSizePixel = 0
        MainFramePage.Size = UDim2.new(0, 490, 0, 365)
        MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
        MainFramePage.ScrollBarThickness = 0
        
        local UIPadding = Instance.new("UIPadding")
        local UIListLayout = Instance.new("UIListLayout")
        
        UIPadding.Parent = MainFramePage
        UIPadding.PaddingLeft = UDim.new(0, 10)
        UIPadding.PaddingTop = UDim.new(0, 10)

        UIListLayout.Padding = UDim.new(0,15)
        UIListLayout.Parent = MainFramePage
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        
        TabButton.MouseButton1Click:Connect(function()
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            for i,v in next, PageList:GetChildren() do
                currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
                if v.Name == currentpage then
                    UIPageLayout:JumpTo(v)
                end
            end
        end)

        if abc == false then
            for i,v in next, ScrollTab:GetChildren() do
                if v:IsA("TextButton") then
                    TweenService:Create(
                        v,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end
                TweenService:Create(
                    TabButton,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextTransparency = 0}
                ):Play()
            end
            UIPageLayout:JumpToIndex(1)
            abc = true
        end
        
        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
                ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
            end)
        end)
        
        local main = {}
        function main:AddButton(text,callback)
            local Button = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local TextBtn = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Black = Instance.new("Frame")
            local IMGTOG = Instance.new("ImageLabel")
            local UICorner_3 = Instance.new("UICorner")
            
            Button.Name = "Button"
            Button.Parent = MainFramePage
            Button.BackgroundColor3 = _G.Color
            Button.Size = UDim2.new(0, 470, 0, 31)
            
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = Button
            
            TextBtn.Name = "TextBtn"
            TextBtn.Parent = Button
            TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            TextBtn.Position = UDim2.new(0, 1, 0, 1)
            TextBtn.Size = UDim2.new(0, 468, 0, 29)
            TextBtn.AutoButtonColor = false
            TextBtn.Font = Enum.Font.GothamSemibold
            TextBtn.Text = text
            TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextBtn.TextSize = 15.000
            
            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextBtn
            
            Black.Name = "Black"
            Black.Parent = Button
            Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Black.BackgroundTransparency = 1.000
            Black.BorderSizePixel = 0
            Black.Position = UDim2.new(0, 1, 0, 1)
            Black.Size = UDim2.new(0, 468, 0, 29)
            
            UICorner_3.CornerRadius = UDim.new(0, 5)
            UICorner_3.Parent = Black

            TextBtn.MouseEnter:Connect(function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.7}
                ):Play()
            end)
            TextBtn.MouseLeave:Connect(function()
                TweenService:Create(
                    Black,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1}
                ):Play()
            end)
            TextBtn.MouseButton1Click:Connect(function()
                TextBtn.TextSize = 0
                TweenService:Create(
                    TextBtn,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {TextSize = 15}
                ):Play()
                callback()
            end)
        end
        function main:AddToggle(text,config,callback)
            config = config or false
            local toggled = config
            local Toggle = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Button = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Label = Instance.new("TextLabel")
            local ToggleImage = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local Circle = Instance.new("Frame")
            local IMGTOG = Instance.new("ImageLabel")
            local UICorner_4 = Instance.new("UICorner")

            Toggle.Name = "Toggle"
            Toggle.Parent = MainFramePage
            Toggle.BackgroundColor3 = _G.Color
            Toggle.Size = UDim2.new(0, 470, 0, 31)

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = Toggle

            Button.Name = "Button"
            Button.Parent = Toggle
            Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Button.Position = UDim2.new(0, 1, 0, 1)
            Button.Size = UDim2.new(0, 468, 0, 29)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            Button.TextColor3 = Color3.fromRGB(0, 0, 0)
            Button.TextSize = 11.000

            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = Button

            Label.Name = "Label"
            Label.Parent = Toggle
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Position = UDim2.new(0, 1, 0, 1)
            Label.Size = UDim2.new(0, 468, 0, 29)
            Label.Font = Enum.Font.GothamSemibold
            Label.Text = text
            Label.TextColor3 = Color3.fromRGB(225, 225, 225)
            Label.TextSize = 15.000

            ToggleImage.Name = "ToggleImage"
            ToggleImage.Parent = Toggle
            ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            ToggleImage.Position = UDim2.new(0, 415, 0, 5)
            ToggleImage.Size = UDim2.new(0, 45, 0, 20)

            UICorner_3.CornerRadius = UDim.new(0, 10)
            UICorner_3.Parent = ToggleImage

local tggc = Instance.new("TextLabel")
    tggc.Name = "tggc"
    tggc.Parent = Toggle
    tggc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tggc.BackgroundTransparency = 1.000
    tggc.Position = UDim2.new(0, 40, 0, 3)
    tggc.Size = UDim2.new(0, 81, 0, 27)
    tggc.Font = Enum.Font.GothamSemibold
    tggc.Text = ""
    tggc.TextColor3 = _G.Color
    tggc.TextSize = 26.000
    tggc.TextXAlignment = Enum.TextXAlignment.Left

local LogoToggle = Instance.new("ImageLabel")
    LogoToggle.Name = "LogoToggle"
    LogoToggle.Parent = Toggle
    LogoToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogoToggle.BackgroundTransparency = 1.000
    LogoToggle.Position = UDim2.new(0, 7, 0, 2)
    LogoToggle.Size = UDim2.new(0, 26, 0, 26)
    LogoToggle.Image = "http://www.roblox.com/asset/?id="..tostring(12523036534)
    RunService.RenderStepped:Connect(function()
			LogoToggle.Rotation = LogoToggle.Rotation + 1
			if LogoToggle.Rotation >= 360 then
				LogoToggle.Rotation = 0 
			end
		end)

            Circle.Name = "Circle"
            Circle.Parent = ToggleImage
            Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
            Circle.Position = UDim2.new(0, 2, 0, 2)
            Circle.Size = UDim2.new(0, 16, 0, 16)

            UICorner_4.CornerRadius = UDim.new(0, 10)
            UICorner_4.Parent = Circle

            Button.MouseButton1Click:Connect(function()
                if toggled == false then
                    toggled = true
                    Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = _G.Color}
                    ):Play()
                else
                    toggled = false
                    Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
                    TweenService:Create(
                        Circle,
                        TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
                    ):Play()
                end
                pcall(callback,toggled)
            end)

            if config == true then
                toggled = true
                Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
                TweenService:Create(
                    Circle,
                    TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {BackgroundColor3 = _G.Color}
                ):Play()
                pcall(callback,toggled)
            end
        end
        function main:AddDropdown(text,option,callback)
            local isdropping = false
            local Dropdown = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local DropTitle = Instance.new("TextLabel")
            local DropScroll = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
            local DropButton = Instance.new("TextButton")
            local DropImage = Instance.new("ImageLabel")
            
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = MainFramePage
            Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Dropdown.ClipsDescendants = true
            Dropdown.Size = UDim2.new(0, 470, 0, 31)
            
            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = Dropdown
            
            DropTitle.Name = "DropTitle"
            DropTitle.Parent = Dropdown
            DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropTitle.BackgroundTransparency = 1.000
            DropTitle.Size = UDim2.new(0, 470, 0, 31)
            DropTitle.Font = Enum.Font.GothamSemibold
            DropTitle.Text = text.. " : "
            DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
            DropTitle.TextSize = 15.000
            
            DropScroll.Name = "DropScroll"
            DropScroll.Parent = DropTitle
            DropScroll.Active = true
            DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropScroll.BackgroundTransparency = 1.000
            DropScroll.BorderSizePixel = 0
            DropScroll.Position = UDim2.new(0, 0, 0, 31)
            DropScroll.Size = UDim2.new(0, 470, 0, 100)
            DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropScroll.ScrollBarThickness = 3
            
            UIListLayout.Parent = DropScroll
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)
            
            UIPadding.Parent = DropScroll
            UIPadding.PaddingLeft = UDim.new(0, 5)
            UIPadding.PaddingTop = UDim.new(0, 5)
            
            DropImage.Name = "DropImage"
            DropImage.Parent = Dropdown
            DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropImage.BackgroundTransparency = 1.000
            DropImage.Position = UDim2.new(0, 435, 0, 6)
            DropImage.Rotation = 180.000
            DropImage.Size = UDim2.new(0, 20, 0, 20)
            DropImage.Image = "rbxassetid://10162644180"
            
            DropButton.Name = "DropButton"
            DropButton.Parent = Dropdown
            DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropButton.BackgroundTransparency = 1.000
            DropButton.Size = UDim2.new(0, 470, 0, 31)
            DropButton.Font = Enum.Font.SourceSans
            DropButton.Text = ""
            DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropButton.TextSize = 14.000

            for i,v in next,option do
                local Item = Instance.new("TextButton")

                Item.Name = "Item"
                Item.Parent = DropScroll
                Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Item.BackgroundTransparency = 1.000
                Item.Size = UDim2.new(0, 460, 0, 26)
                Item.Font = Enum.Font.GothamSemibold
                Item.Text = tostring(v)
                Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                Item.TextSize = 13.000
                Item.TextTransparency = 0.500

                Item.MouseEnter:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                Item.MouseLeave:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                Item.MouseButton1Click:Connect(function()
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    callback(Item.Text)
                    DropTitle.Text = text.." : "..Item.Text
                end)
            end

            DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

            DropButton.MouseButton1Click:Connect(function()
                if isdropping == false then
                    isdropping = true
                    Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                else
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                end
            end)

            local dropfunc = {}
            function dropfunc:Add(t)
                local Item = Instance.new("TextButton")
                Item.Name = "Item"
                Item.Parent = DropScroll
                Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Item.BackgroundTransparency = 1.000
                Item.Size = UDim2.new(0, 470, 0, 26)
                Item.Font = Enum.Font.GothamSemibold
                Item.Text = tostring(t)
                Item.TextColor3 = Color3.fromRGB(225, 225, 225)
                Item.TextSize = 13.000
                Item.TextTransparency = 0.500

                Item.MouseEnter:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0}
                    ):Play()
                end)

                Item.MouseLeave:Connect(function()
                    TweenService:Create(
                        Item,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {TextTransparency = 0.5}
                    ):Play()
                end)

                Item.MouseButton1Click:Connect(function()
                    isdropping = false
                    Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                    TweenService:Create(
                        DropImage,
                        TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                        {Rotation = 180}
                    ):Play()
                    callback(Item.Text)
                    DropTitle.Text = text.." : "..Item.Text
                end)
            end
            function dropfunc:Clear()
                DropTitle.Text = tostring(text).." : "
                isdropping = false
                Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
                TweenService:Create(
                    DropImage,
                    TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
                    {Rotation = 180}
                ):Play()
                for i,v in next, DropScroll:GetChildren() do
                    if v:IsA("TextButton") then
                        v:Destroy()
                    end
                end
            end
            return dropfunc
        end

        function main:AddSlider(text,min,max,set,callback)
            local Slider = Instance.new("Frame")
            local slidercorner = Instance.new("UICorner")
            local sliderr = Instance.new("Frame")
            local sliderrcorner = Instance.new("UICorner")
            local SliderLabel = Instance.new("TextLabel")
            local HAHA = Instance.new("Frame")
            local AHEHE = Instance.new("TextButton")
            local bar = Instance.new("Frame")
            local bar1 = Instance.new("Frame")
            local bar1corner = Instance.new("UICorner")
            local barcorner = Instance.new("UICorner")
            local circlebar = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local slidervalue = Instance.new("Frame")
            local valuecorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")
            local UICorner_2 = Instance.new("UICorner")

            Slider.Name = "Slider"
            Slider.Parent = MainFramePage
            Slider.BackgroundColor3 = _G.Color
            Slider.BackgroundTransparency = 0
            Slider.Size = UDim2.new(0, 470, 0, 51)

            slidercorner.CornerRadius = UDim.new(0, 5)
            slidercorner.Name = "slidercorner"
            slidercorner.Parent = Slider

            sliderr.Name = "sliderr"
            sliderr.Parent = Slider
            sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            sliderr.Position = UDim2.new(0, 1, 0, 1)
            sliderr.Size = UDim2.new(0, 468, 0, 49)

            sliderrcorner.CornerRadius = UDim.new(0, 5)
            sliderrcorner.Name = "sliderrcorner"
            sliderrcorner.Parent = sliderr

            SliderLabel.Name = "SliderLabel"
            SliderLabel.Parent = sliderr
            SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderLabel.BackgroundTransparency = 1.000
            SliderLabel.Position = UDim2.new(0, 15, 0, 0)
            SliderLabel.Size = UDim2.new(0, 180, 0, 26)
            SliderLabel.Font = Enum.Font.GothamSemibold
            SliderLabel.Text = text
            SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
            SliderLabel.TextSize = 16.000
            SliderLabel.TextTransparency = 0
            SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

            HAHA.Name = "HAHA"
            HAHA.Parent = sliderr
            HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HAHA.BackgroundTransparency = 1.000
            HAHA.Size = UDim2.new(0, 468, 0, 29)

            AHEHE.Name = "AHEHE"
            AHEHE.Parent = sliderr
            AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            AHEHE.BackgroundTransparency = 1.000
            AHEHE.Position = UDim2.new(0, 10, 0, 35)
            AHEHE.Size = UDim2.new(0, 448, 0, 5)
            AHEHE.Font = Enum.Font.SourceSans
            AHEHE.Text = ""
            AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
            AHEHE.TextSize = 14.000

            bar.Name = "bar"
            bar.Parent = AHEHE
            bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            bar.Size = UDim2.new(0, 448, 0, 5)

            bar1.Name = "bar1"
            bar1.Parent = bar
            bar1.BackgroundColor3 = _G.Color
            bar1.BackgroundTransparency = 0
            bar1.Size = UDim2.new(set/max, 0, 0, 5)

            bar1corner.CornerRadius = UDim.new(0, 5)
            bar1corner.Name = "bar1corner"
            bar1corner.Parent = bar1

            barcorner.CornerRadius = UDim.new(0, 5)
            barcorner.Name = "barcorner"
            barcorner.Parent = bar

            circlebar.Name = "circlebar"
            circlebar.Parent = bar1
            circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
            circlebar.Position = UDim2.new(1, -2, 0, -3)
            circlebar.Size = UDim2.new(0, 10, 0, 10)

            UICorner.CornerRadius = UDim.new(0, 100)
            UICorner.Parent = circlebar

            slidervalue.Name = "slidervalue"
            slidervalue.Parent = sliderr
            slidervalue.BackgroundColor3 = _G.Color
            slidervalue.BackgroundTransparency = 0
            slidervalue.Position = UDim2.new(0, 395, 0, 5)
            slidervalue.Size = UDim2.new(0, 65, 0, 18)

            valuecorner.CornerRadius = UDim.new(0, 5)
            valuecorner.Name = "valuecorner"
            valuecorner.Parent = slidervalue

            TextBox.Parent = slidervalue
            TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            TextBox.Position = UDim2.new(0, 1, 0, 1)
            TextBox.Size = UDim2.new(0, 63, 0, 16)
            TextBox.Font = Enum.Font.GothamSemibold
            TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextBox.TextSize = 9.000
            TextBox.Text = set
            TextBox.TextTransparency = 0

            UICorner_2.CornerRadius = UDim.new(0, 5)
            UICorner_2.Parent = TextBox

            local mouse = game.Players.LocalPlayer:GetMouse()
            local uis = game:GetService("UserInputService")

            if Value == nil then
                Value = set
                pcall(function()
                    callback(Value)
                end)
            end
            
            AHEHE.MouseButton1Down:Connect(function()
                Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
                pcall(function()
                    callback(Value)
                end)
                bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                moveconnection = mouse.Move:Connect(function()
                    TextBox.Text = Value
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                    pcall(function()
                        callback(Value)
                    end)
                    bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                    circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                end)
                releaseconnection = uis.InputEnded:Connect(function(Mouse)
                    if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                        Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                        pcall(function()
                            callback(Value)
                        end)
                        bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
                        circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
                        moveconnection:Disconnect()
                        releaseconnection:Disconnect()
                    end
                end)
            end)
            releaseconnection = uis.InputEnded:Connect(function(Mouse)
                if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                    Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
                    TextBox.Text = Value
                end
            end)

            TextBox.FocusLost:Connect(function()
                if tonumber(TextBox.Text) > max then
                    TextBox.Text  = max
                end
                bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
                circlebar.Position = UDim2.new(1, -2, 0, -3)
                TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
                pcall(callback, TextBox.Text)
            end)
        end

        function main:AddTextbox(text,disappear,callback)
            local Textbox = Instance.new("Frame")
            local TextboxCorner = Instance.new("UICorner")
            local Textboxx = Instance.new("Frame")
            local TextboxxCorner = Instance.new("UICorner")
            local TextboxLabel = Instance.new("TextLabel")
            local txtbtn = Instance.new("TextButton")
            local RealTextbox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")

            Textbox.Name = "Textbox"
            Textbox.Parent = MainFramePage
            Textbox.BackgroundColor3 = _G.Color
            Textbox.BackgroundTransparency = 0
            Textbox.Size = UDim2.new(0, 470, 0, 31)

            TextboxCorner.CornerRadius = UDim.new(0, 5)
            TextboxCorner.Name = "TextboxCorner"
            TextboxCorner.Parent = Textbox

            Textboxx.Name = "Textboxx"
            Textboxx.Parent = Textbox
            Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Textboxx.Position = UDim2.new(0, 1, 0, 1)
            Textboxx.Size = UDim2.new(0, 468, 0, 29)

            TextboxxCorner.CornerRadius = UDim.new(0, 5)
            TextboxxCorner.Name = "TextboxxCorner"
            TextboxxCorner.Parent = Textboxx

            TextboxLabel.Name = "TextboxLabel"
            TextboxLabel.Parent = Textbox
            TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxLabel.BackgroundTransparency = 1.000
            TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
            TextboxLabel.Text = text
            TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
            TextboxLabel.Font = Enum.Font.GothamSemibold
            TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
            TextboxLabel.TextSize = 16.000
            TextboxLabel.TextTransparency = 0
            TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

            txtbtn.Name = "txtbtn"
            txtbtn.Parent = Textbox
            txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            txtbtn.BackgroundTransparency = 1.000
            txtbtn.Position = UDim2.new(0, 1, 0, 1)
            txtbtn.Size = UDim2.new(0, 468, 0, 29)
            txtbtn.Font = Enum.Font.SourceSans
            txtbtn.Text = ""
            txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            txtbtn.TextSize = 14.000

            RealTextbox.Name = "RealTextbox"
            RealTextbox.Parent = Textbox
            RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            RealTextbox.BackgroundTransparency = 0
            RealTextbox.Position = UDim2.new(0, 360, 0, 4)
            RealTextbox.Size = UDim2.new(0, 100, 0, 24)
            RealTextbox.Font = Enum.Font.GothamSemibold
            RealTextbox.Text = ""
            RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
            RealTextbox.TextSize = 11.000
            RealTextbox.TextTransparency = 0

            RealTextbox.FocusLost:Connect(function()
                callback(RealTextbox.Text)
                if disappear then
                    RealTextbox.Text = ""
                end
            end)

            UICorner.CornerRadius = UDim.new(0, 5)
            UICorner.Parent = RealTextbox
        end
        function main:AddLabel(text)
            local Label = Instance.new("TextLabel")
            local PaddingLabel = Instance.new("UIPadding")
            local labelfunc = {}
    
            Label.Name = "Label"
            Label.Parent = MainFramePage
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.Size = UDim2.new(0, 470, 0, 20)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextColor3 = Color3.fromRGB(225, 225, 225)
            Label.TextSize = 16.000
            Label.Text = text
            Label.TextXAlignment = Enum.TextXAlignment.Left

            PaddingLabel.PaddingLeft = UDim.new(0,15)
            PaddingLabel.Parent = Label
            PaddingLabel.Name = "PaddingLabel"
    
            function labelfunc:Set(newtext)
                Label.Text = newtext
            end
            return labelfunc
        end

        function main:AddSeperator(text)
            local Seperator = Instance.new("Frame")
            local Sep1 = Instance.new("Frame")
            local Sep2 = Instance.new("TextLabel")
            local Sep3 = Instance.new("Frame")
            
            Seperator.Name = "Seperator"
            Seperator.Parent = MainFramePage
            Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Seperator.BackgroundTransparency = 1.000
            Seperator.Size = UDim2.new(0, 470, 0, 20)
            
            Sep1.Name = "Sep1"
            Sep1.Parent = Seperator
            Sep1.BackgroundColor3 = _G.Color
            Sep1.BorderSizePixel = 0
            Sep1.Position = UDim2.new(0, 0, 0, 10)
            Sep1.Size = UDim2.new(0, 80, 0, 1)
            
            Sep2.Name = "Sep2"
            Sep2.Parent = Seperator
            Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Sep2.BackgroundTransparency = 1.000
            Sep2.Position = UDim2.new(0, 185, 0, 0)
            Sep2.Size = UDim2.new(0, 100, 0, 20)
            Sep2.Font = Enum.Font.GothamSemibold
            Sep2.Text = text
            Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
            Sep2.TextSize = 14.000
            
            Sep3.Name = "Sep3"
            Sep3.Parent = Seperator
            Sep3.BackgroundColor3 = _G.Color
            Sep3.BorderSizePixel = 0
            Sep3.Position = UDim2.new(0, 390, 0, 10)
            Sep3.Size = UDim2.new(0, 80, 0, 1)
        end

        function main:AddLine()
            local Linee = Instance.new("Frame")
            local Line = Instance.new("Frame")
            
            Linee.Name = "Linee"
            Linee.Parent = MainFramePage
            Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Linee.BackgroundTransparency = 1.000
            Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
            Linee.Size = UDim2.new(0, 470, 0, 20)
            
            Line.Name = "Line"
            Line.Parent = Linee
            Line.BackgroundColor3 = _G.Color
            Line.BorderSizePixel = 0
            Line.Position = UDim2.new(0, 0, 0, 10)
            Line.Size = UDim2.new(0, 470, 0, 1)
        end
        return main
    end
    return uitab
end
    

function CheckQuest()
        local MyLevel = game:GetService("Players").LocalPlayer.PlayerData.Level.Value
        if MyLevel >= 1 and MyLevel <= 49 then
            Mob = "Floppa"
            FrameQ = CFrame.new(564.91650390625, -37.043067932128906, -556.4757690429688)
        elseif MyLevel == 50 or MyLevel <= 99 then
           Mob = "Golden Floppa"
           FrameQ = CFrame.new(562.2315673828125, -37.043067932128906, -914.1873779296875)
       elseif MyLevel == 100 or MyLevel <= 149 then--BossMob
           Mob = "Big Floppa"
           FrameQ = CFrame.new(470.8048400878906, -3.5550005435943604, -1403.531982421875)
       elseif MyLevel == 150 or MyLevel <= 199 then
           Mob = "Doge"
           FrameQ = CFrame.new(868.4557495117188, -37.043067932128906, -735.547119140625)
       elseif MyLevel == 200 or MyLevel <= 249 then
           Mob = "Cheems"
           FrameQ = CFrame.new(902.94384765625, -37.04301071166992, -1503.9013671875)
       elseif MyLevel == 250 or MyLevel <= 299 then--BossMob
           Mob = "Walter Dog"
           FrameQ = CFrame.new(10.436995506286621, -37.043067932128906, -1034.9451904296875)
       elseif MyLevel == 300 or MyLevel <= 349 then
           Mob = "Staring Fish"
           FrameQ = CFrame.new(-2942.891845703125, -55.27851104736328, -1876.39599609375)
       elseif MyLevel == 350 or MyLevel <= 399 then
           Mob = "Hamster"
           FrameQ = CFrame.new(-3143.15576171875, -55.27851104736328, -1811.48095703125)
       elseif MyLevel == 400 or MyLevel <= 449 then--BossMob
           Mob = "Snow Tree"
           FrameQ = CFrame.new(-2924.063720703125, -77.63380432128906, -2323.243896484375)
       elseif MyLevel == 450 or MyLevel <= 499 then
           Mob = "The Rock"
           FrameQ = CFrame.new(-2995.177001953125, -55.27851104736328, -1754.591064453125)
       elseif MyLevel == 500 or MyLevel <= 549 then
           Mob = "Banana Cat"
           FrameQ = CFrame.new(-3393.187744140625, -51.4274787902832, -2150.902099609375)
       elseif MyLevel == 550 or MyLevel <= 599 then
           Mob = "Sus Face"
           FrameQ = CFrame.new(-3080.643310546875, -77.63941955566406, -2312.59423828125)
       elseif MyLevel == 600 or MyLevel <= 649 then
           Mob = "Egg Dog"
           FrameQ = CFrame.new(-3063.50830078125, -91.0500259399414, 589.280517578125)
       elseif MyLevel == 650 or MyLevel <= 699 then
           Mob = "Popcat"
           FrameQ = CFrame.new(-3390.79052734375, -91.10002136230469, 445.5372619628906)
       elseif MyLevel == 700 or MyLevel <= 749 then
           Mob = "Gorilla King"
           FrameQ = CFrame.new(-3685.647705078125, -91.49403381347656, 360.2413635253906)
       elseif MyLevel == 750 or MyLevel <= 799 then
           Mob = "Smiling Cat"
           FrameQ = CFrame.new(-749.9562377929688, -92.70011138916016, -2891.1279296875)
       elseif MyLevel == 800 or MyLevel <= 849 then
           Mob = "Killerfish"
           FrameQ = CFrame.new(-294.51788330078125, -92.70011138916016, -2777.8896484375)
       elseif MyLevel == 850 or MyLevel <= 899 then
           Mob = "Bingus"
           FrameQ = CFrame.new(-456.5486755371094, -92.70011138916016, -2856.85888671875)
       elseif MyLevel == 900 or MyLevel <= 949 then
           Mob = "Obamid"
           FrameQ = CFrame.new(-462.0100402832031, -61.09877395629883, -3530.655517578125)
       elseif MyLevel == 950 or MyLevel <= 999 then
           Mob = "Floppy"
           FrameQ = CFrame.new(-1353.90576171875, -89.65943908691406, 937.8524169921875)
       elseif MyLevel == 1000 or MyLevel <= 1049 then
           Mob = "Creepy Head"
           FrameQ = CFrame.new(-869.3150024414062, -90.90943908691406, 1081.836669921875)
       elseif MyLevel == 1050 or MyLevel <= 1149 then
           Mob = "Scary Skull"
           FrameQ = CFrame.new(-1421.9774169921875, -92.91299438476562, 1250.7928466796875)
       elseif MyLevel == 1150 or MyLevel <= 1199 then
           Mob = "Pink Absorber"
           FrameQ = CFrame.new(1831.557861328125, 121.98255920410156, 3444.105224609375)
       elseif MyLevel == 1200 or MyLevel <= 1249 then
           Mob = "Troll Face"
           FrameQ = CFrame.new(-2911.781494140625, -81.08662414550781, 2824.142822265625)
       elseif MyLevel == 1250 or MyLevel <= 1299 then
           Mob = "Uncanny Cat"
           FrameQ = CFrame.new(-2897.91552734375, -81.08662414550781, 3190.833984375)
       elseif MyLevel == 1300 or MyLevel <= 1349 then
           Mob = "Quandale Dingle"
           FrameQ = CFrame.new(-2588.55126953125, -81.08662414550781, 2989.777099609375)
       elseif MyLevel == 1350 or MyLevel <= 1449 then
           Mob = "Moai"
           FrameQ = CFrame.new(-2661.221923828125, -81.08602142333984, 3380.985107421875)
       elseif MyLevel == 1450 or MyLevel <= 1499 then
           Mob = "Red Sus"
           FrameQ = CFrame.new(1070.100341796875, -51.79351043701172, 2818.936279296875)
       elseif MyLevel == 1500 or MyLevel <= 1699 then
           Mob = "Sus Duck"
           FrameQ = CFrame.new(1562.4791259765625, -51.79351043701172, 2328.5)
       elseif MyLevel == 1700 or MyLevel <= 1749 then
           Mob = "Sigma Man"
           FrameQ = CFrame.new(7964.869140625, 30.75599479675293, 4546.0576171875)
       elseif MyLevel == 1750 or MyLevel <= 1799 then
           Mob = "Dancing Cat"
           FrameQ = CFrame.new(8331.3466796875, 30.75599479675293, 4494.4736328125 )
       elseif MyLevel == 1800 or MyLevel <= 1849 then
           Mob = "Toothless Dragon"
           FrameQ = CFrame.new(7906.49462890625, 30.75599479675293, 4783.05908203125)
       elseif MyLevel == 1850 or MyLevel <= 1899 then
           Mob = "Manly Nugget"
           FrameQ = CFrame.new(8273.84375, 30.75599479675293, 4778.83740234375)
       elseif MyLevel == 1900 or MyLevel <= 1949 then
           Mob = "Huh Cat"
           FrameQ = CFrame.new(3924.419189453125, -58.149635314941406, -1238.689453125)
       elseif MyLevel == 1950 or MyLevel <= 1999 then
           Mob = "Mystical Tree"
           FrameQ = CFrame.new(3698.140380859375, -58.149635314941406, 69.95709991455078)
       elseif MyLevel == 2000 or MyLevel <= 2049 then
           Mob = "Old Man"
           FrameQ = CFrame.new(4346.48486328125, -92.56228637695312, 233.11241149902344)
       elseif MyLevel == 2050 or MyLevel <= 2099 then
           Mob = "Nyan Cat"
           FrameQ = CFrame.new(4892.54541015625, -92.56233978271484, 232.9646453857422)
       elseif MyLevel == 2100 or MyLevel <= 2149 then
           Mob = "Baller"
           FrameQ = CFrame.new(1277.290283203125, -54.329017639160156, -4668.7890625)
       elseif MyLevel == 2150 or MyLevel <= 2199 then
           Mob = "Slicer"
           FrameQ = CFrame.new(1339.090087890625, -54.32901382446289, -4913.8251953125)
       elseif MyLevel == 2200 or MyLevel <= 2249 then
           Mob = "Rick Roller"
           FrameQ = CFrame.new(2231.442138671875, -90.56163024902344, -4788.474609375)
       elseif MyLevel == 2250 or MyLevel <= 2300 then
           Mob = "Gigachad"
           FrameQ = CFrame.new(1330.892822265625, -90.5616455078125, -5374.544921875)
       elseif MyLevel == 2300 or MyLevel <= 2349 then
           Mob = "MrBeast"
           FrameQ = CFrame.new(1876.98828125, 24.897499084472656, -5284.12890625)
       elseif MyLevel >= 2350 then
           Mob = "Handsome Man"
           FrameQ = CFrame.new(2278.8076171875, -90.5616455078125, -5399.32666015625)
        end
    end
    
function CheckFarmMob()
        if MoN == "Floppa" then
            MobFarm = "Floppa"
            FrameQFarm = CFrame.new(564.91650390625, -37.043067932128906, -556.4757690429688)
        elseif MoN == "Golden Floppa" then
           MobFarm = "Golden Floppa"
           FrameQFarm = CFrame.new(562.2315673828125, -37.043067932128906, -914.1873779296875)
       elseif MoN == "Big Floppa"  then--BossMob
           MobFarm = "Big Floppa"
           FrameQFarm = CFrame.new(470.8048400878906, -3.5550005435943604, -1403.531982421875)
       elseif MoN == "Doge" then
           MobFarm = "Doge"
           FrameQFarm = CFrame.new(868.4557495117188, -37.043067932128906, -735.547119140625)
       elseif MoN == "Cheems" then
           MobFarm = "Cheems"
           FrameQFarm = CFrame.new(902.94384765625, -37.04301071166992, -1503.9013671875)
       elseif MoN == "Walter Dog" then--BossMob
           MobFarm = "Walter Dog"
           FrameQFarm = CFrame.new(10.436995506286621, -37.043067932128906, -1034.9451904296875)
       elseif MoN == "Staring Fish" then
           MobFarm = "Staring Fish"
           FrameQFarm = CFrame.new(-2942.891845703125, -55.27851104736328, -1876.39599609375)
       elseif MoN == "Hamster" then
           MobFarm = "Hamster"
           FrameQFarm = CFrame.new(-3143.15576171875, -55.27851104736328, -1811.48095703125)
       elseif MoN == "Snow Tree" then--BossMob
           MobFarm = "Snow Tree"
           FrameQFarm = CFrame.new(-2924.063720703125, -77.63380432128906, -2323.243896484375)
       elseif MoN == "The Rock" then
           MobFarm = "The Rock"
           FrameQFarm = CFrame.new(-2995.177001953125, -55.27851104736328, -1754.591064453125)
       elseif MoN == "Banana Cat" then
           MobFarm = "Banana Cat"
           FrameQFarm = CFrame.new(-3393.187744140625, -51.4274787902832, -2150.902099609375)
       elseif MoN == "Sus Face" then--BossMob
           MobFarm = "Sus Face"
           FrameQFarm = CFrame.new(-3080.643310546875, -77.63941955566406, -2312.59423828125)
       elseif MoN == "Egg Dog" then
           MobFarm = "Egg Dog"
           FrameQFarm = CFrame.new(-3063.50830078125, -91.0500259399414, 589.280517578125)
       elseif MoN == "Popcat" then
           MobFarm = "Popcat"
           FrameQFarm = CFrame.new(-3390.79052734375, -91.10002136230469, 445.5372619628906)
       elseif MoN == "Gorilla King" then--BossMob
           MobFarm = "Gorilla King"
           FrameQFarm = CFrame.new(-3685.647705078125, -91.49403381347656, 360.2413635253906)
       elseif MoN == "Smiling Cat" then
           MobFarm = "Smiling Cat"
           FrameQFarm = CFrame.new(-749.9562377929688, -92.70011138916016, -2891.1279296875)
       elseif MoN == "Killerfish" then
           MobFarm = "Killerfish"
           FrameQFarm = CFrame.new(-294.51788330078125, -92.70011138916016, -2777.8896484375)
       elseif MoN == "Bingus" then
           MobFarm = "Bingus"
           FrameQFarm = CFrame.new(-456.5486755371094, -92.70011138916016, -2856.85888671875)
       elseif MoN == "Obamid" then--MobBoss
           MobFarm = "Obamid"
           FrameQFarm = CFrame.new(-462.0100402832031, -61.09877395629883, -3530.655517578125)
       elseif MoN == "Floppy" then
           MobFarm = "Floppy"
           FrameQFarm = CFrame.new(-1353.90576171875, -89.65943908691406, 937.8524169921875)
       elseif MoN == "Creepy Head" then
           MobFarm = "Creepy Head"
           FrameQFarm = CFrame.new(-869.3150024414062, -90.90943908691406, 1081.836669921875)
       elseif MoN == "Scary Skull" then
           MobFarm = "Scary Skull"
           FrameQFarm = CFrame.new(-1421.9774169921875, -92.91299438476562, 1250.7928466796875)
       elseif MoN == "Pink Absorber" then--BossMob
           MobFarm = "Pink Absorber"
           FrameQFarm = CFrame.new(1831.557861328125, 121.98255920410156, 3444.105224609375)
       elseif MoN == "Troll Face" then
           MobFarm = "Troll Face"
           FrameQFarm = CFrame.new(-2911.781494140625, -81.08662414550781, 2824.142822265625)
       elseif MoN == "Uncanny Cat" then
           MobFarm = "Uncanny Cat"
           FrameQFarm = CFrame.new(-2897.91552734375, -81.08662414550781, 3190.833984375)
       elseif MoN == "Quandale Dingle" then
           MobFarm = "Quandale Dingle"
           FrameQFarm = CFrame.new(-2588.55126953125, -81.08662414550781, 2989.777099609375)
       elseif MoN == "Moai" then--BossMob
           MobFarm = "Moai"
           FrameQFarm = CFrame.new(-2661.221923828125, -81.08602142333984, 3380.985107421875)
       elseif MoN == "Red Sus" then
           MobFarm = "Red Sus"
           FrameQFarm = CFrame.new(1070.100341796875, -51.79351043701172, 2818.936279296875)
       elseif MoN == "Sus Duck" then
           MobFarm = "Sus Duck"
           FrameQFarm = CFrame.new(1562.4791259765625, -51.79351043701172, 2328.5)
       elseif MoN == "Sigma Man" then
           MobFarm = "Sigma Man"
           FrameQFarm = CFrame.new(7964.869140625, 30.75599479675293, 4546.0576171875)
       elseif MoN == "Dancing Cat" then
           MobFarm = "Dancing Cat"
           FrameQFarm = CFrame.new(8331.3466796875, 30.75599479675293, 4494.4736328125 )
       elseif MoN == "Toothless Dragon" then
           MobFarm = "Toothless Dragon"
           FrameQFarm = CFrame.new(7906.49462890625, 30.75599479675293, 4783.05908203125)
       elseif MoN == "Manly Nugget" then
           MobFarm = "Manly Nugget"
           FrameQFarm = CFrame.new(8273.84375, 30.75599479675293, 4778.83740234375)
       elseif MoN == "Huh Cat" then
           MobFarm = "Huh Cat"
           FrameQFarm = CFrame.new(3924.419189453125, -58.149635314941406, -1238.689453125)
       elseif MoN == "Mystical Tree" then
           MobFarm = "Mystical Tree"
           FrameQFarm = CFrame.new(3698.140380859375, -58.149635314941406, 69.95709991455078)
       elseif MoN == "Old Man" then
           MobFarm = "Old Man"
           FrameQFarm = CFrame.new(4346.48486328125, -92.56228637695312, 233.11241149902344)
       elseif MoN == "Nyan Cat" then
           MobFarm = "Nyan Cat"
           FrameQFarm = CFrame.new(4892.54541015625, -92.56233978271484, 232.9646453857422)
       elseif MoN == "Baller" then
           MobFarm = "Baller"
           FrameQFarm = CFrame.new(1277.290283203125, -54.329017639160156, -4668.7890625)
       elseif MoN == "Slicer" then
           MobFarm = "Slicer"
           FrameQFarm = CFrame.new(1339.090087890625, -54.32901382446289, -4913.8251953125)
       elseif MoN == "Rick Roller" then
           MobFarm = "Rick Roller"
           FrameQFarm = CFrame.new(2231.442138671875, -90.56163024902344, -4788.474609375)
       elseif MoN == "Gigachad" then
           MobFarm = "Gigachad"
           FrameQFarm = CFrame.new(1330.892822265625, -90.5616455078125, -5374.544921875)
       elseif MoN == "MrBeast" then
           MobFarm = "MrBeast"
           FrameQFarm = CFrame.new(1876.98828125, 24.897499084472656, -5284.12890625)
       elseif MoN == "Handsome Man" then
           MobFarm = "Handsome Man"
           FrameQFarm = CFrame.new(2278.8076171875, -90.5616455078125, -5399.32666015625)
        end
        end
    
    function TP(Kuy)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Kuy
    end
    
    function EquipWeapon(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
    
    Delta = game.Players.LocalPlayer.Name
    
    MonGAY = {"Floppa","Golden Floppa","Big Floppa","Doge","Cheems","Walter Dog","Staring Fish","Hamster","Snow Tree","The Rock","Banana Cat","Sus Face","Egg Dog","Popcat","Gorilla King","Smiling Cat","Killerfish","Bingus","Obamid","Floppy","Creepy Head","Scary Skull","Pink Absorber","Troll Face","Uncanny Cat","Quandale Dingle","Moai","Red Sus","Sus Duck","Sigma Man","Dancing Cat","Toothless Dragon","Manly Nugget","Huh Cat","Mystical Tree","Old Man","Nyan Cat","Baller","Slicer","Rick Roller","Gigachad","MrBeast","Handsome Man"}
    
    Spwan1 = CFrame.new(-1180.0992431640625, -92.91278076171875, 1460.7950439453125)   
    Quest1 = CFrame.new(-1161.9530029296875, -92.91244506835938, 1462.6258544921875) 
    Spwan2 = CFrame.new(6642.3046875, -94.87049865722656, 4811.51513671875)   
    Quest2 = CFrame.new(6566.28271484375, -94.78914642333984, 4796.65869140625)
    Spwan3 = CFrame.new(-2356.23388671875, -75.37208557128906, 3180.397705078125)
    Quest3 = CFrame.new(2891.572509765625, -51.79050064086914, 4208.52783203125)
    
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.AutoFarm or _G.AutoCoolQuest or _G.AutolGaitPumunk or _G.AutoMEmeBeast or _G.EvoOrb or _G.Pixell or _G.Raid or _G.AutoFarmMob or _G.AutoFullLord or _G.AutoEvil or _G.AutoFullEvil then
                if not game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                    local Part = Instance.new("Part")
                    Part.Name = "TaiFoot"
                    Part.Parent = game.Workspace
                    Part.Anchored = true
                    Part.Transparency = 1
                    Part.Size = Vector3.new(30,0.5,30)
                elseif game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                    game.Workspace["TaiFoot"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                end
            else
                if game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                    game:GetService("Workspace"):FindFirstChild("TaiFoot"):Destroy()
                end
            end
        end)
    end)
    
 
    --noclip
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.AutoFarm or _G.AutoCoolQuest or _G.AutolGaitPumunk or _G.AutoMEmeBeast or _G.EvoOrb or _G.Pixell or _G.Raid or _G.AutoFarmMob or _G.AutoFullLord or _G.AutoEvil or _G.AutoFullEvil then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)
            


    function StopNoClip(Config)
        if Config == false then
            if game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                game:GetService("Workspace"):FindFirstChild("TaiFoot"):Destroy()
            end
        end
    end
    
    
local DomaUi = Update:Window("           Domadic","12523036534",Enum.KeyCode.RightControl);

local Main = DomaUi:AddTab("Main","6026568198")
local Ss = DomaUi:AddTab("Stats","7040410130")
local Tp = DomaUi:AddTab("Teleport","11155851001")
local S = DomaUi:AddTab("Shop","6031265976")
Raid = DomaUi:AddTab("Raid",11155986081)
Misc = DomaUi:AddTab("Misc",11156061121)
local SKillSet = DomaUi:AddTab("Skill Setting","6034509993")



Main:AddSeperator("⚙️Settings⚙️")
    
    
   Main:AddDropdown("Select ToolTip",{"FightingStyle","Power","Weapon"},function(value)
        _G.SelectWeapon = value
    end)
    
    task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "FightingStyle" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Fighting Style" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Power" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Power" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Weapon" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Weapon" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)

    
_G.DistanceMob = 8
    Main:AddSlider("Distance Mob",1,100,8,function(value)
        _G.DistanceMob = value
    end)
    
Main:AddDropdown("Select Method",{"Behind","Below","Upper"},function(value)
        _G.Method = value
    end)
    
    spawn(function()
        while wait() do 
            pcall(function()
                if _G.Method == "Behind" then
                    MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                elseif _G.Method == "Below" then
                    MethodFarm = CFrame.new(0,-_G.DistanceMob,0) * CFrame.Angles(math.rad(90),0,0)
                elseif _G.Method == "Upper" then
                    MethodFarm = CFrame.new(0,_G.DistanceMob,0)  * CFrame.Angles(math.rad(-90),0,0)
                else
                    MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                end
            end)
        end
    end)
    
    Main:AddToggle("Magnet",_G.BringMonster,function(value)
  _G.BringMonster = value
  end)
  
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    for i,v in pairs(workspace.Monster:GetChildren()) do
                        if StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                            v.HumanoidRootPart.CFrame = PosMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                    end
                end
            end)
        end
    end)
    
    Main:AddSeperator("🔰Level Farm🔰")
    
    Main:AddToggle("Auto Farm Level",_G.AutoF,function(value)
  _G.AutoFarm = value
  StopNoClip(_G.AutoFarm)
  if not _G.AutoFarm then
  UseS = false
  end
  end)
    
 
    
spawn(function()
            while wait() do
                if _G.AutoFarm then
                    pcall(function()
                    CheckQuest()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                                    if not string.find(QuestTitle, Mob) then
                                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(FrameQ)
                    if (FrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then             
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
                    if workspace.Monster:FindFirstChild(Mob) then
                        for i,v in pairs (workspace.Monster:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == Mob then
                                        repeat task.wait()    
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        UseS = true
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        Mon = Mob
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    UseS = false
                                    StartMagnet = false                                
                                    end
                                end
                           end
                       end
                     if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(Mob) then
                         TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(Mob).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    end)
                end
            end
        end)
        
        
  Main:AddSeperator("💎MobFarm💎")
  
  Main:AddDropdown("Select Mob",MonGAY,function(vu)
    MoN = vu
end)

  Main:AddToggle("Auto Farm Mob",_G.AutoF,function(value)
  _G.AutoFarmMob = value
  StopNoClip(_G.AutoFarmMob)
  if not _G.AutoFarmMob then
  UseS = false
  end
  end)
  
  spawn(function()
        while wait() do
            if _G.AutoFarmMob and not _G.QuestMob then
                pcall(function()
                    if workspace.Monster:FindFirstChild(MoN) then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == MoN then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        UseS = true   
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame  
                                        Mon = MoN                              
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoFarmMob or not v.Parent or v.Humanoid.Health <= 0      
                                    UseS = false
                                    StartMagnet = false                              
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(MoN) then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(MoN).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFarmMob and _G.QuestMob then
                pcall(function()
                CheckFarmMob()
                    local MobTitle = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                    if not string.find(MobTitle, MobFarm) then
                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(FrameQFarm)
                    if (FrameQFarm.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then             
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
                    if workspace.Monster:FindFirstChild(MobFarm) then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == MobFarm then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        UseS = true
                                        PosMon = v.HumanoidRootPart.CFrame  
                                        Mon = MobFarm
                                        StartMagnet = true                          
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoFarmMob or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    UseS = false
                                    StartMagnet = false
                                    end                    
                                end
                            end
                        end
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(MobFarm) then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild(MobFarm).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
  Main:AddToggle("Interested Quest",_G.QuestMob,function(value)
  _G.QuestMob = value
  end)
  
        
        
    Main:AddSeperator("🐍Meme Beast🐍")
    
    
local MemeBit = Main:AddLabel("Sttus:")

	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster:FindFirstChild("Meme Beast") then
					MemeBit:Set("Status : Spawn!")	
				else
					MemeBit:Set("Status : Meme Beast Not Found!")	
				end
			end)
		end
	end)
	
	Main:AddToggle("Auto Farm Meme beast",false,function(value)
        _G.AutoMEmeBeast = value
        StopNoClip(_G.AutoMEmeBeast)
        if not _G.AutoMEmeBeast then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoMEmeBeast then
                pcall(function()
                    if workspace.Monster:FindFirstChild("Meme Beast") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Meme Beast" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        UseS = true
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoMEmeBeast or not v.Parent or v.Humanoid.Health <= 0
                                    UseS = false                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Meme Beast") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Meme Beast").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddSeperator("🎃Giant Pumpkin🎃")
    
    local Mpum = Main:AddLabel("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster:FindFirstChild("Giant Pumpkin") then
					Mpum:Set("Status : Spawn!")	
				else
					Mpum:Set("Status : Giant Pumpkin Not Found!")	
				end
			end)
		end
	end)
	
	Main:AddToggle("Auto Farm Giant Pumpkin",false,function(value)
        _G.AutolGaitPumunk = value
        StopNoClip(_G.AutolGaitPumunk)
        if not _G.AutolGaitPumunk then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutolGaitPumunk then
                pcall(function()
                    if workspace.Monster:FindFirstChild("Giant Pumpkin") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Giant Pumpkin" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)      
                                        UseS = true                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutolGaitPumunk or not v.Parent or v.Humanoid.Health <= 0       
                                    UseS = false                
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Rimuru") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Rimuru").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddToggle("Auto Giant Pumpkin [Find Orb And Spwan]",false,function(value)
        _G.AutoFullGait = value
        StopNoClip(_G.AutoFullGait)
        if not _G.AutoFullGait then
  UseS = false
  end
    end)
    
    
    spawn(function()
        while wait() do
            if _G.AutoFullGait then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Items.ItemStorage["Flame Orb"].Value >= 1 and not workspace.Monster:FindFirstChild("Giant Pumpkin") then
                        TP(Spwan1)
                    if (Spwan1.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then                  
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
                    elseif workspace.Monster:FindFirstChild("Giant Pumpkin") then 
                    local QuestGui1 = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                    if not string.find(QuestGui1, "Giant Pumpkin") then
                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(Quest1)
                    if (Quest1.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then             
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
					if workspace.Monster:FindFirstChild("Giant Pumpkin") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Giant Pumpkin" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullGait == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Giant Pumpkin") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Giant Pumpkin").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Items.ItemStorage["Flame Orb"].Value <= 1 then
                        if workspace.Monster:FindFirstChild("Scary Skull") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Scary Skull" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        Mon = "Scary Skull"
                                        StartMagnet = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullGait == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.Items.ItemStorage["Flame Orb"].Value >= 1
                                    StartMagnet = false
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Scary Skull") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Scary Skull").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    else
                        TP(CFrame.new(-1161.9530029296875, -92.91244506835938, 1462.6258544921875))
                    end
                end)
            end
        end
    end)
    
    Main:AddSeperator("🤨Lord Sus🤨")
    
    local LordGry = Main:AddLabel("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster:FindFirstChild("Lord Sus") then
					LordGry:Set("Status : Spawn!")	
				else
					LordGry:Set("Status : Lord Sus Not Found!")	
				end
			end)
		end
	end)
	
    Main:AddToggle("Auto Farm Lord Sus",false,function(value)
        _G.AutoLord = value
        StopNoClip(_G.AutoLord)
        if not _G.AutoLord then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoLord then
                pcall(function()
                    if workspace.Monster:FindFirstChild("Lord Sus") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Lord Sus" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)           
                                        UseS = true                
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoLord or not v.Parent or v.Humanoid.Health <= 0 
                                    UseS = false                  
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Lord Sus") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Lord Sus").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    
    Main:AddToggle("Auto Farm Lord Sus [Find Orb And Spwan]",false,function(value)
        _G.AutoFullLord = value
        StopNoClip(_G.AutoFullLord)
        if not _G.AutoFullLord then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFullLord then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Items.ItemStorage["Sussy Orb"].Value >= 1 and not workspace.Monster:FindFirstChild("Lord Sus") then
                        TP(Spwan2)
                    if (Spwan2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then                  
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
                    elseif workspace.Monster:FindFirstChild("Lord Sus") then 
                    local QuestGui2 = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                    if not string.find(QuestGui2, "Lord Sus") then
                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(Quest2)
                    if (Quest2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then             
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
					if workspace.Monster:FindFirstChild("Lord Sus") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Lord Sus" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        UseS = true
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullLord == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    UseS = false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Lord Sus") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Lord Sus").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Items.ItemStorage["Sussy Orb"].Value <= 1 then
                        if workspace.Monster:FindFirstChild("Sus Duck") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Sus Duck" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        Mon = "Sus Duck"
                                        StartMagnet = true
                                        UseS = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullLord == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.Items.ItemStorage["Flame Orb"].Value >= 1
                                    StartMagnet = false
                                    UseS = false
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Sus Duck") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Sus Duck").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    else
                        TP(CFrame.new(1544.4964599609375, -51.69450378417969, 2338.269287109375 ))
                    end
                end)
            end
        end
    end)
    
    Main:AddSeperator("👹Evil Noob👹")
    
    local e_NOOB = Main:AddLabel("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster:FindFirstChild("Evil Noob") then
					e_NOOB:Set("Status : Spawn!")	
				else
					e_NOOB:Set("Status : Evil Noob Not Found!")	
				end
			end)
		end
	end)
	
    Main:AddToggle("Auto Farm Evil Noob",false,function(value)
        _G.AutoEvil = value
        StopNoClip(_G.AutoEvil)
        if not _G.AutoEvil then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoLord then
                pcall(function()
                    if workspace.Monster:FindFirstChild("Evil Noob") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Evil Noob" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)           
                                        UseS = true                
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.AutoEvil or not v.Parent or v.Humanoid.Health <= 0 
                                    UseS = false                  
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Evil Noob") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Evil Noob").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    
    Main:AddToggle("Auto Farm Evil Noob [Find Orb And Spwan]",false,function(value)
        _G.AutoFullEvil = value
        StopNoClip(_G.AutoFullEvil)
        if not _G.AutoFullEvil then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.AutoFullEvil then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Items.ItemStorage["Noob Head"].Value >= 1 and not workspace.Monster:FindFirstChild("Evil Noob") then
                        TP(Spwan3)
                    if (Spwan3.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then                  
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
                    elseif workspace.Monster:FindFirstChild("Evil Noob") then 
                    local QuestGui3 = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                    if not string.find(QuestGui3, "Evil Noob") then
                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(Quest3)
                    if (Quest3.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then             
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
					elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
					if workspace.Monster:FindFirstChild("Evil Noob") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Evil Noob" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        UseS = true
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullEvil == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    UseS = false
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Evil Noob") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Evil Noob").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Items.ItemStorage["Noob Head"].Value <= 1 then
                        if workspace.Monster:FindFirstChild("Moai") then
                            for i,v in pairs(workspace.Monster:GetChildren()) do
                                if v.Name == "Moai" and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        Mon = "Moai"
                                        StartMagnet = true
                                        UseS = true
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until _G.AutoFullEvil == false or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.Items.ItemStorage["Flame Orb"].Value >= 1
                                    StartMagnet = false
                                    UseS = false
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Moai") then
                                TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Moai").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                            end
                        end
                    else
                        TP(CFrame.new(-2680.298095703125, -80.99500274658203, 3436.930419921875 ))
                    end
                end)
            end
        end
    end)
    
    Main:AddSeperator("Other")
    
Main:AddToggle("Auto Cool Floppa Quest",_G.AutoCoolQuest,function(value)
  _G.AutoCoolQuest = value
  StopNoClip(_G.AutoCoolQuest)
  end)
  
  
        spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoCoolQuest then    
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(CFrame.new(756.8186645507812, -30.184125900268555, -424.4490661621094))
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
                    TP(CFrame.new(793.6429443359375, -30.737462997436523, -440.753173828125))
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                    end
                end
            end
        end)
    end)
    
    Main:AddToggle("Auto Evo Orb",false,function(value)
        _G.EvoOrb = value
        StopNoClip(_G.EvoOrb)
        if not _G.EvoOrb then
  UseS = false
  end
    end)
    
    spawn(function()
            while wait() do
                if _G.EvoOrb then
                    pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Target.Text
                    if not string.find(QuestTitle, "Sogga") then
                    game:GetService("ReplicatedStorage").OtherEvent.QuestEvents.Quest:FireServer("Abandon_Quest",{["QuestSlot"] = "QuestSlot1"})
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false then
                    TP(CFrame.new(-2622.73779296875, -77.4010009765625, -2002.1846923828125))
                    game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == true then
                        for i,v in pairs (workspace.Monster:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Sogga" then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 500000 then
                                        repeat task.wait()     
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        UseS = true
                                        StartMagnet = true
                                        Mon = "Sogga"
                                        PosMon = v.HumanoidRootPart.CFrame
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.EvoOrb or not v.Parent or v.Humanoid.Health <= 0 or not workspace.Monster:FindFirstChild("Sogga") or game:GetService("Players").LocalPlayer.PlayerGui.QuestGui.Holder.QuestSlot1.Visible == false
                                    UseS = false
                                    StartMagnet = false
                                    if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Sogga") then
                                    TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Sogga").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                                    end
                                    end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    
    Main:AddToggle("Auto Pixel Sword",false,function(value)
        _G.Pixell = value
        StopNoClip(_G.Pixell)
        if not _G.Pixell then
  UseS = false
  end
    end)
    
    spawn(function()
        while wait() do
            if _G.Pixell then
                pcall(function()
                    if workspace.Monster:FindFirstChild("Obamid") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Obamid" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)            
                                         UseS = true                            
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.Pixell or not v.Parent or v.Humanoid.Health <= 0
                                    UseS = false        
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Obamid") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Obamid").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddToggle("Auto Fire Katana",false,function(value)
        _G.FireKawataka = value
        StopNoClip(_G.FireKawataka)
    end)
    spawn(function()
        while wait() do
            if _G.FireKawataka then
                pcall(function()
               if game:GetService("Players").LocalPlayer.Items.ItemStorage["Cheems Cola"].Value >= 1 then
               wait(.5)
               game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Weapon_Seller","Cheems")
                elseif game:GetService("Players").LocalPlayer.Items.ItemStorage["Cheems Cola"].Value <= 1 then
                    if workspace.Monster:FindFirstChild("Walter Dog") then
                        for i,v in pairs(workspace.Monster:GetChildren()) do
                            if v.Name == "Walter Dog" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.FireKawataka or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Walter Dog") then
                            TP(game:GetService("ReplicatedStorage").EnemyTemplate:FindFirstChild("Walter Dog").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:AddToggle("Auto Click Pop Cat",false,function(value)
        _G.AutoPopOhio = value
        StopNoClip(_G.AutoPopOhio)
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoPopOhio then
					fireclickdetector(workspace.Island.FloppaIsland.Popcat_Clickable.Part.ClickDetector)
				end
			end
		end)
	end)
    Main:AddLine()
    
    Ss:AddSeperator("📊Stats📊")
    
    
    local MainPoit = Ss:AddLabel("Your Point:")
    
    spawn(function()
        pcall(function()
            while wait() do
                MainPoit:Set("Your Point"..game:GetService("Players").LocalPlayer.PlayerData.SkillPoint.Value)
            end
        end)
    end)
    
Ss:AddToggle("Auto Melee",_G.AutoF,function(value)
  St = value
  end)

    spawn(function()
        pcall(function()
            while wait() do
            if game:GetService("Players").LocalPlayer.PlayerData.SkillPoint.Value >= point then
                if St then    
                    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer({["Target"] = "MeleeLevel",["Action"] = "UpgradeStats",["Amount"] = point})
                    end
                end
            end
        end)
    end)
    
    Ss:AddToggle("Auto Defense",_G.AutoF,function(value)
  Df = value
  end)
  
    spawn(function()
        pcall(function()
            while wait() do
            if game:GetService("Players").LocalPlayer.PlayerData.SkillPoint.Value >= point then
                if Df then    
                    game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer({["Target"] = "DefenseLevel",["Action"] = "UpgradeStats",["Amount"] = point})
                    end
                end
            end
        end)
    end)
    
    Ss:AddToggle("Auto Sword",_G.AutoF,function(value)
  Wp = value
  end)
  
    spawn(function()
        pcall(function()
            while wait() do
            if game:GetService("Players").LocalPlayer.PlayerData.SkillPoint.Value >= point then
                if Wp then    
                game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer({["Target"] = "SwordLevel",["Action"] = "UpgradeStats",["Amount"] = point})
                end
                end
            end
        end)
    end)
    
    Ss:AddToggle("Auto power",_G.AutoF,function(value)
  Ry = value
  end)
  
    spawn(function()
        pcall(function()
            while wait() do
            if game:GetService("Players").LocalPlayer.PlayerData.SkillPoint.Value >= point then
                if Ry then    
                game:GetService("ReplicatedStorage").OtherEvent.MainEvents.StatsFunction:InvokeServer({["Target"] = "MemePowerLevel",["Action"] = "UpgradeStats",["Amount"] = point})
                end
                end
            end
        end)
    end)
    
    point = 1
    Ss:AddSlider("Amount",1,100,1,function(value)
        point = value
    end)
      Tp:AddSeperator("🌀Teleport🌀")
      
Tp:AddButton("Floppa",function()
  TP(CFrame.new(146.375, -37.02650451660156, -669.7349853515625))
end)

Tp:AddButton("Snow",function()
  TP(CFrame.new(-2816.94775390625, -37.15656280517578, -1940.7569580078125))
end)

Tp:AddButton("Gorilla",function()
  TP(CFrame.new(-3112.984375, -91.01224517822266, 509.2812194824219))
end)

Tp:AddButton("Sand",function()
  TP(CFrame.new(-543.58447265625, -92.65746307373047, -2541.348388671875))
end)

Tp:AddButton("Pumkin",function()
  TP(CFrame.new(-1150.265869140625, -92.84597778320312, 830.3007202148438))
end)

Tp:AddButton("Moai",function()
  TP(CFrame.new(-2995.5234375, -17.883499145507812, 3002.255615234375))
end)

Tp:AddButton("Sus",function()
  TP(CFrame.new(1220.9066162109375, -51.69450378417969, 2474.884033203125))
end)


Tp:AddButton("Noob Arene",function()
  TP(CFrame.new(3064.579345703125, -51.70000457763672, 4283.84765625))
end)

Tp:AddButton("Forgotten",function()
  TP(CFrame.new(7724.18115234375, 30.827999114990234, 4658.0654296875))
end)

Tp:AddButton("Pvp Arene",function()
  TP(CFrame.new(3325.41748046875, -92.31830596923828, -549.7760009765625))
end)

Tp:AddButton("MrBeast",function()
  TP(CFrame.new(1800.09521484375, -90.4570083618164, -4481.3896484375))
end)


    
    S:AddLabel("Wait for update")
    S:AddSeperator("Ability")
    
    S:AddButton("Buy Aura",function()
	game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Ability_Teacher","Aura Master")
	end)
    
    
    S:AddSeperator("👊FightingStyle👊")
    
    S:AddButton("Buy Commat",function()
	game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("FightingStyle_Teacher","Maxwell")
	end)
	
	
	S:AddSeperator("🔪Sword🔪")
    
    S:AddButton("Buy Katana",function()
	game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Weapon_Seller","Doge")
	end)
    
    Raid:AddToggle("Auto Raid",_G.Raid,function(value)
  _G.Raid = value
  StopNoClip(_G.Raid)
        if not _G.Raid then
  UseS = false
  end
  end)
  
  Raid:AddToggle("Auto Go To Raid",_G.Raid,function(value)
  _G.GoRaid = value
  end)
  
  
  spawn(function()
        while wait() do
            if _G.GoRaid then
            if game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Visible == false then
                pcall(function()
                    TP(CFrame.new(2749.188232421875, -57.323822021484375, -4525.55419921875))
                end)
                end
            end
        end
    end)
    
  Raid:AddButton("Teleport Raid",function()
        TP(CFrame.new(2749.188232421875, -57.323822021484375, -4525.55419921875))
    end)
  
  
  spawn(function()
            while wait() do
                if _G.Raid then
                    pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.RaidGui.RaidFrame.Visible == true then
                        for i,v in pairs (workspace.Monster:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name then
                                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 3000 then
                                    repeat task.wait()
                                    StartMagnet = true
                                    UseS = true
                                    EquipWeapon(_G.SelectWeapon)      
                                    TP(v.HumanoidRootPart.CFrame * MethodFarm) 
                                    v.HumanoidRootPart.Size = Vector3.new(20,20,20)                    
                                    PosMon = v.HumanoidRootPart.CFrame
                                    Mon = v.Name
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not _G.Raid or not v.Parent or v.Humanoid.Health <= 0 or not workspace.Monster:FindFirstChild(v.Name)
                                    StartMagnet = false
                                    UseS = false
                                    end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    
    Misc:AddSeperator("💻Server💻")
    
    spawn(function()
        while wait() do
            pcall(function()
                JobAiDee:Set("Job ID :".." "..game.JobId)
            end)
        end
    end)
    
    
    JobAiDee = Misc:AddLabel("Job ID : ")
    
    
    Misc:AddButton("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    
    Misc:AddButton("Hop To Lower Player",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)
    
    Misc:AddButton("Copy Job Id",function()
	setclipboard(tostring(game.JobId))
	end)
	
    Misc:AddTextbox("Place Job Id", true, function(value)
	_G.Job = value
	end)

	Misc:AddButton("Join Sever ",function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
	end)
	
	Misc:AddSeperator("⚙️Misc⚙️")
	

	Misc:AddButton("Click TP Tool",function()
        local plr = game:GetService("Players").LocalPlayer
        local mouse = plr:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Activated:Connect(function()
        local root = plr.Character.HumanoidRootPart
        local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
        local offset = pos-root.Position
        root.CFrame = root.CFrame+offset
        end)
        tool.Parent = plr.Backpack
    end)
    
    Misc:AddButton("Max Zoom ซูมออกได้ไม่จํกัด", function()
		while wait() do
			game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
			end
	end)
	
	Misc:AddToggle("X Ray",false,function(value)
		NoWorld = value
		if NoWorld == true then
			transparent = true
			x(transparent)
		elseif NoWorld == false then
			transparent = false
			x(transparent)
		end
	end)

	local transparent = false -- xray
	function x(v)
		if v then
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0.7
				end
			end
		else
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0
				end
			end
		end
	end
	
	Misc:AddToggle("Bring Fruit",_G.BringFruit,function(value)
        BringFruit = value
    end)
    
    spawn(function()
        while wait() do
            if BringFruit then
                pcall(function()
                    for i,v in pairs(workspace.Dropped_Items:GetChildren()) do
                        if string.find(v.Name, "Power") then
                            TP(v.Handle.CFrame)
                        end
                    end	
                end)
            end
        end
    end)
    
    Misc:AddToggle("Auto Store",_G.AutoStoreFruit,function(value)
        _G.AutoStoreFruit = value
    end)
    
    Misc:AddToggle("Auto Store Select",_G.AutoStoreFruit2,function(value)
        _G.AutoStoreFruit2 = value
    end)
    
    FruitList = {
        "Barrier Power",
        "Bomb Power",
        "Dark Power",
        "Diamond Power",
        "Dog Power",
        "Dough Power",
        "Flame Power",
        "Floppa Power",
        "Fly Power",
        "Gold Power",
        "Ice Power",
        "Invisible Power",
        "Moai Power",
        "Water Power",
        "Spin Power"
    }
    
    Misc:AddDropdown("Select Fruit",FruitList,function(value)
        _G.Furr = value
    end)
    
    
    spawn(function()
	while wait() do
		if _G.AutoStoreFruit then
			pcall(function()
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if string.find(v.Name, "Power") then
				EquipWeapon(v.Name)
				wait(.1)
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v.Name) then
					game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Eatable_Power",{["Action"] = "Store",["Tool"] = workspace.Character[Delta][v.Name]})
					end
					end
					end
				for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if string.find(v.Name, "Power") then
				EquipWeapon(v.Name)
				wait(.1)
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v.Name) then
					game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Eatable_Power",{["Action"] = "Store",["Tool"] = workspace.Character[Delta][v.Name]})
					end
					end
					end
			end)
		 end
	   end
    end)
    
    spawn(function()
	while wait() do
		if _G.AutoStoreFruit2 then
			pcall(function()
				EquipWeapon(_G.Furr)
				wait(.1)
				game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Modules:FireServer("Eatable_Power",{["Action"] = "Store",["Tool"] = workspace.Character[Delta][_G.Furr]})
			end)
		 end
	   end
    end)
    
    
    Misc:AddToggle("Auto Use Skill Race",false,function(value)
    _G.AutoRaceSkill = value
    end)
    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoRaceSkill then
					if not game:GetService("Players").LocalPlayer.Cooldown:FindFirstChild("RaceSkillCD") then
					    game:GetService("ReplicatedStorage").OtherEvent.SkillEvents.Movement:FireServer("RaceSkill")
					end
				end
			end
		end)
	end)
	
	Misc:AddToggle("Auto Aura",false,function(value)
    _G.AutoAura = value
    end)
    
    
	
	spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoAura then		
					if not workspace.Character[Delta].AuraColor_Folder:FindFirstChild("LeftHand_AuraColor") and game:GetService("Players").LocalPlayer.Ability.Aura.Value == true then
					game:GetService("ReplicatedStorage").OtherEvent.MainEvents.Ability:InvokeServer("Aura")
					end
				end
			end
		end)
	end)
	
	
	Misc:AddToggle("Auto Instinct",false,function(value)
    _G.AutoInstinct = value
    end)
    
	spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoInstinct then
					if not workspace.Character[Delta]:FindFirstChild("Highlight_Player") and game:GetService("Players").LocalPlayer.Ability.Instinct.Value == true then
					wait(.5)
					game:service('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "E", false, game)
					end
				end
			end
		end)
	end)
	
	
	
	
    
	Misc:AddToggle("ESP Player",false,function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdateEspPlayer()
        end
    end)
    
function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdateEspPlayer()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(50,255,255)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	
	
	
	Misc:AddLine()
	
    SKillSet:AddToggle("Skill Z",false,function(value)
        Skillz = value
    end)
    SKillSet:AddToggle("Skill X",false,function(value)
        Skillx = value
    end)
    SKillSet:AddToggle("Skill C",false,function(value)
        Skillc = value
    end)
    SKillSet:AddToggle("Skill V",false,function(value)
        Skillv = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if UseS then          
                    if Skillz then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if Skillx then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if Skillc then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if Skillv then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)




