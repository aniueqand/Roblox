
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/aniueqand/Roblox/main/UiLib.lua"))()
    getgenv().Status = "https://discord.io/aniueqand/hub/psx"

    local gui = Library:create{
        Theme = Library.Themes.Serika
    }
    
    
    local select = gui:tab{
        Name = "Auto Farm"
    }
    local function ls(link) 
loadstring(game:HttpGet(link))()
end
    select:button({
                            Name = "Select",
                            Callback = function()
                       
 select:prompt{
                                                    Title = "Select",
                                                    Text = "Select Psx Script",
                                                    Buttons = {Teleport = function() ls("https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/psxTeleport.lua")  end,StatWebhook = function() ls("https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/psxWebhookStats.lua") end},}
                            end})
    
   
