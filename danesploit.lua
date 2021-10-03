local hook;
hook = hookfunc(getrenv().wait, newcclosure(function(...)
    local args = {...}
    if args[1] == 3 and getcallingscript().Parent == nil then
        return coroutine.yield()
    end
    return hook(...)
end))

local hook;
hook = hookfunc(getrenv().wait, newcclosure(function(...)
    local args = {...}
    if args[1] == 2 and getcallingscript().Parent == nil then
        warn("[Event]", "Touch trigger hooked.")
        return coroutine.yield()
    end
    return hook(...)
end))


local check_reach_size = 'e'
local subtract_reach_value = 'k'
local add_reach_value = 'j'
local turn_on_visualizer = 'v'
local reach_size = 3.5
local visualizerEnabled = false
local active = true
local damage = false
local starterGui = game:GetService("StarterGui")

local Part = Instance.new("Part")
Part.Anchored = true
Part.BottomSurface = Enum.SurfaceType.Smooth
Part.CanCollide = false
Part.TopSurface = Enum.SurfaceType.Smooth
Part.Transparency = 0.5
Part.Size = Vector3.new(1.5, 6.25, 2)
Part.CFrame = CFrame.new(-18.879997253418, 25.375003814697, 72.5)
Part.CastShadow = false
Part.Parent = nil
local aura = Instance.new("ParticleEmitter")
aura.Name = "aura"
aura.Color = ColorSequence.new(Color3.fromRGB(0.5,0.5,0.5))
aura.ZOffset = -2
aura.LightInfluence = 1
aura.Lifetime = NumberRange.new(2, 2)
aura.Speed = NumberRange.new(0.5, 0.5)
aura.RotSpeed = NumberRange.new(-100, 100)
aura.LockedToPart = true
aura.Rate = 50
aura.VelocitySpread = 15
aura.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura.Texture = "rbxassetid://833874434"
aura.LightEmission = 0.3
aura.SpreadAngle = Vector2.new(15, 15)
aura.Parent = Part
local aura2 = Instance.new("ParticleEmitter")
aura2.Name = "aura2"
aura2.Color = ColorSequence.new(Color3.fromRGB(0.5,0.5,0.5))
aura2.ZOffset = -3
aura2.LightInfluence = 1
aura2.Lifetime = NumberRange.new(2, 2)
aura2.Speed = NumberRange.new(0.5, 0.5)
aura2.Size = NumberSequence.new(0.95)
aura2.RotSpeed = NumberRange.new(-100, 100)
aura2.LockedToPart = true
aura2.Rate = 50
aura2.VelocitySpread = 15
aura2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura2.Texture = "rbxassetid://833874434"
aura2.LightEmission = 0.3
aura2.SpreadAngle = Vector2.new(15, 15)
aura2.Parent = Part
local aura21 = Instance.new("ParticleEmitter")
aura21.Name = "aura2"
aura21.Color = ColorSequence.new(Color3.fromRGB(255, 180, 0))
aura21.ZOffset = -3
aura21.LightInfluence = 1
aura21.Lifetime = NumberRange.new(2, 2)
aura21.Speed = NumberRange.new(0.5, 0.5)
aura21.Size = NumberSequence.new(0.95)
aura21.RotSpeed = NumberRange.new(-100, 100)
aura21.LockedToPart = true
aura21.Rate = 50
aura21.VelocitySpread = 15
aura21.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura21.Texture = "rbxassetid://833874434"
aura21.LightEmission = 0.3
aura21.SpreadAngle = Vector2.new(15, 15)
aura21.Parent = Part
local aura3 = Instance.new("ParticleEmitter")
aura3.Name = "aura3"
aura3.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
aura3.ZOffset = -1
aura3.LightInfluence = 1
aura3.Lifetime = NumberRange.new(2, 2)
aura3.Speed = NumberRange.new(0.5, 0.5)
aura3.Size = NumberSequence.new(0.9)
aura3.RotSpeed = NumberRange.new(-100, 100)
aura3.LockedToPart = true
aura3.Rate = 50
aura3.VelocitySpread = 15
aura3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura3.Texture = "rbxassetid://833874434"
aura3.LightEmission = 0.3
aura3.SpreadAngle = Vector2.new(15, 15)
aura3.Parent = Part
local aura31 = Instance.new("ParticleEmitter")
aura31.Name = "aura3"
aura31.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
aura31.ZOffset = -1
aura31.LightInfluence = 1
aura31.Lifetime = NumberRange.new(2, 2)
aura31.Speed = NumberRange.new(0.5, 0.5)
aura31.Size = NumberSequence.new(0.9)
aura31.RotSpeed = NumberRange.new(-100, 100)
aura31.LockedToPart = true
aura31.Rate = 50
aura31.VelocitySpread = 15
aura31.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura31.Texture = "rbxassetid://833874434"
aura31.LightEmission = 0.3
aura31.SpreadAngle = Vector2.new(15, 15)
aura31.Parent = Part
local small = Instance.new("ParticleEmitter")
small.Name = "small"
small.ZOffset = 4
small.LightInfluence = 1
small.Lifetime = NumberRange.new(2, 2)
small.Speed = NumberRange.new(0.5, 0.5)
small.Size = NumberSequence.new(0.01)
small.RotSpeed = NumberRange.new(-100, 100)
small.LockedToPart = true
small.Rate = 45
small.VelocitySpread = 15
small.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
small.Texture = "rbxassetid://243740013"
small.LightEmission = 0.3
small.SpreadAngle = Vector2.new(15, 15)
small.Parent = Part
local small1 = Instance.new("ParticleEmitter")
small1.Name = "small"
small1.ZOffset = 4
small1.LightInfluence = 1
small1.Lifetime = NumberRange.new(2, 2)
small1.Speed = NumberRange.new(0.5, 0.5)
small1.Size = NumberSequence.new(0.01)
small1.RotSpeed = NumberRange.new(-100, 100)
small1.LockedToPart = true
small1.Rate = 45
small1.VelocitySpread = 15
small1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
small1.Texture = "rbxassetid://243740013"
small1.LightEmission = 0.3
small1.SpreadAngle = Vector2.new(15, 15)
small1.Parent = Part
local aura1 = Instance.new("ParticleEmitter")
aura1.Name = "aura"
aura1.Color = ColorSequence.new(Color3.fromRGB(0.5,0.5,0.5))
aura1.ZOffset = -2
aura1.LightInfluence = 1
aura1.Lifetime = NumberRange.new(2, 2)
aura1.Speed = NumberRange.new(0.5, 0.5)
aura1.RotSpeed = NumberRange.new(-100, 100)
aura1.LockedToPart = true
aura1.Rate = 50
aura1.VelocitySpread = 15
aura1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.116564,0.704918),NumberSequenceKeypoint.new(0.654908,0.73224),NumberSequenceKeypoint.new(1,1)})
aura1.Texture = "rbxassetid://833874434"
aura1.LightEmission = 0.3
aura1.SpreadAngle = Vector2.new(15, 15)
aura1.Parent = Part
local Attachment = Instance.new("Attachment")
Attachment.Parent = Part
local Bolts = Instance.new("ParticleEmitter")
Bolts.Name = "Bolts"
Bolts.Color = ColorSequence.new(Color3.fromRGB(0.5,0.5,0.5))
Bolts.Lifetime = NumberRange.new(0.333, 0.333)
Bolts.Speed = NumberRange.new(0, 0)
Bolts.Size = NumberSequence.new(4)
Bolts.LockedToPart = true
Bolts.Rate = 12
Bolts.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.883114),NumberSequenceKeypoint.new(0.0555,0.982574),NumberSequenceKeypoint.new(0.111,0.170537),NumberSequenceKeypoint.new(0.1665,0.393078),NumberSequenceKeypoint.new(0.222,0.129063),NumberSequenceKeypoint.new(0.2775,0.920743),NumberSequenceKeypoint.new(0.333,0.415693),NumberSequenceKeypoint.new(0.3885,0.215033),NumberSequenceKeypoint.new(0.444,0.782067),NumberSequenceKeypoint.new(0.4995,0.232032),NumberSequenceKeypoint.new(0.555,0.789819),NumberSequenceKeypoint.new(0.6105,0.810999),NumberSequenceKeypoint.new(0.666,0.911618),NumberSequenceKeypoint.new(0.7215,0.874569),NumberSequenceKeypoint.new(0.777,0.419294),NumberSequenceKeypoint.new(0.8325,0.300272),NumberSequenceKeypoint.new(0.888,0.164006),NumberSequenceKeypoint.new(0.9435,0.396039),NumberSequenceKeypoint.new(0.999,0.700339),NumberSequenceKeypoint.new(1,1)})
Bolts.Texture = "rbxassetid://1084955012"
Bolts.LightEmission = 1
Bolts.Rotation = NumberRange.new(-180, 180)
Bolts.Parent = Attachment
local Bolts1 = Instance.new("ParticleEmitter")
Bolts1.Name = "Bolts"
Bolts1.Color = ColorSequence.new(Color3.fromRGB(255, 180, 0))
Bolts1.Lifetime = NumberRange.new(0.333, 0.333)
Bolts1.Speed = NumberRange.new(0, 0)
Bolts1.Size = NumberSequence.new(4)
Bolts1.LockedToPart = true
Bolts1.Rate = 12
Bolts1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.883114),NumberSequenceKeypoint.new(0.0555,0.982574),NumberSequenceKeypoint.new(0.111,0.170537),NumberSequenceKeypoint.new(0.1665,0.393078),NumberSequenceKeypoint.new(0.222,0.129063),NumberSequenceKeypoint.new(0.2775,0.920743),NumberSequenceKeypoint.new(0.333,0.415693),NumberSequenceKeypoint.new(0.3885,0.215033),NumberSequenceKeypoint.new(0.444,0.782067),NumberSequenceKeypoint.new(0.4995,0.232032),NumberSequenceKeypoint.new(0.555,0.789819),NumberSequenceKeypoint.new(0.6105,0.810999),NumberSequenceKeypoint.new(0.666,0.911618),NumberSequenceKeypoint.new(0.7215,0.874569),NumberSequenceKeypoint.new(0.777,0.419294),NumberSequenceKeypoint.new(0.8325,0.300272),NumberSequenceKeypoint.new(0.888,0.164006),NumberSequenceKeypoint.new(0.9435,0.396039),NumberSequenceKeypoint.new(0.999,0.700339),NumberSequenceKeypoint.new(1,1)})
Bolts1.Texture = "rbxassetid://1084955012"
Bolts1.LightEmission = 1
Bolts1.Rotation = NumberRange.new(-180, 180)
Bolts1.Parent = Attachment
local Bubble = Instance.new("ParticleEmitter")
Bubble.Name = "Bubble"
Bubble.Color = ColorSequence.new(Color3.fromRGB(255, 180, 0))
Bubble.ZOffset = 3
Bubble.Lifetime = NumberRange.new(1, 1)
Bubble.Speed = NumberRange.new(0, 0)
Bubble.Size = NumberSequence.new(4)
Bubble.LockedToPart = true
Bubble.Rate = 6
Bubble.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.495,0.75),NumberSequenceKeypoint.new(1,1)})
Bubble.Texture = "rbxassetid://1084955488"
Bubble.LightEmission = 1
Bubble.Rotation = NumberRange.new(-180, 180)
Bubble.Parent = Attachment
---------------------------------------
game.StarterGui:SetCore("SendNotification", {
    Title = "Danesploit Loaded.";
    Text = "Version up to date";
    Duration = 5;
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
    Title = "Keybinds";
    Text = "size = e, add = j, subtract = k, vis = v";
    Duration = 10;
})
---------------------------------------
--notifications
local is_on = function()
    return visualizerEnabled and 'on' or 'off'
