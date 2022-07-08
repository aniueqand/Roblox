local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/ui-libs/main/unnamed_Notify_Library/NotifyLibrary", true))()

local args = {[1] = 28754544258117.676,[2] = math.huge }
game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(unpack(args))

Notification.new("success", "Inf Money", "Made by aniueqand")