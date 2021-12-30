local gamelibrary = require(game:GetService("ReplicatedStorage").Framework.Library)
local Save = gamelibrary.Save.Get
local Commas = gamelibrary.Functions.Commas
local types = {}
local menus = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Main"):WaitForChild("Right")
for i, v in pairs(menus:GetChildren()) do
    if v.ClassName == 'Frame' and v.Name ~= 'Rank' and not string.find(v.Name, "2") then
        table.insert(types, v.Name)
    end
end

function get(thistype)
    return Save()[thistype]
end

succ, err = pcall(function()
    menus.Diamonds.LayoutOrder = 99988
end)
if err then
    print(err)
end
succ, err = pcall(function()
    menus['Tech Coins'].LayoutOrder = 99990
end)
if err then
    print(err)
end
succ, err = pcall(function()
    menus['Gingerbread'].LayoutOrder = 99992
end)
if err then
    print(err)
end
succ, err = pcall(function()
    menus['Fantasy Coins'].LayoutOrder = 99994
end)
if err then
    print(err)
end
succ, err = pcall(function()
    menus.Coins.LayoutOrder = 99996
end)
if err then
    print(err)
end
menus.UIListLayout.HorizontalAlignment = 2

_G.MyTypes = {}
for i,v in pairs(types) do
    if menus:FindFirstChild(v.."2") then
        menus:FindFirstChild(v.."2"):Destroy()
    end
end
for i,v in pairs(types) do
    if not menus:FindFirstChild(v.."2") then
        local tempmaker = menus:FindFirstChild(v):Clone()
        tempmaker.Name = tostring(tempmaker.Name .. "2")
        tempmaker.Parent = menus
        tempmaker.Size = UDim2.new(0, 175, 0, 30)
        tempmaker.LayoutOrder = tempmaker.LayoutOrder + 1
        _G.MyTypes[v] = tempmaker
    end
end
menus.Diamonds2.Add.Visible = false

-- Skidded from byte-chan:tm:
for i,v in pairs(types) do
    spawn(function()
        local megatable = {}
        local imaginaryi = 1
        local ptime = 0
        local last = tick()
        local now = last
        local TICK_TIME = 0.5
        while true do
            if ptime >= TICK_TIME then
                while ptime >= TICK_TIME do ptime = ptime - TICK_TIME end
                local currentbal = get(v)
                megatable[imaginaryi] = currentbal
                local diffy = currentbal - (megatable[imaginaryi-120] or megatable[1])
                imaginaryi = imaginaryi + 1
                _G.MyTypes[v].Amount.Text = tostring(Commas(diffy).." in 60s")
                _G.MyTypes[v]["Amount_odometerGUIFX"].Text = tostring(Commas(diffy).." in 60s")
            end
            task.wait(0.001)
            now = tick()
            ptime = ptime + (now - last)
            last = now
        end
    end)
end
