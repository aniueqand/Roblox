getgenv().Balls = true                  
spawn(function()
  coroutine.wrap(function()
   while Balls do wait()
    coroutine.wrap(function()
     while Balls do wait()

      workspace.ItemBoughtFromShop:InvokeServer("Winter Chest",math.floor(game:GetService("Players").LocalPlayer.Data.Gold.Value / 100))
     
     end
    end)()
   end
  end)()
 end)
