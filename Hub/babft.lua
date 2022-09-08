
if getgenv().aniueqand.HubLoaded == "Loaded" then
    getgenv().aniueqand.babft = {}
    if isfile("aniueqand/babftSetting.UrMomIsGay") then
    getgenv().aniueqand.babft = game:GetService("HttpService"):JSONDecode(readfile("aniueqand/babftSetting.UrMomIsGay"))
    end
    if getgenv().aniueqand.babft.autoLoadSettings == true then
    
    getgenv().aniueqand.babft = game:GetService("HttpService"):JSONDecode(readfile("aniueqand/babftSetting.UrMomIsGay"))
    else
    getgenv().aniueqand.babft = {
        WhileOpen = false,
        ChestNumber = 1,
        ChestType = "",
        ChestCoolDown = 10,
        InfiniteJumpEnabled = false,
        Gold = false,
        GoldBlock = false,
        antiLag = false,
        TeleportWorld = "",
        autoLoadSettings = false,
        TeleportStage = "",
        antilagcooldown = 60
                                }
    end
                               

       --//-----------------------[Functions]------------------------\\--
    


       function animation() 
        spawn(function()
        
        -- services.
        local game = game;
        local getService = game.GetService;
        
        local workspace = getService(game, 'Workspace');
        local players = getService(game, 'Players');
        
        -- client&indexing.
        local client = players.LocalPlayer;
        local clientGuis = client.PlayerGui;
        
        local destroy = game.Destroy;
        local isA = game.IsA;
        local findFirstChild = game.FindFirstChild;
        local itemGainedScript = findFirstChild(clientGuis.ItemGained, 'LocalScript', true);
        if itemGainedScript then
           destroy(itemGainedScript);
        end;
        
        clientGuis.DescendantAdded:Connect(function(c)
           if c.Name == 'NoChestAnimation' or (isA(c, 'LocalScript') and c.Parent.Name == 'DisplayGainedItem') then
               task.defer(destroy, c);
           end;
        end);
        
        
        end)
        end
        
        function openChest(ChestType,ChestNumber)
        spawn(function()
        
            local args = {
                [1] = ChestType,
                [2] = ChestNumber
            }
        
            workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
            
        end)
        end
        
        function WhileOpenChest(ChestType,ChestNumber,CoolDown)
            spawn(function()
            while getgenv().aniueqand.babft.WhileOpen == true do
                local args = {
                    [1] = ChestType,
                    [2] = ChestNumber
                }
            
            
                workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
                wait(CoolDown)
            end   
            end)
            end
        
                function teleportTo(world)
                    local plyer = game.Players.LocalPlayer;
                    if plyer.Character then
                        plyer.Character.HumanoidRootPart.CFrame = world.CFrame;
                    end
                end
        
        function doJump()
            spawn(function()
                game:GetService("UserInputService").JumpRequest:connect(function()
                       if getgenv().aniueqand.babft.InfiniteJumpEnabled == true then
                           game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                       end
                   end)
            end)
        end
        
        function getGold()
            spawn(function()
                --// Services
        local players = game:GetService("Players")
         
        --// Workspace
        local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
        local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
         
        --// Other
        local client = players.LocalPlayer
         
        --// Main
        ---------
        while getgenv().aniueqand.babft.Gold == true do
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = Vector3.new(0, -4, 0)
            bodyVelocity.Parent = client.Character.HumanoidRootPart
            
            for i = 1, 9 do
                if not client.Character or not client.Character:FindFirstChild("Humanoid") then
                    repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
                end
         
                client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
                
                if not getgenv().aniueqand.babft.Gold == true then
                    client.Character.Humanoid.Health = 0
                    
                end
                
                if i == 1 then
                    wait(4)
                else
                    wait(2)
                end
                
                gold:FireServer()
            end
         
            penguin:FireServer("PenguinCharacter")
            client.Character:Remove()
         
            repeat wait() 
            until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
            
        
        end
            end)
        end
        
        function morphPenguin()
            spawn(function()
        
        local players = game:GetService("Players")
            local penguin = workspace:WaitForChild("ChangeCharacter")
            local client = players.LocalPlayer
            penguin:FireServer("PenguinCharacter")
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    client.Character:Remove()
                    repeat wait() 
                    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
        
            end)
        end
        
        function morphFox()
            spawn(function()
        
        local players = game:GetService("Players")
            local penguin = workspace:WaitForChild("ChangeCharacter")
            local client = players.LocalPlayer
            penguin:FireServer("FoxCharacter")
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    client.Character:Remove()
                    repeat wait() 
                    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
        
            end)
        end
        
        function morphChicken()
            spawn(function()
        
        local players = game:GetService("Players")
            local penguin = workspace:WaitForChild("ChangeCharacter")
            local client = players.LocalPlayer
            penguin:FireServer("ChickenCharacter")
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    client.Character:Remove()
                    repeat wait() 
                    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
        
            end)
        end
        
        
        
        function getGoldBlock()
        spawn(function()
        
        
             
         --// Services
              local players = game:GetService("Players")
               
              --// Workspace
              local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
              local penguin, gold = workspace:WaitForChild("ChangeCharacter"), workspace:WaitForChild("ClaimRiverResultsGold")
               
              --// Other
              local client = players.LocalPlayer
               
              --// Main
              ---------
              
              while getgenv().aniueqand.babft.GoldBlock == true do
                  local bodyVelocity = Instance.new("BodyVelocity")
                  bodyVelocity.Velocity = Vector3.new(0, -4, 0)
                  bodyVelocity.Parent = client.Character.HumanoidRootPart
                  
                  for i = 1, 3 do
                      if not client.Character or not client.Character:FindFirstChild("Humanoid") then
                          repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
                      end
               
                      client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame wait(0.1)
                      if not getgenv().aniueqand.babft.GoldBlock == true then
                          client.Character.Humanoid.Health = 0
                          exit(0)
                      end
                      
                      if i == 1 then
                          wait(4)
                      else
        if i == 3 then
        wait(0.5)
        client.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BoatStages.NormalStages["TheEnd"].GoldenChest.Trigger.CFrame
        wait(15)
        
        else
                          wait(2)
        end
                      end
                  end
               
            
                  
               
                  repeat wait() 
                  until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
                  
              end
        
        
        end)
        end
        
        function antiLagOnce()
           spawn(function()
        
        
        
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
            workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
            workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").FogEnd = 9e9
            settings().Rendering.QualityLevel = 1
        
            
            for i,v in pairs(game:GetDescendants()) do
                if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end
            for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false
                end
            end
            workspace.DescendantAdded:Connect(function(child)
                coroutine.wrap(function()
                    if child:IsA('ForceField') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Sparkles') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Smoke') or child:IsA('Fire') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    end
                end)()
            end)
        
            
        
        end) 
        end
        
        function antiLag(Cooldown)
        spawn(function()
        
        
        
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
            workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
            workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
            workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").FogEnd = 9e9
            settings().Rendering.QualityLevel = 1
        
            
            for i,v in pairs(game:GetDescendants()) do
                if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end
            while getgenv().aniueqand.babft.antiLag == true do
            for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = false
                end
            end
            workspace.DescendantAdded:Connect(function(child)
                coroutine.wrap(function()
                    if child:IsA('ForceField') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Sparkles') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    elseif child:IsA('Smoke') or child:IsA('Fire') then
                        game:GetService('RunService').Heartbeat:Wait()
                        child:Destroy()
                    end
                end)()
            end)
            wait(Cooldown)
            end
        
            
        
        end)
        end

               --//-----------------------[Functions]------------------------\\--

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/aniueqand/Roblox/main/UiLib.lua"))()
    getgenv().Status = "https://discord.io/aniueqand/hub/babft"

    local gui = Library:create{
        Theme = Library.Themes.Serika
    }
    
    
    local Auto = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=6237685867",
        Name = "Auto Farm"
    }
    local misc = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=6867518941",
        Name = "Misc"
    }
    local tele = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=8674050345",
        Name = "Teleport"
    }
    
    local shop = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=7145518443",
        Name = "Shop"
      }  
      local save = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=10849106998",
        Name = "Save-Load"
      }  
    local info = gui:tab{
        Icon = "http://www.roblox.com/asset/?id=6968337525",
        Name = "Info"
    }
    
    
    Auto:dropdown({
        Name = "Select Farm Type",
        Items = {
            {"Gold", "gold"},
            {"Gold Block(May Got Bug)", "goldblock"},
        },
        Callback = function(ballswithgold)
            getgenv().aniueqand.babft.GoldType = ballswithgold
        end,
    })
    
    Auto:toggle({
        
            Name = "Auto Farm",
            StartingState = false,
            Callback = function(AutoQam)
            if getgenv().aniueqand.babft.GoldType ~= "" then
                if getgenv().aniueqand.babft.GoldType == "goldblock" then 
                    getgenv().aniueqand.babft.GoldBlock = AutoQam
                    getGoldBlock()     
                end
            if getgenv().aniueqand.babft.GoldType == "gold" then 
                getgenv().aniueqand.babft.Gold = AutoQam
                getGold()
            end
        else
            Auto:prompt{
                Title = "Error",
                Text = "Select Type Of Farm",
                Buttons = {
                    Ok = function()
                    end
                    },}
    end 
    end})
    
    
    Auto:dropdown({
        Name = "Select How Many Minute to AntiLag",
        Description = "For Loop AntiLag!",
        Items = {
           
            {"1 Minute", 60},
            {"2 Minute", 120},
            {"3 Minute", 180},
            {"4 Minute", 240},
            {"5 Minute", 300},
            {"6 Minute", 360},
            {"7 Minute", 420},
            {"8 Minute", 480},
            {"9 Minute", 540},
            {"10 Minute", 600},
        },
        Callback = function(ballsmoney)
            getgenv().aniueqand.babft.antilagcooldown = ballsmoney
        end,
    })
    
    Auto:button({
        Name = "Open AntiLag Once",
        Callback = function()
            antiLagOnce()
            Auto:prompt{
                Title = "Success",
                Text = "Opened AntiLag!",
                Buttons = {
                    Ok = function()
                    end
                    },}
    end})
    
    Auto:toggle({
        
            Name = "Loop AntiLag",
            StartingState = false,
            Callback = function(AutoaQam)
                getgenv().aniueqand.babft.antiLag = AutoaQam
                if  getgenv().aniueqand.babft.antilagcooldown ~= "" then
    antiLag(getgenv().aniueqand.babft.antilagcooldown)
                else
                    Auto:prompt{
                        Title = "Error",
                        Text = "Select How Many Seconds to Open AntiLag",
                        Buttons = {
                            Ok = function()
                            end
                            },}
                end
    end})
    
    misc:slider({
        Name = "WalkSpeed",
        Default = 16,
    Min = 0,
    Max = 690,
        Callback = function(speed)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end})
    
    misc:slider({
        Name = "Jump Power",
        Default = 16,
    Min = 0,
    Max = 690,
        Callback = function(jump)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
    end})
    
    misc:toggle({
        
            Name = "Inf Jump",
            StartingState = false,
            Callback = function(AutoQam)
                getgenv().aniueqand.babft.InfiniteJumpEnabled = AutoQam
                doJump()
    end})
    misc:button({
        Name = "Morph Penguin",
        Callback = function()
          morphPenguin()  
        end})
    
    misc:button({
        Name = "Morph Fox",
        Callback = function()
          morphFox()  
        end})
    
    misc:button({
        Name = "Morph Chicken",
        Callback = function()
          morphChicken()  
        end})
   
        tele:dropdown({
            Name = "Select Zone",
            Items = {
                {"Black Zone", "BlackZone"},
                {"Blue Zone", "Really blueZone"},
                {"Green Zone", "CamoZone"},
                {"Magenta Zone", "MagentaZone"},
                {"Red Zone", "Really redZone"},
                {"White Zone", "WhiteZone"},
                {"Yellow Zone", "New YellerZone"},
            },
            Callback = function(tellel)
             TeleportWorld = tellel
            end,
        })
            tele:button({
                Name = "Teleport Selected Zone",
                Callback = function()
                    if  getgenv().aniueqand.babft.TeleportWorld  then
                    teleportTo(game:GetService("Workspace")[TeleportWorld])
                    else
                        tele:prompt{
                            Title = "Error",
                            Text = "Select Zone to Teleport",
                            Buttons = {
                                Ok = function()
                                end
                                },}
                    end
                end})
    ---------------------------------

    
    tele:dropdown({
        Name = "Select Stage",
        Items = {
            {"Cave Stage 1", "CaveStage1"},
            {"Cave Stage 2", "CaveStage2"},
            {"Cave Stage 3", "CaveStage3"},
            {"Cave Stage 4", "CaveStage4"},
            {"Cave Stage 5", "CaveStage5"},
            {"Cave Stage 6", "CaveStage6"},
            {"Cave Stage 7", "CaveStage7"},
            {"Cave Stage 8", "CaveStage8"},
            {"Cave Stage 9", "CaveStage9"},
            {"Cave Stage 10", "CaveStage10"},
            {"Chest", "TheEnd"},
        },
        Callback = function(aniysavufy)
            getgenv().aniueqand.babft.TeleportStage = aniysavufy
            print(aniysavufy)
        end,
    })
                    tele:button({
                        Name = "Teleport Selected Stage",
                        Callback = function()
                            if getgenv().aniueqand.babft.TeleportStage ~= "" then
    if  getgenv().aniueqand.babft.TeleportStage == "TheEnd" then
        teleportTo(game:GetService("Workspace").BoatStages.NormalStages[getgenv().aniueqand.babft.TeleportStage].GoldenChest.Trigger)
    else
        teleportTo(game:GetService("Workspace").BoatStages.NormalStages[getgenv().aniueqand.babft.TeleportStage].DarknessPart)
    end
                            else
                                tele:prompt{
                                    Title = "Error",
                                    Text = "Select Stage to Teleport",
                                    Buttons = {
                                        Ok = function()
                                        end
                                        },}
                            end
                        end})
    
    
                       
    
                        shop:dropdown({
                            Name = "Select Type Of Chest",
                            Items = {
                                {"Common Chest", "Common Chest"},
                                {"Uncommon Chest", "Uncommon Chest"},
                                {"Rare Chest", "Rare Chest"},
                                {"Epic Chest", "Epic Chest"},
                                {"Legendary Chest", "Legendary Chest"},
                            },
                            Callback = function(ass)
                                getgenv().aniueqand.babft.ChestType = ass
                            end,
                        })
                        shop:dropdown({
                            Name = "Select How Many Times to Bought",
                            Items = {
                                {"Open 1", 1},
                                {"Open 5", 5},
                                {"Open 10", 10},
                                {"Open 50", 50},
                                {"Open 100", 100},
                                {"Open 500", 500},
                                {"Open 1000", 1000},
                            },
                            Callback = function(balls)
                                getgenv().aniueqand.babft.ChestNumberr = balls
                            end,
                        })
    
                        shop:dropdown({
                            Name = "Select How Many Seconds to Open",
                            Description = "For Auto Open!",
                            Items = {
                                {"None", 0},
                                {"1 Second", 1},
                                {"2 Second", 2},
                                {"3 Second", 3},
                                {"4 Second", 3},
                                {"5 Second", 5},
                                {"6 Second", 6},
                                {"7 Second", 7},
                                {"8 Second", 8},
                                {"9 Second", 9},
                                {"10 Second", 10},
                                {"1 Minute", 60},
                            },
                            Callback = function(money)
                                getgenv().aniueqand.babft.ChestCoolDown = money
                            end,
                        })
    
    
                        shop:button({
                            Name = "Remove Chest Animation",
                            Callback = function()
                                    animation()
    
                                    shop:prompt{
                                     Title = "Success",
                                     Text = "Removed Chest Animation",
                                     Buttons = {
                                     Ok = function()
                            end
     },} 
                            end})
    
                        shop:button({
                            Name = "Open Once",
                            Callback = function()
                               if  getgenv().aniueqand.babft.ChestType ~= "" then
        if    getgenv().aniueqand.babft.ChestNumber ~= "" then
        
            openChest(getgenv().aniueqand.babft.ChestType,getgenv().aniueqand.babft.ChestNumber)
    
                            else
                                     shop:prompt{
                                     Title = "Error",
                                     Text = "Select How Many Times to Bought",
                                     Buttons = {
                                     Ok = function()end},}
        end
        
                            else
                                    shop:prompt{
                                        Title = "Error",
                                        Text = "Select Type Of Chest",
                                        Buttons = {
                                            Ok = function()end},}
                                        end
                            end})
                            shop:toggle({
        
                                Name = "Auto Buy",
                                StartingState = false,
                                Callback = function(OpenAuto)
                                    if getgenv().aniueqand.babft.ChestType ~= "" then
                                        if  getgenv().aniueqand.babft.ChestNumber ~= "" then
                                            if getgenv().aniueqand.babft.ChestCoolDown ~= "" then
                                                getgenv().aniueqand.babft.WhileOpen = OpenAuto
                                           WhileOpenChest(getgenv().aniueqand.babft.ChestType,getgenv().aniueqand.babft.ChestNumber,getgenv().aniueqand.babft.ChestCoolDown)
                                        else
                                            shop:prompt{
                                            Title = "Error",
                                            Text = "Select How Many Seconds to Open",
                                            Buttons = {
                                            Ok = function()
                                     end
    },}
    end
                                                            else
                                                                     shop:prompt{
                                                                     Title = "Error",
                                                                     Text = "Select How Many Times to Bought",
                                                                     Buttons = {
                                                                     Ok = function()
                                                            end
                                     },}
                                        end
                                        
                                                            else
                                                                    shop:prompt{
                                                                        Title = "Error",
                                                                        Text = "Select Type Of Chest",
                                                                        Buttons = {
                                                                            Ok = function()
                                                                            end
                                                                            },}
                                                                end
                                                            end})

