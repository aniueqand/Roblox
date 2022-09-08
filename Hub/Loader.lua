local hubLoader = {
  [2316994223] = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/PetSimulatorX.lua",
  [210851291] = "https://raw.githubusercontent.com/aniueqand/Roblox/main/Hub/babft.lua"
}

writefile("aniueqand/HubLoader.UrMom","HubLoadedId-"..math.random(1000, 25000),math.random(1000, 25000),math.random(1000, 25000))
getgenv().HubLoaded = readfile("aniueqand/HubLoader.UrMom")
loadstring(game:HttpGet(hubLoader[game.GameId]))()
