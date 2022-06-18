--// Services
local players = game:GetService("Players")

--// Workspace
local stages = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
local penguin = workspace:WaitForChild("ChangeCharacter")

--// Other
local client = players.LocalPlayer
    
--// Main
---------

while _G.Busy do
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, -4, 0)
    bodyVelocity.Parent = client.Character.HumanoidRootPart
    
    for i = 1, 5 do
        if not client.Character or not client.Character:FindFirstChild("Humanoid") then
            repeat wait() until client.Character and client.Character:FindFirstChild("Humanoid")
        end

        client.Character.HumanoidRootPart.CFrame = stages["CaveStage"..i].DarknessPart.CFrame
        
        wait(1.2)
    end

    if not client.Character or not client.Character:FindFirstChild("HumanoidRootPart") then
        repeat wait() until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
    end

    client.Character.HumanoidRootPart.CFrame = stages["TheEnd"].GoldenChest.Trigger.CFrame
    
    wait(10)
    
    penguin:FireServer("PenguinCharacter")
    client.Character:Remove()
    
    repeat wait() 
    until client.Character and client.Character:FindFirstChild("HumanoidRootPart")
    
end
---------
