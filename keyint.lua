local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/main/KeintMain.lua"))()

local Main = library:CreateWindow("KEINT GNG [LrX & HakoKeint]","Crimson")

local tab = Main:CreateTab("AimSegs")

local tab3 = Main:CreateTab("Oyuncu")
local tab4 = Main:CreateTab("Tehlikeli Mekan")

local tab5 = Main:CreateTab("Sekstralar")

tab:CreateButton("AimBot",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/main/KeintAim.lua"))()
end)

tab:CreateButton("Hitsegs",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/AimKeint.lua"))()
end)

tab3:CreateSlider("Hız",16,555,function(a)
    game:GetService("RunService").RenderStepped:wait(0)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
end)

tab3:CreateButton("Rejoin",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/rejoin.lua"))()
end)

tab4:CreateButton("HagoGeyint☠️",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/main/KeintGodMode.lua"))()
end)

tab4:CreateButton("☠️ 4380 ☠️",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/rpgkeyint.lua"))()
end)

tab5:CreateButton("ESP",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lrx-rip/KeintLtdSti/refs/heads/main/KeyintESP.lua"))()
end)

tab:Show()