end
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == turn_on_visualizer then
        visualizerEnabled = not visualizerEnabled
        if visualizerEnabled == true then
            game:GetService("StarterGui"):SetCore('SendNotification', {Title = 'Danesploit 1.2.4', Text = 'Visualizer has been toggled on.'})
            else
            game:GetService("StarterGui"):SetCore('SendNotification', {Title = 'Danesploit 1.2.4', Text = 'Visualizer has been toggled off.'})
        end
    elseif key == check_reach_size then
        local status = is_on()
        game:GetService("StarterGui"):SetCore('SendNotification', {Title = 'Danesploit 1.2.4', Text = 'Exploit is '..status..'. Current: '..reach_size..' studs'})
    elseif key == add_reach_value then
        reach_size = reach_size + 0.5
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Danesploit 1.2.4", Text = "Reach Strength has increased by 1. Current: " ..reach_size..' studs'})
    elseif key == subtract_reach_value then
        if reach_size > 0 then
            reach_size = reach_size - 0.5
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Danesploit 1.2.4", Text = "Reach Strength has decreased by 1. Current: " ..reach_size..' studs'})
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Danesploit 1.2.4", Text = "Cannot decrease any further!"})
        end
    end
end)
-------------------------------------
--function for FTI
local function onHit(hit,handle)
    if handle.Parent.Enabled == false then
    local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
	    if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
	        for _,v in pairs(hit.Parent:GetChildren()) do
	            if v:IsA("BasePart") then
	                if v.Name == "Torso" or v.Name == "Head" or v.Name == "Right Arm" or v.Name == "Left Arm" or v.Name == "Part" then
	                   firetouchinterest(v,handle,0)
	                end
	            end
			end
        end
    end
end

game:GetService("RunService").RenderStepped:connect(function()
	local s = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
	if not s then Part.Parent = nil end
	if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") == nil then
	    Part.Parent = nil
	end
    if s then
        local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
		if handle then
			if visualizerEnabled then
				Part.Parent = handle
			else
				Part.Parent = nil
			end
			local reach = reach_size
			if reach then
					Part.Shape = Enum.PartType.Ball
                    Part.Transparency = 1
					Part.Size = Vector3.new(reach,reach,reach)
					Part.CFrame = handle.CFrame
					Part.CastShadow = false
					Bolts.Size = NumberSequence.new(reach)
					Bolts1.Size = NumberSequence.new(reach)
					Bubble.Size = NumberSequence.new(reach)
					Part.Name = math.random()
					Part.Parent = handle
		            for _,v in pairs(game.Players:GetPlayers()) do
		                local hrp = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
		                if hrp and handle then
		                    local mag = (hrp.Position-handle.Position).magnitude
		                    if mag <= reach then
		                 onHit(hrp,handle)
		              end
		           end
				end
			end
        end
    end
end)