--
local saveFileName = "aniueqand/babftSetting.UrMomIsGay"
local HttpService = game:GetService("HttpService")
function controlAniueqand()
if not isfolder("aniueqand") then
    makefolder("aniueqand")
end
end
save:toggle({
        
    Name = "Auto Load Settings",
    StartingState = getgenv().aniueqand.babft.autoLoadSettings,
    Callback = function(autoLoad)
        controlAniueqand()
        getgenv().aniueqand.babft.autoLoadSettings = autoLoad
        writefile(saveFileName,game:GetService("HttpService"):JSONEncode(getgenv().aniueqand.babft))
end})
    save:button({
        Name = "Save Settings",
        Description = "Save Your Settings!",
        Callback = function()
            controlAniueqand()
           
            writefile(saveFileName,HttpService:JSONEncode(getgenv().aniueqand.babft))
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
                    getgenv().aniueqand.babft = HttpService:JSONDecode(readfile(saveFileName))
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
                    getgenv().aniueqand.babft = {
                        WhileOpen = false,
        ChestNumber = 1,
        ChestType = "",
        ChestCoolDown = 10,
        InfiniteJumpEnabled = false,
        Gold = false,
        GoldBlock = false,
        antiLag = false,
        TeleportWorld = "",
        autoLoadSettings = false,
        TeleportStage = "",
        antilagcooldown = 60
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


                    
--

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
    
                                    else
                                        print("execute script from loader \n github aniueqand and go to the roblox")
                                    end
