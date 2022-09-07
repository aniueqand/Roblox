
local hubLoader = {
2316994223 = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/PetSimulatorX.lua",
210851291 = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/babft.lua"
}
for i,v in pairs(hubLoader) do
  if game.GameId == i then
    loadstring(game:HttpGet(i))()
  end  
end    
