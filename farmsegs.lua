local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/Notification%20Ui"))()
local awakenNotification = library:CreateWindow()
local clonef = clonefunction
local cwrap = clonef(coroutine.wrap)
local Player = game:GetService("Players")
local LocalPlayer = Player.LocalPlayer
local PlayerName = LocalPlayer.Name
local vim = game:service("VirtualInputManager")

local TycoonName
local cango


for _, tycoon in pairs(game:GetService("Workspace").Tycoon.Tycoons:GetChildren()) do
    if tycoon:FindFirstChild("Owner") and tostring(tycoon.Owner.Value) == PlayerName then
        TycoonName = tycoon.Name
        warn('// Found player tycoon! '.. TycoonName)
        break
    end
end


local PlayerTycoon = game:GetService("Workspace").Tycoon.Tycoons[TycoonName]
if not PlayerTycoon then
    warn("// Failed to find player tycoon. Make sure you're loaded in and have a tycoon!")
    awakenNotification:CreateNotification(
        'Error:',
        "Failed to find player tycoon. Make sure you're loaded in and have a tycoon!",
        14404156927,
        4
    )
    return
end


getgenv().ButtonPressAmmount = 1
getgenv().WaitBeforeCollect = 0
getgenv().WaitAfterCollect = 0.6
getgenv().IgnoreRebirthButtons = false


local partsToIgnore = {
    "Auto Collect Gamepass",
    "Remington ACR Giver",
    "A-10 Air Strike Giver",
    "Boxer CRV",
    "LAV-AD",
    "Gunship",
    "M1117 Guardian",
    "Pantsir S1",
    "M142 HIMARS",
    "Lazar 3 APC",
    "Patriot AA",
    "BMPT Terminator",
    "T-72",
    "MAUS",
    "M3 Bradley",
    "ADATS",
    "T-90",
    "M1 Abrams",
    "T-14 Armata",
    "PL-01",
    "Leopard 2A7",
    "KF-51 Panther",
    "LOSAT",
    "M1903 Springfield Giver",
    "Vietnam Armor",
    "Vietnam Clothing",
    "M1918 BAR Giver",
    "M14 Rifle Giver",
    "M35 Truck",
    "KSG 12 Giver",
    "PP19 Bizon Giver",
    "Destroyer Drone",
    "Suitcase Drone Giver",
    "RC Car Bomb Giver",
    "Easteregg Vehicle",
    "UH-60 Black Hawk",
    "Super Stallion",
    "AH-64 Apache",
    "KA-52 Alligator",
    "Eurocopter Tiger",
    "Invictus",
    "AH-1Z Viper",
    "Raider X",
    "Ju 87 Stuka",
    "B-29 Superfortress",
    "MiG-29 Fulcrum",
    "F-4 Phantom",
    "F-14 Tomcat",
    "F-16 Falcon",
    "F-18 Hornet",
    "Eurofighter Typhoon",
    "A-10 Warthog",
    "USS Douglas",
    "Pr. 206",
    "PG-02",
    "Fairmile",
    "GTE Shirt",
    "AWP Giver",
    "2x Cash Gamepass",
    "Speedy Oil Extractor",
    "MP7 Giver",
    "USP 45 Giver",
    "AK12 Giver",
    "Saiga-12k Giver",
    "2x Health Armor",
    "Explosive Sniper Giver",
    "FAL Heavy Giver",
    "Desert Eagle Giver",
    "10k Shield Health Gamepass",
    "Speedy Humvee",
    "BTR-80",
    "VCAC Mephisto",
    "Javelin Giver",
    "Barrett M82",
    "JLTV",
    "Mi28 Havoc",
    "Helicopter Storage Research Upgrade",
    "WW2 US Army Pack",
}

local RebirthButtons = {
    "Trading Hub [1 Rebirth]",
    "Unlock Bunker and Missile Silo [2 Rebirth]",
    "WW2 [4 Rebirths]",
    "Missile Silo Start",
    "Vehicle Bay [1 Rebirth]",
    "Tank Unlock Rebirth 6",
    "Vietnam Unlock Rebirth 4",
    "Boats [3 Rebirths]",
    "Drone [5 Rebirths]",
    "Helicopters [3 Rebirths]",
    "Planes [7 Rebirths]",
    "Swag Badge",
    "Easter Egg [10 Rebirths]",
}


