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
_G.Sensitivity = 0.1 -- Hedefe daha pürüzsüz geçiş için hassasiyeti artırabilirsiniz

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
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil
	local ClosestMagnitude = math.huge -- En yakın hedefi bulmak için kullanacağız

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
			if not _G.TeamCheck or v.Team ~= LocalPlayer.Team then
				local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)

				if OnScreen then
					local Distance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
					local CharacterPosition = v.Character[_G.AimPart].Position
					local RayParams = RaycastParams.new()
					RayParams.FilterType = Enum.RaycastFilterType.Blacklist
					RayParams.FilterDescendantsInstances = {LocalPlayer.Character} -- Kendi karakterimizi filtreliyoruz

					-- Hedef oyuncuya doğru bir ray atıp önündeki engelleri kontrol ediyoruz
					local RayResult = workspace:Raycast(Camera.CFrame.Position, (CharacterPosition - Camera.CFrame.Position).Unit * 500, RayParams)

					if RayResult and RayResult.Instance:IsDescendantOf(v.Character) and Distance < MaximumDistance and Distance < ClosestMagnitude then
						Target = v
						ClosestMagnitude = Distance
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
	FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
	FOVCircle.Radius = _G.CircleRadius
	FOVCircle.Filled = _G.CircleFilled
	FOVCircle.Color = _G.CircleColor
	FOVCircle.Visible = _G.CircleVisible
	FOVCircle.Transparency = _G.CircleTransparency
	FOVCircle.NumSides = _G.CircleSides
	FOVCircle.Thickness = _G.CircleThickness

	if Holding and _G.AimbotEnabled then
		local Target = GetClosestPlayer()
		if Target and Target.Character and Target.Character:FindFirstChild(_G.AimPart) then
			local AimPosition = Target.Character[_G.AimPart].Position
			local Tween = TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, AimPosition)})
			Tween:Play()
		end
	end
end)
