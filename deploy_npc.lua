local npcModel = game:GetService("ReplicatedStorage"):WaitForChild("MyNPC") -- Replace "MyNPC" with the name of your NPC model

-- Clone the NPC model
local npcClone = npcModel:Clone()

-- Set the NPC's position (adjust as needed)
local spawnPosition = Vector3.new(0, 10, 0) -- Replace with the desired spawn position
npcClone:SetPrimaryPartCFrame(CFrame.new(spawnPosition))

-- Parent the NPC clone to the Workspace
npcClone.Parent = game.Workspace
