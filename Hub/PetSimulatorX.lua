if getgenv().aniueqand.HubLoaded == true then
--//-----------[F]-----------\\--
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local S_T = game:GetService("TeleportService")
local S_H = game:GetService("HttpService")

local File = pcall(function()
	AllIDs = S_H:JSONDecode(readfile("[TEMP]server-hop.json"))
end)
if not File then
	table.insert(AllIDs, actualHour)
	pcall(function()
		writefile("[TEMP]server-hop.json", S_H:JSONEncode(AllIDs))
	end)

end
local function TPReturner(placeId)
	local Site;
	if foundAnything == "" then
		Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100'))
	else
		Site = S_H:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
	end
	local ID = ""
	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
		foundAnything = Site.nextPageCursor
	end
	local num = 0;
	for i,v in pairs(Site.data) do
		local Possible = true
		ID = tostring(v.id)
		if tonumber(v.maxPlayers) > tonumber(v.playing) then
			for _,Existing in pairs(AllIDs) do
				if num ~= 0 then
					if ID == tostring(Existing) then
						Possible = false
					end
				else
					if tonumber(actualHour) ~= tonumber(Existing) then
						local delFile = pcall(function()
							delfile("[TEMP]server-hop.json")
							AllIDs = {}
							table.insert(AllIDs, actualHour)
						end)
					end
				end
				num = num + 1
			end
			if Possible == true then
				table.insert(AllIDs, ID)
				wait()
				pcall(function()
					writefile("[TEMP]server-hop.json", S_H:JSONEncode(AllIDs))
					wait()
					S_T:TeleportToPlaceInstance(placeId, ID, game.Players.LocalPlayer)
				end)
				wait(4)
			end
		end
	end
end
local module = {}
function module:Teleport(placeId)
	while wait() do
		pcall(function()
			TPReturner(placeId)
			if foundAnything ~= "" then
				TPReturner(placeId)
			end
		end)
	end
end
--//-----------[F]-----------\\--