local function  CrateFarm()
    local easterthing = game:GetService("Workspace")["Game Systems"]["Crate Workspace"]

    local function isPlayerCloseToPosition(position, distance)
        local player = game.Players.LocalPlayer
        if player and player.Character then
            local playerPosition = player.Character.HumanoidRootPart.Position
            local distanceToPosition = (position - playerPosition).magnitude
            return distanceToPosition <= distance
        end
        return false
    end

    local function moveToNextCrate()
    end

    if easterthing then
        for i, v in ipairs(easterthing:GetChildren()) do
            if #v:GetChildren() > 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                if v:FindFirstChild("StealPrompt") then
                end
                task.wait(.25)

                if isPlayerCloseToPosition(v.CFrame.Position, 50) then
                    moveToNextCrate()
                end
                task.wait(.25)
            end
        end
    end
end


local function CaptirePoint()
    for _, tycoon in pairs(game:GetService("Workspace").Tycoon.Tycoons:GetChildren()) do
        if tycoon:FindFirstChild("Owner") and tostring(tycoon.Owner.Value) == PlayerName then
            TycoonName = tycoon.Name
            warn('// Found player tycoon! '.. TycoonName)
            break
        end
    end

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-3.06392288, 75.586441, 399.406158)
    task.wait(.5)


    if game:GetService("Workspace")["Game Systems"].CapturePoint["Captured Team"].Value ~= TycoonName then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Game Systems"].CapturePoint.Flag.CubeFlag.CFrame
    end
    while game:GetService("Workspace")["Game Systems"].CapturePoint["Captured Team"].Value == TycoonName do
        local PlayerName = game.Players.LocalPlayer.Name
        for _, tycoon in pairs(game:GetService("Workspace").Tycoon.Tycoons:GetChildren()) do
            if tycoon:FindFirstChild("Owner") and tostring(tycoon.Owner.Value) == PlayerName then
                if tycoon:FindFirstChild("Floor") then
                    local targetCFrame = tycoon.Floor.BaseCheckMax.CFrame
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(targetCFrame)
                    warn('// Teleporting Plr '..tycoon.Name)

                end
                break
            end
        end
    end
end

local collectorPosition = PlayerTycoon.Essentials["Oil Collector"].Collector.Display.Part.CFrame.Position
local success, part = pcall(function()
    return PlayerTycoon.Essentials["Oil Collector"].Collector.Display.Part
end)

if success and part then
    collectorPosition = part.CFrame.Position
else
    warn("Oil Collector part not found.")
end

local function moveAndSend(cframe, key)
    LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
    task.wait(1.5)
    repeat LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
        LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
        wait(0.1)
    until (LocalPlayer.Character.HumanoidRootPart.Position - collectorPosition).Magnitude <= 1 or 50 or 20 or 10
    vim:SendKeyEvent(true, key, false, game)
    task.wait(1.5)
    vim:SendKeyEvent(false, key, false, game)
    task.wait(5)
end 

local actions = {
    {CFrame.new(69.41250610351562, 105.25658416748047, 3436.249267578125), 'E'},
    {CFrame.new(collectorPosition), 'E'},
    {CFrame.new(78.37213134765625, 105.25657653808594, -2062.473876953125), 'E'},
    {CFrame.new(collectorPosition), 'E'},
    {CFrame.new(-27.435659408569336, 49.34040069580078, -418.55621337890625), 'E'},
    {CFrame.new(collectorPosition), 'E'},
    {CFrame.new(-14.359360694885254, 49.34040069580078, 700.2596435546875), 'E'},
    {CFrame.new(collectorPosition), 'E'},
}

local loop = cwrap(function()  
    getgenv().okbro = true
    while getgenv().okbro do task.wait()
        for i, gamepassName in pairs(partsToIgnore) do
            local gamepass = PlayerTycoon.UnpurchasedButtons:FindFirstChild(gamepassName)
            if gamepass then
                gamepass:Destroy()
            end
        end
    end
end)
task.spawn(loop)

