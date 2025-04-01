local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local function updateTime()
	local currentTime = Lighting.ClockTime
	local timeInterval = 0.0001
	local newTime = currentTime + timeInterval
	
	Lighting.ClockTime = newTime
end

RunService.Heartbeat:Connect(updateTime)