function edaOc()
	spawn(function()
		while getgenv().aniueqand.psx.enabled == true do
	
			
			getgenv().rankAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
			wait(0.7)
			
			
			getgenv().diamondAniueqand =game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
			wait(0.7)
			
			
			getgenv().coinAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text
			wait(0.7)
			
			if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Fantasy Coins") then
			
			 getgenv().fantasyAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Fantasy Coins"].Amount.Text
			 wait(0.7)
			else
				getgenv().fantasyAniueqand = "Open Fantasy World First"  
			end
			if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Tech Coins") then
			
				 getgenv().techAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Tech Coins"].Amount.Text
				 wait(0.7)
			else
				getgenv().techAniueqand = "Open Tech World First"
			end
			
				if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Rainbow Coins") then
					 getgenv().rainbowAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Rainbow Coins"].Amount.Text
					 wait(0.7)
				else
					getgenv().rainbowAniueqand = "Open The Void First"
				end
	local data = {
	["description"]= "Omg Aniueqand Script";["embeds"] = {{["title"] = "```Pet Simulator Stat Tracker```";["fields"] = {{["name"] = "Rank",["value"] = "``` "..getgenv().rankAniueqand.."```",["inline"] = false},{["name"] = "Diamonds",["value"] = "``` "..getgenv().diamondAniueqand.."```",["inline"] = false},
		   {
			["name"] = "Rainbow Coins",
			["value"] = "``` "..getgenv().rainbowAniueqand.."```",
			["inline"] = false
		},
		   
		   {
			["name"] = "Tech Coins",
			["value"] = "``` "..getgenv().techAniueqand.."```",
			["inline"] = false
		},
		   {
			   ["name"] = "Fantasy Coins",
			   ["value"] = "``` "..getgenv().fantasyAniueqand.."```",
			   ["inline"] = false
		   },{["name"] = "Coins",["value"] = "``` "..getgenv().coinAniueqand.."```",["inline"] = false},{["name"] = "Date",["value"] = "``` "..os.date().."```",["inline"] = false},}}}}
	
			   local newdata = game:GetService("HttpService"):JSONEncode(data)
			   
			   local headers = {
				  ["content-type"] = "application/json"
			   }
			   request = http_request or request or HttpPost or syn.request
			   local abcdef = {Url = getgenv().aniueqand.psx.webhookurl, Body = newdata, Method = "POST", Headers = headers}
			   request(abcdef)
	wait(getgenv().aniueqand.psx.cooldown)
			  end
	  end)
	end
	
				  
		   
	
	  function edaOcOnce()
		spawn(function()
			
	getgenv().rankAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
	wait(0.7)
	
	
	getgenv().diamondAniueqand =game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
	wait(0.7)
	
	
	getgenv().coinAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text
	wait(0.7)
	
	if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Fantasy Coins") then
	
	 getgenv().fantasyAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Fantasy Coins"].Amount.Text
	 wait(0.7)
	else
		getgenv().fantasyAniueqand = "Open Fantasy World First"  
	end
	if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Tech Coins") then
	
		 getgenv().techAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Tech Coins"].Amount.Text
		 wait(0.7)
	else
		getgenv().techAniueqand = "Open Tech World First"
	end
	
		if game.Players.LocalPlayer.PlayerGui.Main.Right:FindFirstChild("Rainbow Coins") then
			 getgenv().rainbowAniueqand = game.Players.LocalPlayer.PlayerGui.Main.Right["Rainbow Coins"].Amount.Text
			 wait(0.7)
		else
			getgenv().rainbowAniueqand = "Open The Void First"
		end
	 local data = {
				["description"]= "Omg Aniueqand Script";["embeds"] = {{["title"] = "```Pet Simulator Stat Tracker```";["fields"] = {{["name"] = "Rank",["value"] = "``` "..getgenv().rankAniueqand.."```",["inline"] = false},{["name"] = "Diamonds",["value"] = "``` "..getgenv().diamondAniueqand.."```",["inline"] = false},
							   {
								["name"] = "Rainbow Coins",
								["value"] = "``` "..getgenv().rainbowAniueqand.."```",
								["inline"] = false
							},
							   
							   {
								["name"] = "Tech Coins",
								["value"] = "``` "..getgenv().techAniueqand.."```",
								["inline"] = false
							},
							   {
								   ["name"] = "Fantasy Coins",
								   ["value"] = "``` "..getgenv().fantasyAniueqand.."```",
								   ["inline"] = false
							   },{["name"] = "Coins",["value"] = "``` "..getgenv().coinAniueqand.."```",["inline"] = false},{["name"] = "Date",["value"] = "``` "..os.date().."```",["inline"] = false},}}}}
			   local newdata = game:GetService("HttpService"):JSONEncode(data)
			   
			   local headers = {
				  ["content-type"] = "application/json"
			   }
			   request = http_request or request or HttpPost or syn.request
			   local abcdef = {Url = getgenv().aniueqand.psx.webhookurl, Body = newdata, Method = "POST", Headers = headers}
			   request(abcdef)
	
		end)
	  end
	
	--[[--brainlessmoonsex--]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/aniueqand/Roblox/main/UiLib.lua"))()
getgenv().Status = "https://discord.io/aniueqand/hub/psx"

local gui = Library:create{
	Theme = Library.Themes.Serika
}

local misc = gui:tab{
	Icon = "http://www.roblox.com/asset/?id=6867518941",
	Name = "Misc"
}


local teleport = gui:tab{
	Icon = "http://www.roblox.com/asset/?id=8674050345",
	Name = "Teleport"
}
local save = gui:tab{
	Icon = "http://www.roblox.com/asset/?id=10849106998",
	Name = "Save-Load"
  }  
 local info = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=6968337525",
        Name = "Info"
    }


