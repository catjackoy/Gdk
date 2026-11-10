-- Example LocalScript
-- Place in StarterPlayer > StarterPlayerScripts

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local YellowUI = require(ReplicatedStorage:WaitForChild("YellowUI"))

local win = YellowUI.new("My Hub")

local main = win:Tab("Main")
main:Section("General")
main:Label("Welcome! Press RightShift or tap ≡ to toggle.")
main:Button("Say hello", function()
	win:Notify("Hello!", "The button was clicked.", 2)
end)
main:Toggle("Auto Collect", false, function(on)
	print("Auto Collect:", on)
end)

local settings = win:Tab("Settings")
settings:Section("Audio")
settings:Toggle("Music", true, function(on)
	print("Music:", on)
end)
settings:Slider("Volume", 0, 100, 70, function(v)
	print("Volume:", v)
end)
