local weatherTypes = {
	"Clear",
	"Rainy",
	"Stormy"
}

local currentWeather = "Clear"
local weatherDuration = 30
local lighting = game:GetService("Lighting")

local function setWeather(weatherType)
	currentWeather = weatherType
	print("Weather changed to: " .. currentWeather)

	if currentWeather == "Clear" then
		lighting.Brightness = 2
		lighting.OutdoorAmbient = Color3.new(1, 1, 1)
		lighting.Atmosphere.Density = 0.3
		lighting.Atmosphere.Haze = 0
		lighting.Atmosphere.Glare = 0

		if game.Workspace:FindFirstChild("RainParticles") then
			game.Workspace.RainParticles.Enabled = false
		end

		if game.Workspace:FindFirstChild("ThunderSound") then
			game.Workspace.ThunderSound:Stop()
		end

	elseif currentWeather == "Rainy" then
		lighting.Brightness = 1
		lighting.OutdoorAmbient = Color3.new(0.7, 0.7, 0.7)
		lighting.Atmosphere.Density = 0.4
		lighting.Atmosphere.Haze = 0.1

		if game.Workspace:FindFirstChild("RainParticles") then
			game.Workspace.RainParticles.Enabled = true
		end

		if game.Workspace:FindFirstChild("ThunderSound") then
			game.Workspace.ThunderSound:Stop()
		end

	elseif currentWeather == "Stormy" then
		lighting.Brightness = 0.5
		lighting.OutdoorAmbient = Color3.new(0.3, 0.3, 0.3)
		lighting.Atmosphere.Density = 0.6
		lighting.Atmosphere.Haze = 0.2

		if game.Workspace:FindFirstChild("RainParticles") then
			game.Workspace.RainParticles.Enabled = true
		end

		if game.Workspace:FindFirstChild("ThunderSound") then
			game.Workspace.ThunderSound:Play()
		end
	end
end

local function weatherCycle()
	while true do
		local newWeather = weatherTypes[math.random(1, #weatherTypes)]
		setWeather(newWeather)
		wait(weatherDuration)
	end
end

weatherCycle()
