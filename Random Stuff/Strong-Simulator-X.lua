if game.PlaceId == 8876694280 then
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/ui-libs/main/unnamed_Notify_Library/NotifyLibrary", true))()

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Strong Simulator X")

local b = w:CreateFolder("Auto Rebirt")
local o = w:CreateFolder("Others") 

b:Toggle("Auto Rebirth",function(rebirth)
getgenv().rebirthAniueqand = rebirth
 doRebirth() 
end)

function doRebirth()
 spawn(function()
    while getgenv().rebirthAniueqand == true do
    game:GetService("ReplicatedStorage").Common._packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.DataService.RF.Rebirth:InvokeServer()
    wait()
    end
 end)
end

o:Label("Made by aniueqand",{
    TextSize = 15;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(26,26,26);
    
}) 
o:DestroyGui()
o:Button("Copy Discord",function()
    setclipboard("https://discord.io/aniueqand")
end)
end
