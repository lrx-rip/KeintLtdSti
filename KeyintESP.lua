local ESPenabled = true
local COREGUI = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function getRoot(character)
    return character and character:FindFirstChild("HumanoidRootPart")
end

local function round(num, numDecimalPlaces)
    return math.floor(num * 10^(numDecimalPlaces or 0)) / 10^(numDecimalPlaces or 0)
end

local function ESP(plr)

    task.spawn(function()
        for i, v in pairs(COREGUI:GetChildren()) do
            if v.Name == plr.Name..'_ESP' then
                v:Destroy()
            end
        end
        wait()


        if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') and ESPenabled then
            local ESPholder = Instance.new("Folder")
            ESPholder.Name = plr.Name..'_ESP'
            ESPholder.Parent = COREGUI

            repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")

            for b, n in pairs(plr.Character:GetChildren()) do
                if n:IsA("BasePart") then
                    local a = Instance.new("BoxHandleAdornment")
                    a.Name = plr.Name
                    a.Parent = ESPholder
                    a.Adornee = n
                    a.AlwaysOnTop = true
                    a.ZIndex = 10
                    a.Size = n.Size
                    a.Transparency = 0.5
                    a.Color = plr.TeamColor
                end
            end


            if plr.Character and plr.Character:FindFirstChild('Head') then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Adornee = plr.Character.Head
                BillboardGui.Name = plr.Name
                BillboardGui.Parent = ESPholder
                BillboardGui.Size = UDim2.new(0, 100, 0, 150)
                BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
                BillboardGui.AlwaysOnTop = true
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundTransparency = 1
                TextLabel.Position = UDim2.new(0, 0, 0, -50)
                TextLabel.Size = UDim2.new(0, 100, 0, 100)
                TextLabel.Font = Enum.Font.SourceSansSemibold
                TextLabel.TextSize = 20
                TextLabel.TextColor3 = Color3.new(1, 1, 1)
                TextLabel.TextStrokeTransparency = 0
                TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
                TextLabel.Text = 'Name: '..plr.Name
                TextLabel.ZIndex = 10

                local espLoopFunc
                local teamChange
                local addedFunc
                addedFunc = plr.CharacterAdded:Connect(function()
                    if ESPenabled then
                        espLoopFunc:Disconnect()
                        teamChange:Disconnect()
                        ESPholder:Destroy()
                        repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
                        ESP(plr)
                        addedFunc:Disconnect()
                    else
                        teamChange:Disconnect()
                        addedFunc:Disconnect()
                    end
                end)

                teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
                    if ESPenabled then
                        espLoopFunc:Disconnect()
                        addedFunc:Disconnect()
                        ESPholder:Destroy()
                        repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
                        ESP(plr)
                        teamChange:Disconnect()
                    else
                        teamChange:Disconnect()
                    end
                end)


                local function espLoop()
                    if COREGUI:FindFirstChild(plr.Name..'_ESP') then
                        if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                            local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
                            TextLabel.Text = 'İsim: '..plr.Name..' | Sağlık: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Mesafe: '..pos
                        end
                    else
                        teamChange:Disconnect()
                        addedFunc:Disconnect()
                        espLoopFunc:Disconnect()
                    end
                end
                espLoopFunc = RunService.RenderStepped:Connect(espLoop)
            end
        end
    end)
end


game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.KeypadMultiply then
        ESPenabled = not ESPenabled
        

        if not ESPenabled then
            for i, v in pairs(COREGUI:GetChildren()) do
                if v.Name:find("_ESP") then
                    v:Destroy()
                end
            end
        end
    end
end)


for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= Players.LocalPlayer then
        ESP(plr)
    end
end


Players.PlayerAdded:Connect(function(plr)
    if plr ~= Players.LocalPlayer then
        ESP(plr)
    end
end)


Players.PlayerRemoving:Connect(function(plr)
    if COREGUI:FindFirstChild(plr.Name..'_ESP') then
        COREGUI[plr.Name..'_ESP']:Destroy()
    end
end)
