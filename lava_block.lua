-- initial variable for reference to LavaBricks folder

local LavaBricks = game.Workspace:WaitForChild("Lava Parts"):GetChildren()
	-- LavaBricks = variable name
	-- workspace = everything, every parts in game. WaitForChild pause the script until it finds the object named 'Lava Parts'
	-- GetChildren returns a table either list or array of all parts inside. For example, 'Lava Parts' is a model, this function will return every parts in the model which is 'lava_brick'
	
	
-- loop through all LavaBricks in the folder

for _, LavaBrick in pairs(LavaBricks) do   -- '-' in for is the index (unused) so its denoted as '-'
	
	--detect when LavaBricks is touched
	LavaBrick.Touched:Connect(function(object)
		
		-- 'object' is whatever touched the LavaBrick (player, parts, anything ...)
		-- check to see if our object is actual player
		
		local realPlayer = game.Players:GetPlayerFromCharacter(object.Parent)
		
		if realPlayer and realPlayer.Character then
			local humanoid = realPlayer.Character:FindFirstChild("Humanoid")  -- somtimes realPlayer.Character or realPlayer.Character:FindFirstChild("Humanoid") might not exist yet
			-- set player's characeter hp to 0
			if humanoid then
				humanoid.Health = 0
			end
		end
	end)
end