warn("// Functions Loaded!")

----------------𝐒𝐜𝐫𝐢𝐩𝐭 𝐈𝐧𝐬𝐢𝐝𝐞𝐬-----------------------------
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "WT",
    SubTitle = "Keyint GNG",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark"
})

local Tabs = {
    Farm = Window:AddTab({ Title = "Farm", Icon = 'dollar-sign' }),
    FarmConfig = Window:AddTab({ Title = "FarmConfig", Icon = 'file-cog'}),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options
do

---------------------------FARM TAB---------------------------------------
local antiafk = Tabs.Farm:AddToggle("antiafk", {Title = "Anti-Afk", Default = false })
antiafk:OnChanged(function(value)
    getgenv().antiafk = value
    while getgenv().antiafk do task.wait()
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(710,534,0))
    end
end)

local AutoPlay = Tabs.Farm:AddToggle("AutoPlay", {Title = "Auto-Play", Default = false })
AutoPlay:OnChanged(function(value)
    getgenv().AutoPlay = value
    if value then
        getgenv().autoCollect = false
    end
    while getgenv().AutoPlay do task.wait()
        if PlayerTycoon.CurrencyToCollect.Value == 0 then
            cango = false
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(PlayerTycoon.PurchasedObjects:FindFirstChild("Oil 1").PromptDisplay.CFrame.Position)
            task.wait(0.5)
            vim:SendKeyEvent(true, 'E', false, game)
            task.wait(0.5)
            vim:SendKeyEvent(false, 'E', false, game)
            task.wait(3)
        elseif PlayerTycoon.CurrencyToCollect.Value >= 0 then
            warn("[Debug]: User has more than 0 cash")
            cango = true
        end
        if cango == true then
            task.wait(tonumber(getgenv().WaitBeforeCollect))
            for i = 1, tonumber(getgenv().ButtonPressAmmount) do
                task.wait(0.3) -- Her buton arasında 0.3 saniye bekleme
                local partsToTeleportTo = {}
                for _, model in pairs(PlayerTycoon.UnpurchasedButtons:GetChildren()) do
                    if model:IsA("Model") then
                        for _, part in pairs(model:GetChildren()) do
                            if part.Name == "Part" then
                                local ignore = false
                                for _, name in pairs(partsToIgnore) do
                                    if part.Parent.Name == name then
                                        ignore = true
                                    elseif getgenv().IgnoreRebirthButtons then
                                        for _, name in pairs(RebirthButtons) do
                                            if part.Parent.Name == name then
                                                ignore = true
                                                break
                                            end
                                        end
                                    end
                                end
                                if not ignore then
                                    table.insert(partsToTeleportTo, part)
                                end
                            end
                        end
                    end
                end
                if #partsToTeleportTo > 0 then
                    local randomPart = partsToTeleportTo[math.random(1, #partsToTeleportTo)]
                    local newPosition = randomPart.CFrame.Position
                    newPosition = newPosition + Vector3.new(0, 5, 0)
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(newPosition)
                end
            end
            task.wait(tonumber(getgenv().WaitAfterCollect))
        end
    end
end)

local autobarrel = Tabs.Farm:AddToggle("autobarrel", {Title = "[out of tycoon]: Auto Barrel -- possibly banable", Default = false })
autobarrel:OnChanged(function(value)
    getgenv().AutoBarrel = value
    while getgenv().AutoBarrel do task.wait()
        for _, action in ipairs(actions) do 
            task.wait(3)
            moveAndSend(action[1], action[2])
        end
    end
end)
local autoRebirth = Tabs.Farm:AddToggle("autoRebirth", {Title = "Auto Rebirth", Default = false })
autoRebirth:OnChanged(function(value)
    getgenv().AutoRebirth = value
    while getgenv().AutoRebirth do task.wait(1)
        game:GetService("ReplicatedStorage"):WaitForChild("RebirthEVT"):FireServer()
        
    end
end)

local autoCollect = Tabs.Farm:AddToggle("autoCollect", {Title = "Auto Collect", Default = false })
autoCollect:OnChanged(function(value)
    getgenv().autoCollect = value
    if value then
        getgenv().AutoPlay = false
    end
    while getgenv().autoCollect do task.wait(1)
        local CashCollectorPart = PlayerTycoon.Essentials.CashCollector.CFrame.Position
        local CashCollectorPart2 = PlayerTycoon.Essentials.CashCollector2.CFrame.Position
        CashCollectorPart = CashCollectorPart + Vector3.new(0, 5, 0)
        if PlayerTycoon.PurchasedObjects:FindFirstChild("Oil Drill 1") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CashCollectorPart)
            task.wait(0.5)
            CashCollectorPart2 = CashCollectorPart2 + Vector3.new(0, 5, 0)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CashCollectorPart2)
        else
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(CashCollectorPart)
        end
    end
end)

