local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Da Hub - Pet Simulator X", HidePremium = true, SaveConfig = true, ConfigFolder = "DaHub", IntroText = "Da Hub - Pet Simulator X",})

local Sound = Instance.new("Sound")
Sound.Parent = game.StarterGui
Sound.SoundId = "rbxassetid://6958727243";
Sound.Volume = "1.5";
Sound:Play() 

local TPS = Instance.new("Sound")
TPS.Parent = game.StarterGui
TPS.SoundId = "rbxassetid://7009904957";
TPS.Volume = "0.4";
TPS.Name = "TPS"
TPS:Play() 

OrionLib:MakeNotification({
	Name = "Discord server",
	Content = "Join our Discord server! discord.gg/v4bEKVfKwp",
	Image = "rbxassetid://4483345998",
	Time = 20
})

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local v1 = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));
while not v1.Loaded do
	game:GetService("RunService").Heartbeat:Wait();
end;

v1.Message.New("Thank you for using Da Hub! Join our Discord server at discord.gg/v4bEKVfKwp")
v1.Signal.Fire("Fireworks Animation");
v1.Signal.Fire("Notification", "This script is not finished yet.", {
	color = Color3.fromRGB(255, 243, 62), 
	time = 5
});

v1.Signal.Fire("Notification", "Changelog:", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added PSX! Not fully finished yet.", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added fireworks!", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added a send message and notification feature!", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added a send question feature!", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added a UI section.", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});
wait(2)
v1.Signal.Fire("Notification", "Added a Teleport section!", {
	color = Color3.fromRGB(255, 255, 255), 
	time = 5
});

Tab:AddLabel("Hello, "..game.Players.LocalPlayer.DisplayName)
Tab:AddLabel("Events:")
Tab:AddLabel("None")


local Tab = Window:MakeTab({
	Name = "Local Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

local Tab = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Fireworks!",
	Callback = function()
		v1.Signal.Fire("Fireworks Animation");
		v1.Signal.Fire("Notification", "Fireworks has been activated! This script is client sided.", {
			color = Color3.fromRGB(255, 255, 62), 
			time = 5
		});
	end
})

Tab:AddTextbox({
	Name = "Send Message",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		v1.Message.New(Value)
	end	  
})

Tab:AddTextbox({
	Name = "Send Question",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		v1.Message.New(Value, true)
	end	  
})

Tab:AddTextbox({
	Name = "Send Notification",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		v1.Signal.Fire("Notification", Value, {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end	  
})

local Tab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Shop",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(266.964, 96.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end    
})
Tab:AddButton({
	Name = "Town",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73.464, 92.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Beach",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-621.536, 92.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Mine",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-987.036, 91.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Winter",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1360.536, 91.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Glacier",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1705.036, 91.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Desert",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2088.036, 91.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

Tab:AddButton({
	Name = "Volcano",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2424.036, 91.013, 238.075)
TPS:Play()
	v1.Network.Fire("Performed Teleport");
	end
})

local Tab = Window:MakeTab({
	Name = "UI",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Huge Cupcake!",
	Callback = function()
		local Sound = Instance.new("Sound")
		Sound.Parent = game.StarterGui
		Sound.SoundId = "rbxassetid://8176818052";
		Sound.Volume = "0.5";
		Sound:Play()
		wait(1)
		v1.Signal.Fire("Notification", "You got an Exclusive Huge Cupcake!", {
			color = Color3.fromRGB(108, 248, 249), 
			time = 5
		});
	end    
})

local Section = Tab:AddSection({
	Name = "UI"
})

Tab:AddButton({
	Name = "Gold Machine!",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Golden.Enabled = true
		v1.Signal.Fire("Notification", "Gold Machine has been enabled.", {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end
})

Tab:AddButton({
	Name = "Upgrades!",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Upgrades.Enabled = true
		v1.Signal.Fire("Notification", "Upgrades has been enabled.", {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end
})

Tab:AddButton({
	Name = "Fuse Pets!",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.FusePets.Enabled = true
		v1.Signal.Fire("Notification", "Fuse Pets has been enabled.", {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end
})

Tab:AddButton({
	Name = "Rainbow Machine!",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Rainbow.Enabled = true
		v1.Signal.Fire("Notification", "Rainbow Machine has been enabled.", {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end
})

Tab:AddButton({
	Name = "Dark Matter Machine!",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.DarkMatter.Enabled = true
		v1.Signal.Fire("Notification", "Dark Matter Machine has been enabled.", {
			color = Color3.fromRGB(255, 255, 255), 
			time = 5
		});
	end
})

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Discord server",
	Callback = function()
		setclipboard("discord.gg/v4bEKVfKwp")
		OrionLib:MakeNotification({
			Name = "Discord server",
			Content = "The Discord invite link has been copied!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end    
})

Tab:AddLabel("Orion Library")
OrionLib:Init()