getgenv().aniueqand.psx = {
	webhookurl = "hugegamass",
	cooldown = 300,
	enabled = false,
	autoLoadSettings = false
}
if isfile("aniueqand/PsxSetting.UrMomIsGay") then
    getgenv().aniueqand.psx = game:GetService("HttpService"):JSONDecode(readfile("aniueqand/PsxSetting.UrMomIsGay"))
    end
    if getgenv().aniueqand.psx.autoLoadSettings == true then
    
    getgenv().aniueqand.psx = game:GetService("HttpService"):JSONDecode(readfile("aniueqand/PsxSetting.UrMomIsGay"))
	misc:prompt{Title = "Success!",Text = "Successfully Loaded Settings!",Buttons = {Ok = function()end,}}
    else
    getgenv().aniueqand.psx = {
        webhookurl = "hugegamass",
	cooldown = 300,
	enabled = false,
	autoLoadSettings = false
                                }
    end



misc:textbox({
	Name = "Webhook Url",
		Placeholder = "Enter Webhook Url",
	Callback = function(lmao)
	
		if string.find(lmao, "https://discord.com/api/webhooks/") then
getgenv().aniueqand.psx.webhookurl = lmao
misc:prompt{Title = "Success!",Text = "Added On To Table!",Buttons = {Ok = function()end,}}
		else
			misc:prompt{Title = "Error",Text = "Enter Webhook Url!",Buttons = {Ok = function()end,}}
		end

	end})

	misc:toggle({
        
		Name = "Open Stat Tracker",
		StartingState = getgenv().aniueqand.psx.enabled,
		Callback = function(EnabledgAY)
	if getgenv().aniueqand.psx.webhookurl ~= "hugegamass" then		
			edaOc()
			getgenv().aniueqand.psx.enabled = EnabledgAY
	else
		misc:prompt{Title = "Error!",Text = "Enter Webhook Url",Buttons = {Ok = function()end,}}
	end end})
misc:textbox({
	Name = "CoolDown",
	Description = "ONLY NUMBER!!",
		Placeholder = "Enter CoolDown Here!",
	Callback = function(ballamo)
		getgenv().aniueqand.psx.cooldown = tonumber(ballamo)

end})


	misc:button({
		Name = "Open Once",
		Callback = function()
			if getgenv().aniueqand.psx.webhookurl ~= "hugegamass" then
				edaOcOnce()
			misc:prompt{Title = "Success!",Text = "Wait For It!",Buttons = {Ok = function()end,}}
			else
				misc:prompt{Title = "Error!",Text = "Enter Webhook Url!",Buttons = {Ok = function()end,}}
			end
		end})
Players = game:GetService("Players")
teleport:dropdown({
	Name = "Select Teleport Place",
	Items = {
	   
		{"Pet Simulator X", 6284583030},
		{"Psx - Hardcore", 10321372166},
		{"Psx - Trading Plaza", 7722306047},
	
	},
	Callback = function(ballsmoney)
		getgenv().aniueqand.psx.TeleportId = ballsmoney
	end,
})

function teleportAmugus(id)
	game:GetService('TeleportService'):Teleport(id, game:GetService('Players').LocalPlayer)
end
teleport:button({
	Name = "Teleport Normal Server",
	Callback = function()
		if getgenv().aniueqand.psx.TeleportId ~= "" then
		teleportAmugus(getgenv().aniueqand.psx.TeleportId)
		teleport:prompt{Title = "Teleporting Normal Server",Text = "Wait For It!",Buttons = {Ok = function()end,}}
        else
			teleport:prompt{Title = "Error!",Text = "Select Teleport Place!",Buttons = {Ok = function()end,}}
		end
	end})
teleport:button({
	Name = "Teleport Low Player Server",
	Callback = function()
		if getgenv().aniueqand.psx.TeleportId ~= "" then
		module:Teleport(getgenv().aniueqand.psx.TeleportId)
		teleport:prompt{Title = "Teleporting Low Player Server",Text = "Wait For It!",Buttons = {Ok = function()end,}}
	else
		teleport:prompt{Title = "Error!",Text = "Select Teleport Place!",Buttons = {Ok = function()end,}}
	end
end})