Tabs.Farm:AddButton({
    Title = "Cap-Point",
    Description = "can be reported by player",
    Callback = function()
        CaptirePoint()

    end
})
Tabs.Farm:AddButton({
    Title = "Tp to crate",
    Description = "can be reported by player",
    Callback = function()
        CrateFarm()

    end
})
Tabs.Farm:AddButton({
    Title = "Tp to Resarch Hangar",
    Description = "can be reported by player",
    Callback = function()
        local plrhangar = game:GetService("Workspace").Tycoon.Tycoons.Charlie.PurchasedObjects["Helicopter Hull Research"].ResearchCollision.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plrhangar
    end
})

---------------------------FARM CONFIG TAB---------------------------------------
local IgnoreRebirthButtons = Tabs.FarmConfig:AddToggle("IgnoreRebirthButtons", {Title = "Ignore RebirthButtons", Default = false })
IgnoreRebirthButtons:OnChanged(function(value)
    getgenv().IgnoreRebirthButtons = value
end)
local WaitAfterCollect = Tabs.FarmConfig:AddInput("WaitAfterCollect", {
    Title = "Wait After AutoCollect",
    Default =  getgenv().WaitAfterCollect,
    Placeholder = "1 or 2 or 3",
    Numeric = true, 
    Finished = true,
    Callback = function(Value)
      getgenv().WaitAfterCollect = Value
    end
})
WaitAfterCollect:OnChanged(function()
    Fluent:Notify({
        Title = "lereiks",
        Content = "Button Press Ammount: "..WaitAfterCollect.Value,
        Duration = 5
    })
end)
local WaitBeforeCollect = Tabs.FarmConfig:AddInput("WaitBeforeCollect", {
    Title = "Wait Before AutoCollect",
    Default = getgenv().WaitBeforeCollect,
    Placeholder = "1 or 2 or 3",
    Numeric = true, 
    Finished = true,
    Callback = function(Value)
        getgenv().WaitBeforeCollect = Value
    end
})
WaitBeforeCollect:OnChanged(function()
    Fluent:Notify({
        Title = "lereiks",
        Content = "Wait Before AutoCollect: "..WaitBeforeCollect.Value,
        Duration = 5
    })
end)
local ButtonPressAmmount = Tabs.FarmConfig:AddInput("ButtonPressAmmount", {
    Title = "How many buttons pressed?",
    Default = getgenv().ButtonPressAmmount,
    Placeholder = "1 or 2 or 3",
    Numeric = true, 
    Finished = true,
    Callback = function(Value)
        getgenv().ButtonPressAmmount = Value
    end
})
ButtonPressAmmount:OnChanged(function()
    Fluent:Notify({
        Title = "lereiks",
        Content = "How many buttons pressed?: "..ButtonPressAmmount.Value,
        Duration = 5
    })
end)
end
SaveManager:SetLibrary(Fluent)InterfaceManager:SetLibrary(Fluent)SaveManager:IgnoreThemeSettings()SaveManager:SetIgnoreIndexes({})InterfaceManager:SetFolder("lereiks")SaveManager:SetFolder("lereiks/WarTycoon")InterfaceManager:BuildInterfaceSection(Tabs.Settings)SaveManager:BuildConfigSection(Tabs.Settings)Window:SelectTab(1)SaveManager:LoadAutoloadConfig()
warn("// script Loaded!")
