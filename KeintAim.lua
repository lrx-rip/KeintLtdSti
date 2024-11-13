local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false

_G.AimbotEnabled = true
_G.TeamCheck = true
_G.AimPart = "Head"
_G.Sensitivity = 0

_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleTransparency = 0.7
_G.CircleRadius = 75
_G.CircleFilled = false
_G.CircleVisible = true
_G.CircleThickness = 0 

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness


local function GetPlayerInFOV()
    local Target = nil
    local MousePosition = UserInputService:GetMouseLocation()

    for _, v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
            if not _G.TeamCheck or v.Team ~= LocalPlayer.Team then

                local ScreenPoint = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                local VectorDistance = (Vector2.new(ScreenPoint.X, ScreenPoint.Y) - MousePosition).Magnitude

                if VectorDistance <= _G.CircleRadius then

                    local direction = (v.Character.HumanoidRootPart.Position - Camera.CFrame.Position).Unit
                    local lookVector = Camera.CFrame.LookVector

                    -- Hedef bakış yönünde mi
                    if lookVector:Dot(direction) > 0 then
                        Target = v
                        break
                    end
                end
            end
        end
    end

    return Target
end


UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()

    FOVCircle.Position = UserInputService:GetMouseLocation()

    if Holding and _G.AimbotEnabled then
        local Target = GetPlayerInFOV()
        if Target and Target.Character and Target.Character:FindFirstChild(_G.AimPart) then
            local AimPosition = Target.Character[_G.AimPart].Position
            TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, AimPosition)}):Play()
        end
    end
end)


local aimbotActive = false

local function toggleAimbot()
    aimbotActive = not aimbotActive
    if aimbotActive then
        _G.CircleColor = Color3.fromRGB(0, 255, 0)
        _G.AimbotEnabled = true
    else
        _G.CircleColor = Color3.fromRGB(255, 0, 0)
        _G.AimbotEnabled = false
    end
    FOVCircle.Color = _G.CircleColor
end

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V then
        toggleAimbot()
    end
end)


UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.P then
        _G.AimbotEnabled = false
        FOVCircle.Color = Color3.fromRGB(255, 0, 0)
        FOVCircle.Visible = false
    end
end)
