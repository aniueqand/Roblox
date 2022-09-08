local hubLoader = {
  [2316994223] = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/PetSimulatorX.lua",
  [210851291] = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/babft.lua"
}
getgenv().aniueqand = {HubLoaded,babft,psx}
getgenv()aniueqand.HubLoaded = true
loadstring(game:HttpGet(hubLoader[game.GameId]))()
