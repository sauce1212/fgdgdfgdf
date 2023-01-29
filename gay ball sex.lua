local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "belgium", HidePremium = false, SaveConfig = true, ConfigFolder = "Belgium Hook"})
local Tab = Window:MakeTab({
	Name = "esp",
	Icon = "",
	PremiumOnly = false
})

local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/vsVecTqs"))()
Aiming.TeamCheck(false)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = false,
    AimLock = false,
    Prediction = 0.157,
    AimLockKeybind = Enum.KeyCode.E
}

function Aiming.Check()
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    if (KOd or Grabbed) then
        return false
    end

    return true
end

local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        local SelectedPart = Aiming.SelectedPart

        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    return __index(t, k)
end)

RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
    end)
getgenv().DaHoodSettings = DaHoodSettings

getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false


getgenv().esp_loaded = false
getgenv().Visibility = false

Tab:AddToggle({
    Name = "Visual",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().Visibility = Value
    end   
})

Tab:AddToggle({
    Name = "Box ESP",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().boxESP = Value
    end   
})


Tab:AddToggle({
    Name = "Name",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().nameESP = Value
    end   
})


Tab:AddToggle({
    Name = "Chams",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
        end
        getgenv().cham = Value
    end   
})

local Tab = Window:MakeTab({
	Name = "shrug",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "toggle silent aim",
	Default = false,
	Callback = function(bool)
		DaHoodSettings.SilentAim = bool
	end    
})
Tab:AddToggle({
	Name = "show fov",
	Default = false,
	Callback = function(bool)
		Aiming.ShowFOV = bool
	end    
})
Tab:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 200,
	Default = 40,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(bool)
		Aiming.FOV = bool
	end    
})
Tab:AddSlider({
	Name = "prediction",
	Min = 0,
	Max = 20,
	Default = 0.157,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.001,
	ValueName = "bananas",
	Callback = function(bool)
		DaHoodSettings.Prediction = bool
	end    
})
Tab:AddDropdown({
	Name = "Dropdown",
	Default = "Head",
	Options = {"Head","HumanoidRootPart","UpperTorso","LowerTorso"},
	Callback = function(value)
		Aiming.AimPart = value
	end    
})
local Tab = Window:MakeTab({
	Name = "shrug 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "toggle aim",
	Default = false,
	Callback = function(bool)
		getgenv().AimlockKey = bool
	end    
})

Tab:AddSlider({
	Name = "prediction",
	Min = 0,
	Max = 20,
	Default = 0.157,
	Color = Color3.fromRGB(255,255,255),
	Increment = 0.001,
	ValueName = "bananas",
	Callback = function(bool)
		PredictionVelocity = bool
	end    
})
Tab:AddDropdown({
	Name = "Dropdown",
	Default = "Head",
	Options = {"Head","HumanoidRootPart","UpperTorso","LowerTorso"},
	Callback = function(value)
		Aiming.AimPart = value
	end    
})
local Tab = Window:MakeTab({
        Name = "Other stuff",
        Icon = "rbxassetid://10529144744",
        PremiumOnly = false
})
Tab:AddButton({
	Name = "Trash Talk (J)",
	Callback = function(bool)
      		    local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur bad";
    "sonney boy";
    "ez";
    "my grandma has more skill than you";
    "seed";
    "sit son";
    "trash";
    "LOL";
    "LMAO";
    "imagine being you right now";
    "xd";
    "don't try LOL";
    "you lose";
    "why do you even try";
    "I didn't think being this bad was possible";
    "leave";
    "no skill";
    "so sad man.";
    "bad";
    "you're nothing";
    "lol";
    "so trash";
    "so bad";
    "ur salty";
    "salty";
    "look he's mad";
    "cry more";
    "keep crying";
    "cry baby";
    "hahaha I won";
    "no one likes u";
    "run 1s seed";
    "thank you for your time";
    "you were so close!";
    "better luck next time!";
    "rodent";
    "HAHA";
    "ill 5-0";
    "just quit";
    "time to take out the trash";
    "did you get worse?";
    "I'm surprised you haven't quit yet";











}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)  
end})
Tab:AddButton({
	Name = "TP DB",
	Callback = function()
      		getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})
Tab:AddButton({
	Name = "TP Revi",
	Callback = function()
      		getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
  	end    
})
Tab:AddButton({
	Name = "TP Food",
	Callback = function()
      		getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
  	end    
})
Tab:AddButton({
	Name = "load ray x",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexrandom/Lua/main/DaHood",true))()
  	end    
})
Tab:AddButton({
	Name = "advertisement (J)",
	Callback = function()
      		      		    local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "my grandma has more skill than you";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";
    "Belgium\0999 best coder";











}


function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
  	end    
})


OrionLib:Init()

















































print'anyone wanna help/have creds LMK'