local saveFileName = "aniueqand/PsxSetting.UrMomIsGay"
local HttpService = game:GetService("HttpService")
function controlAniueqand()
if not isfolder("aniueqand") then
    makefolder("aniueqand")
end
end
save:toggle({
        
    Name = "Auto Load Settings",
    StartingState = getgenv().aniueqand.psx.autoLoadSettings,
    Callback = function(autoLoad)
        controlAniueqand()
        getgenv().aniueqand.psx.autoLoadSettings = autoLoad
        writefile(saveFileName,game:GetService("HttpService"):JSONEncode(getgenv().aniueqand.psx))
end})
    save:button({
        Name = "Save Settings",
        Description = "Save Your Settings!",
        Callback = function()
            controlAniueqand()
           
            writefile(saveFileName,HttpService:JSONEncode(getgenv().aniueqand.psx))
            save:prompt{
                Title = "Success",
                Text = "Successfully Saved Your Setting",
                Buttons = {Ok = function() end},}
        end})
        save:button({
            Name = "Load Settings",
            Description = "Load Your Settings!",
            Callback = function()
                if isfile(saveFileName) then
                    getgenv().aniueqand.psx = HttpService:JSONDecode(readfile(saveFileName))
                    save:prompt{
                        Title = "Success!",
                        Text = "Successfully Loaded Your Setting!",
                        Buttons = {Ok = function() end},}
                    else
                        save:prompt{
                            Title = "Error!",
                            Text = "I Cant Find Save File",
                            Buttons = {
                            Ok = function() end},}
                    end
            end})
            save:button({
                Name = "Reset Settings",
                Description= "Reset Your Settings",
                Callback = function()
                    getgenv().aniueqand.PsxSetting = {
                        WhileOpen = false,
						webhookurl = "hugegamass",
						cooldown = 300,
						enabled = false,
						autoLoadSettings = false
                                                }
                                                
                                                save:prompt{
                                                    Title = "Success",
                                                    Text = "Successfully Reset Your Setting",
                                                    Buttons = {Ok = function() end},}
                end})
                save:button({
                    Name = "Delete Settings File",
                    Description = "Delete Your Settings File",
                    Callback = function()
                        if isfile(saveFileName) then
                           delfile(saveFileName)
                           save:prompt{
                            Title = "Succes",
                            Text = "Successfully Deleted Settings File",
                            Buttons = {Ok = function() end},}
                            else
                                save:prompt{
                                    Title = "Error!",
                                    Text = "I Cant Find Save File",
                                    Buttons = {Ok = function() end},}
                            end
                    end})




local lol1 = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.lanyard.rest/v1/users/633335695729229824"));local lol2 = game:GetService("HttpService"):JSONEncode(lol1.data);local lol4 = game:GetService("HttpService"):JSONDecode(lol2);local lol3 = game:GetService("HttpService"):JSONEncode(lol4.discord_user)
local lidya = game:GetService("HttpService"):JSONDecode(lol3)

local lo1 = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.lanyard.rest/v1/users/633335695729229824"));local lo2 = game:GetService("HttpService"):JSONEncode(lo1.data);local lo4 = game:GetService("HttpService"):JSONDecode(lo2);local lo3 = game:GetService("HttpService"):JSONEncode(lo4.kv)
local lidy = game:GetService("HttpService"):JSONDecode(lo3)


info:credit{Name = lidya.username.."#"..lidya.discriminator, Description = "UI Maker"}
info:credit{Name = lidya.username.."#"..lidya.discriminator, Description = "Script Maker"}
info:credit{Name = " " ,Description = "Yeah Nobody Helped Me."}
info:button({
	Name = "Copy Discord",
	Description = lidy.discordserver,
	Callback = function()
		setclipboard(tostring(lidy.discordserver))

 
			 info:prompt{
			 Title = "Success",
			 Text = "Copied!",
			 Buttons = {
			 Ok = function() end},}
end})
end
