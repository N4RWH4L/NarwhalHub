local function Notify(txt)
    local NotiUI = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Noti = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Ok = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local Text = Instance.new("TextLabel")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")

    NotiUI.Name = "NotiUI"
    NotiUI.Parent = game.CoreGui
    NotiUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = NotiUI
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.Position = UDim2.new(0.780092597, 0, 0.0257985257, 0)
    Main.Size = UDim2.new(0.170856804, 0, 0.949631393, 0)

    Noti.Name = "Noti"
    Noti.Parent = Main
    Noti.AnchorPoint = Vector2.new(0.5, 0.5)
    Noti.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Noti.BorderSizePixel = 0
    Noti.ClipsDescendants = true
    Noti.Position = UDim2.new(2, 0, 0.947000027, 0)
    Noti.Size = UDim2.new(1, 0, 0.104786538, 0)
    Noti.ZIndex = 999999999

    UICorner.CornerRadius = UDim.new(0, 2)
    UICorner.Parent = Noti

    Ok.Name = "Ok"
    Ok.Parent = Noti
    Ok.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Ok.BorderSizePixel = 0
    Ok.Position = UDim2.new(0.0357142873, 0, 0.641975284, 0)
    Ok.Size = UDim2.new(0.924603105, 0, 0.271604925, 0)
    Ok.ZIndex = 999999999
    Ok.AutoButtonColor = false
    Ok.Font = Enum.Font.Gotham
    Ok.Text = "Ok"
    Ok.TextColor3 = Color3.fromRGB(255, 255, 255)
    Ok.TextScaled = true
    Ok.TextSize = 14.000
    Ok.TextWrapped = true

    UICorner_2.CornerRadius = UDim.new(0, 2)
    UICorner_2.Parent = Ok

    UIAspectRatioConstraint.Parent = Ok
    UIAspectRatioConstraint.AspectRatio = 10.591

    Text.Name = "Text"
    Text.Parent = Noti
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.Position = UDim2.new(0.0357142873, 0, 0.0987654328, 0)
    Text.Size = UDim2.new(0.924603105, 0, 0.493827134, 0)
    Text.ZIndex = 999999999
    Text.Font = Enum.Font.Gotham
    Text.Text = txt
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextSize = 20.000

    UIAspectRatioConstraint_2.Parent = Text
    UIAspectRatioConstraint_2.AspectRatio = 5.825

    UIAspectRatioConstraint_3.Parent = Noti
    UIAspectRatioConstraint_3.AspectRatio = 3.111

    UIAspectRatioConstraint_4.Parent = Main
    UIAspectRatioConstraint_4.AspectRatio = 0.326

    local function AKEVO_fake_script() -- Ok.LocalScript 
        local script = Instance.new('LocalScript', Ok)

        script.Parent.MouseButton1Click:Connect(function()
            game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(255, 65, 65)}):Play()
            wait(.4)
            game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
            wait(.2)
            script.Parent.Parent.Parent.Noti:TweenSize(UDim2.new(0, 0, 0.105, 0), "InOut", "Bounce", .2, false)
            wait(.3)
            script.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(AKEVO_fake_script)()
    local function LSKUNP_fake_script() -- Text.LocalScript 
        local script = Instance.new('LocalScript', Text)

        if script.Parent.Text:len() > 23 then
            script.Parent.TextScaled = true
        end
    end
    coroutine.wrap(LSKUNP_fake_script)()
    local function IHJZO_fake_script() -- Noti.LocalScript 
        local script = Instance.new('LocalScript', Noti)

        wait(1)
        script.Parent:TweenPosition(UDim2.new(0.5, 0,0.947, 0), "InOut", "Sine", 1, false)
        wait(2)
        wait(5)
        script.Parent:TweenPosition(UDim2.new(2, 0,0.947, 0), "InOut", "Sine", 5, false)
        wait(.5)
        script.Parent:Destroy()
    end
    coroutine.wrap(IHJZO_fake_script)()

end

return Notify