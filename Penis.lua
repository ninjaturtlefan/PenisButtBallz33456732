--[[

$$\      $$\ $$$$$$\ $$\       $$$$$$$\        $$\   $$\ 
$$ | $\  $$ |\_$$  _|$$ |      $$  __$$\       $$ |  $$ |
$$ |$$$\ $$ |  $$ |  $$ |      $$ |  $$ |      \$$\ $$  |
$$ $$ $$\$$ |  $$ |  $$ |      $$ |  $$ |       \$$$$  / 
$$$$  _$$$$ |  $$ |  $$ |      $$ |  $$ |       $$  $$<  
$$$  / \$$$ |  $$ |  $$ |      $$ |  $$ |      $$  /\$$\ 
$$  /   \$$ |$$$$$$\ $$$$$$$$\ $$$$$$$  |      $$ /  $$ |
\__/     \__|\______|\________|\_______/       \__|  \__|

]]

local Thingy = Instance.new("ScreenGui")
local DaddyFrame = Instance.new("Frame")
local Main = Instance.new("Frame")
local Pattern = Instance.new("ImageLabel")
local PageFrames = Instance.new("Frame")
local Profile = Instance.new("Frame")
local UserPFP = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Welcome = Instance.new("TextLabel")
local Username = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Rank = Instance.new("TextLabel")
local Connection = Instance.new("TextLabel")
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local RankOutput = Instance.new("TextLabel")
local ConnectionOutput = Instance.new("TextLabel")
local Credits = Instance.new("Frame")
local divider1 = Instance.new("ImageLabel")
local CreditsTitle = Instance.new("TextLabel")
local ScriptedBy = Instance.new("TextLabel")
local UIdesignBy = Instance.new("TextLabel")
local FoundedBy = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local FullbrightButton = Instance.new("TextButton")
local ServerHop = Instance.new("TextButton")
local divider1_2 = Instance.new("ImageLabel")
local GameModTitle = Instance.new("TextLabel")
local MiscTitle = Instance.new("TextLabel")
local VisualsTitle = Instance.new("TextLabel")
local Server1 = Instance.new("TextLabel")
local Server2 = Instance.new("TextLabel")
local Server3 = Instance.new("TextLabel")
local Server1_Text = Instance.new("TextLabel")
local storage = Instance.new("ImageButton")
local Server2_Text = Instance.new("TextLabel")
local storage_2 = Instance.new("ImageButton")
local Server3_Text = Instance.new("TextLabel")
local storage_3 = Instance.new("ImageButton")
local Server2Lock = Instance.new("Frame")
local locked = Instance.new("ImageButton")
local Server3Lock = Instance.new("Frame")
local locked_2 = Instance.new("ImageButton")
local AutoFarm = Instance.new("Frame")
local AimMod = Instance.new("Frame")
local AimModTitle = Instance.new("TextLabel")
local divider1_3 = Instance.new("ImageLabel")
local SilentAim = Instance.new("TextButton")
local ShowFOV = Instance.new("TextButton")
local fovBOX = Instance.new("TextBox")
local SwitchMod = Instance.new("TextButton")
local GameMod = Instance.new("Frame")
local FullbrightButton_2 = Instance.new("TextButton")
local PlayerESP = Instance.new("TextButton")
local LegendaryFinder = Instance.new("TextButton")
local divider1_4 = Instance.new("ImageLabel")
local divider1_5 = Instance.new("ImageLabel")
local GameModTitle_2 = Instance.new("TextLabel")
local AutoFarmTitle = Instance.new("TextLabel")
local VisualsTitle_2 = Instance.new("TextLabel")
local ManualToolsTitle = Instance.new("TextLabel")
local MiscTitle_2 = Instance.new("TextLabel")
local AutoToolsTitle = Instance.new("TextLabel")
local AnimalESP = Instance.new("TextButton")
local ServerHop_2 = Instance.new("TextButton")
local SectionFrame = Instance.new("ScrollingFrame")
local Profile_2 = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local AimMod_2 = Instance.new("TextButton")
local GameMod_2 = Instance.new("TextButton")
local AutoFarm_2 = Instance.new("TextButton")
local AutoFarmLock = Instance.new("Frame")
local locked_3 = Instance.new("ImageButton")
local Settings_2 = Instance.new("TextButton")
local Credits_2 = Instance.new("TextButton")
local Header = Instance.new("Frame")
local Shadow = Instance.new("Frame")
local Close = Instance.new("ImageButton")
local WildXHeader = Instance.new("TextButton")
local ByHeader = Instance.new("TextButton")
local player = game.Players.LocalPlayer
local userId = player.UserId
local thumType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content = game.Players:GetUserThumbnailAsync(userId, thumType, thumbSize)
local String = {'Server 2', 'Server 3'}
local connectplus = String[math.random(1, #String)]

local Network = game:GetService("NetworkClient")
Network.ConnectionAccepted:Connect(function(Server, ReplicatorInstance)
	_G.Server = Server:gsub("|", ":")
end)

local HTTP = game:GetService("HttpService")

local webhookurl = "https://discord.com/api/webhooks/977954152816730112/li8qHvxbZr12OLKBiA6-RyYV0D1K107jBWvq3oDyBEAFw690Atcf_TSHmrL3-MOKEez1" -- This can be found by going into your discord server settings then going to integrations then going to webhooks

local function SendReport(player, action, id)
	local data = {
		["embeds"] = {{

			["author"] = {
				["name"] = player.Name,
				["icon_url"] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..player.Name
			},
			["description"] = "Action: " .. action,
			["color"] = tonumber(0xFFFAFA),
			["fields"] = {
				{
					["name"] = "Action ID:",
					["value"] = id,
					["inline"] = true
				},
				{
					["name"] = "Server IP:",
					["value"] = _G.Server,
					["inline"] = true
				},
				{
					["name"] = "Account Age:",
					["value"] = player.AccountAge,
					["inline"] = true
				},
				{
					["name"] = "User ID:",
					["value"] = player.UserId,
					["inline"] = true
				}
			}
		}},

	}
	local finaldata = HTTP:JSONEncode(data)
	HTTP:PostAsync(webhookurl, finaldata)
end

Thingy.Name = "Thingy"
Thingy.Parent = game.CoreGui
Thingy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DaddyFrame.Name = "DaddyFrame"
DaddyFrame.Parent = Thingy
DaddyFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DaddyFrame.Position = UDim2.new(0.319093585, 0, 0.296932429, 0)
DaddyFrame.Size = UDim2.new(0, 534, 0, 312)
DaddyFrame.Active = true
DaddyFrame.Draggable = true

Main.Name = "Main"
Main.Parent = DaddyFrame
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Position = UDim2.new(0.499684304, 0, 0.500658274, 0)
Main.Size = UDim2.new(0, 533, 0, 311)
Main.Draggable = false

Pattern.Name = "Pattern"
Pattern.Parent = Main
Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pattern.BackgroundTransparency = 1.000
Pattern.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pattern.Position = UDim2.new(0, 0, 0.000159162417, 0)
Pattern.Size = UDim2.new(0, 533, 0, 310)
Pattern.ZIndex = 6
Pattern.Image = "http://www.roblox.com/asset/?id=8518011614"
Pattern.ImageTransparency = 0.500
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 250, 0, 250)

PageFrames.Name = "PageFrames"
PageFrames.Parent = DaddyFrame
PageFrames.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PageFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
PageFrames.Position = UDim2.new(0.299076498, 0, 0.182119817, 0)
PageFrames.Size = UDim2.new(0, 364, 0, 245)

Profile.Name = "Profile"
Profile.Parent = PageFrames
Profile.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Profile.BackgroundTransparency = 1.000
Profile.BorderColor3 = Color3.fromRGB(0, 0, 0)
Profile.BorderSizePixel = 0
Profile.Size = UDim2.new(0, 365, 0, 251)
Profile.Visible = true

UserPFP.Name = "UserPFP"
UserPFP.Parent = Profile
UserPFP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserPFP.Position = UDim2.new(0.0331109948, 0, 0.0398406386, 0)
UserPFP.Size = UDim2.new(0, 100, 0, 100)
UserPFP.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
UserPFP.Image = content

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = UserPFP

Welcome.Name = "Welcome"
Welcome.Parent = Profile
Welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome.BackgroundTransparency = 1.000
Welcome.Position = UDim2.new(0.325431406, 0, 0.102803752, 0)
Welcome.Size = UDim2.new(0, 166, 0, 35)
Welcome.Font = Enum.Font.Merriweather
Welcome.Text = "Welcome,"
Welcome.TextColor3 = Color3.fromRGB(0, 0, 0)
Welcome.TextSize = 35.000

Username.Name = "Username"
Username.Parent = Profile
Username.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Username.BackgroundTransparency = 1.000
Username.Position = UDim2.new(0.353651345, 0, 0.261398017, 0)
Username.Size = UDim2.new(0, 220, 0, 30)
Username.Font = Enum.Font.Merriweather
Username.TextColor3 = Color3.fromRGB(0, 0, 0)
Username.TextSize = 35.000
Username.TextXAlignment = Enum.TextXAlignment.Left
Username.Text = player.Name

ImageLabel.Parent = Profile
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.0169384889, 0, 0.482071728, 0)
ImageLabel.Size = UDim2.new(0, 357, 0, 33)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8775215476"
ImageLabel.ScaleType = Enum.ScaleType.Crop

Rank.Name = "Rank"
Rank.Parent = Profile
Rank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rank.BackgroundTransparency = 1.000
Rank.Position = UDim2.new(0.0000000000, 0, 0.641434252, 0)
Rank.Size = UDim2.new(0, 83, 0, 34)
Rank.Font = Enum.Font.Merriweather
Rank.Text = "Rank:"
Rank.TextColor3 = Color3.fromRGB(0, 0, 0)
Rank.TextSize = 26.000


Connection.Name = "Connection"
Connection.Parent = Profile
Connection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Connection.BackgroundTransparency = 1.000
Connection.Position = UDim2.new(0.0000000000, 0, 0.786554694, 0)
Connection.Size = UDim2.new(0, 144, 0, 43)
Connection.Font = Enum.Font.Merriweather
Connection.Text = "Connected:"
Connection.TextColor3 = Color3.fromRGB(0, 0, 0)
Connection.TextSize = 26.000

RankOutput.Name = "RankOutput"
RankOutput.Parent = Profile
RankOutput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RankOutput.BackgroundTransparency = 1.000
RankOutput.Position = UDim2.new(0.216830662, 0, 0.641434252, 0)
RankOutput.Size = UDim2.new(0, 118, 0, 34)
RankOutput.Font = Enum.Font.Merriweather
RankOutput.TextColor3 = Color3.fromRGB(0, 0, 0)
RankOutput.TextSize = 26.000
RankOutput.TextXAlignment = Enum.TextXAlignment.Left
RankOutput.TextColor3 = Color3.fromRGB(0, 0, 0)
RankOutput.Text = "Loading"

ConnectionOutput.Name = "ConnectionOutput"
ConnectionOutput.Parent = Profile
ConnectionOutput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConnectionOutput.BackgroundTransparency = 1.000
ConnectionOutput.Position = UDim2.new(0.381251148, 0, 0.786554694, 0)
ConnectionOutput.Size = UDim2.new(0, 110, 0, 42)
ConnectionOutput.Font = Enum.Font.Merriweather
ConnectionOutput.Text = "Awaiting connection."
ConnectionOutput.TextColor3 = Color3.fromRGB(0, 0, 0)
ConnectionOutput.TextSize = 26.000
ConnectionOutput.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = PageFrames
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Size = UDim2.new(0, 365, 0, 251)
Credits.Visible = false

divider1.Name = "divider1"
divider1.Parent = Credits
divider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider1.BackgroundTransparency = 1.000
divider1.Position = UDim2.new(0.00124250143, 0, 0.163346618, 0)
divider1.Size = UDim2.new(0, 362, 0, 32)
divider1.Image = "http://www.roblox.com/asset/?id=8778648687"
divider1.ScaleType = Enum.ScaleType.Crop

CreditsTitle.Name = "CreditsTitle"
CreditsTitle.Parent = Credits
CreditsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditsTitle.BackgroundTransparency = 1.000
CreditsTitle.Position = UDim2.new(0.231091768, 0, 0.0398406386, 0)
CreditsTitle.Size = UDim2.new(0, 201, 0, 31)
CreditsTitle.Font = Enum.Font.Merriweather
CreditsTitle.Text = "Credits"
CreditsTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
CreditsTitle.TextSize = 35.000

ScriptedBy.Name = "ScriptedBy"
ScriptedBy.Parent = Credits
ScriptedBy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptedBy.BackgroundTransparency = 1.000
ScriptedBy.Position = UDim2.new(0.0365712605, 0, 0.346613556, 0)
ScriptedBy.Size = UDim2.new(0, 338, 0, 37)
ScriptedBy.Font = Enum.Font.Merriweather
ScriptedBy.Text = "Scripted by Creten"
ScriptedBy.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptedBy.TextScaled = true
ScriptedBy.TextSize = 35.000
ScriptedBy.TextWrapped = true

UIdesignBy.Name = "UIdesignBy"
UIdesignBy.Parent = Credits
UIdesignBy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UIdesignBy.BackgroundTransparency = 1.000
UIdesignBy.Position = UDim2.new(0.0365712605, 0, 0.541868508, 0)
UIdesignBy.Size = UDim2.new(0, 338, 0, 37)
UIdesignBy.Font = Enum.Font.Merriweather
UIdesignBy.Text = "UI Design by Creten"
UIdesignBy.TextColor3 = Color3.fromRGB(0, 0, 0)
UIdesignBy.TextScaled = true
UIdesignBy.TextSize = 35.000
UIdesignBy.TextWrapped = true

FoundedBy.Name = "FoundedBy"
FoundedBy.Parent = Credits
FoundedBy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FoundedBy.BackgroundTransparency = 1.000
FoundedBy.Position = UDim2.new(0.0365712605, 0, 0.737123549, 0)
FoundedBy.Size = UDim2.new(0, 338, 0, 37)
FoundedBy.Font = Enum.Font.Merriweather
FoundedBy.Text = "Founded by Creten"
FoundedBy.TextColor3 = Color3.fromRGB(0, 0, 0)
FoundedBy.TextScaled = true
FoundedBy.TextSize = 35.000
FoundedBy.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = PageFrames
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BackgroundTransparency = 1.000
Settings.Size = UDim2.new(0, 365, 0, 251)
Settings.Visible = false

ServerHop.Name = "ServerHop"
ServerHop.Parent = Settings
ServerHop.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
ServerHop.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerHop.Position = UDim2.new(0.580493152, 0, 0.601722121, 0)
ServerHop.Size = UDim2.new(0, 131, 0, 33)
ServerHop.Font = Enum.Font.Merriweather
ServerHop.Text = "Server Hop"
ServerHop.TextColor3 = Color3.fromRGB(0, 0, 0)
ServerHop.TextSize = 26.000
ServerHop.TextWrapped = true

divider1_2.Name = "divider1"
divider1_2.Parent = Settings
divider1_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider1_2.BackgroundTransparency = 1.000
divider1_2.Position = UDim2.new(0.00124250143, 0, 0.163346618, 0)
divider1_2.Size = UDim2.new(0, 362, 0, 32)
divider1_2.Image = "http://www.roblox.com/asset/?id=8778648687"
divider1_2.ScaleType = Enum.ScaleType.Crop

GameModTitle.Name = "GameModTitle"
GameModTitle.Parent = Settings
GameModTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameModTitle.BackgroundTransparency = 1.000
GameModTitle.Position = UDim2.new(0.231091768, 0, 0.0398406386, 0)
GameModTitle.Size = UDim2.new(0, 201, 0, 31)
GameModTitle.Font = Enum.Font.Merriweather
GameModTitle.Text = "Settings"
GameModTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
GameModTitle.TextSize = 35.000

MiscTitle.Name = "MiscTitle"
MiscTitle.Parent = Settings
MiscTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscTitle.BackgroundTransparency = 1.000
MiscTitle.Position = UDim2.new(0.554667115, 0, 0.262948215, 0)
MiscTitle.Size = UDim2.new(0, 153, 0, 30)
MiscTitle.Font = Enum.Font.Merriweather
MiscTitle.Text = "Controls"
MiscTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscTitle.TextSize = 28.000

VisualsTitle.Name = "VisualsTitle"
VisualsTitle.Parent = Settings
VisualsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualsTitle.BackgroundTransparency = 1.000
VisualsTitle.Position = UDim2.new(0.023160249, 0, 0.262948215, 0)
VisualsTitle.Size = UDim2.new(0, 164, 0, 30)
VisualsTitle.Font = Enum.Font.Merriweather
VisualsTitle.Text = "Servers"
VisualsTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
VisualsTitle.TextSize = 28.000

Server1.Name = "Server1"
Server1.Parent = Settings
Server1.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server1.Position = UDim2.new(0.0644763708, 0, 0.426423341, 0)
Server1.Size = UDim2.new(0, 131, 0, 32)
Server1.Font = Enum.Font.Merriweather
Server1.Text = ""
Server1.TextColor3 = Color3.fromRGB(0, 0, 0)
Server1.TextSize = 26.000

Server2.Name = "Server2"
Server2.Parent = Settings
Server2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server2.Position = UDim2.new(0.0644763708, 0, 0.601722121, 0)
Server2.Size = UDim2.new(0, 131, 0, 33)
Server2.Font = Enum.Font.Merriweather
Server2.Text = ""
Server2.TextColor3 = Color3.fromRGB(0, 0, 0)
Server2.TextSize = 26.000

Server3.Name = "Server3"
Server3.Parent = Settings
Server3.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server3.Position = UDim2.new(0.0644763708, 0, 0.788844645, 0)
Server3.Size = UDim2.new(0, 131, 0, 33)
Server3.Font = Enum.Font.Merriweather
Server3.Text = ""
Server3.TextColor3 = Color3.fromRGB(0, 0, 0)
Server3.TextSize = 26.000

Server1_Text.Name = "Server1_Text"
Server1_Text.Parent = Settings
Server1_Text.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server1_Text.BackgroundTransparency = 1.000
Server1_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server1_Text.BorderSizePixel = 0
Server1_Text.Position = UDim2.new(0.0644763708, 0, 0.426423341, 0)
Server1_Text.Size = UDim2.new(0, 89, 0, 32)
Server1_Text.Font = Enum.Font.Merriweather
Server1_Text.Text = "Server 1"
Server1_Text.TextColor3 = Color3.fromRGB(0, 0, 0)
Server1_Text.TextSize = 26.000

storage.Name = "storage"
storage.Parent = Server1_Text
storage.BackgroundTransparency = 1.000
storage.LayoutOrder = 5
storage.Position = UDim2.new(1.06741571, 0, 0, 0)
storage.Size = UDim2.new(0, 28, 0, 32)
storage.ZIndex = 2
storage.Image = "rbxassetid://3926305904"
storage.ImageColor3 = Color3.fromRGB(255, 0, 0)
storage.ImageRectOffset = Vector2.new(284, 684)
storage.ImageRectSize = Vector2.new(36, 36)
storage.ScaleType = Enum.ScaleType.Crop

Server2_Text.Name = "Server2_Text"
Server2_Text.Parent = Settings
Server2_Text.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server2_Text.BackgroundTransparency = 1.000
Server2_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server2_Text.BorderSizePixel = 0
Server2_Text.Position = UDim2.new(0.0644763708, 0, 0.601722121, 0)
Server2_Text.Size = UDim2.new(0, 89, 0, 33)
Server2_Text.Font = Enum.Font.Merriweather
Server2_Text.Text = "Server 2"
Server2_Text.TextColor3 = Color3.fromRGB(0, 0, 0)
Server2_Text.TextSize = 26.000

storage_2.Name = "storage"
storage_2.Parent = Server2_Text
storage_2.BackgroundTransparency = 1.000
storage_2.LayoutOrder = 5
storage_2.Position = UDim2.new(1.06741571, 0, 0, 0)
storage_2.Size = UDim2.new(0, 28, 0, 32)
storage_2.ZIndex = 2
storage_2.Image = "rbxassetid://3926305904"
storage_2.ImageColor3 = Color3.fromRGB(255, 0, 0)
storage_2.ImageRectOffset = Vector2.new(284, 684)
storage_2.ImageRectSize = Vector2.new(36, 36)
storage_2.ScaleType = Enum.ScaleType.Crop

Server3_Text.Name = "Server3_Text"
Server3_Text.Parent = Settings
Server3_Text.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Server3_Text.BackgroundTransparency = 1.000
Server3_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server3_Text.BorderSizePixel = 0
Server3_Text.Position = UDim2.new(0.0644763708, 0, 0.788844526, 0)
Server3_Text.Size = UDim2.new(0, 89, 0, 33)
Server3_Text.Font = Enum.Font.Merriweather
Server3_Text.Text = "Server 3"
Server3_Text.TextColor3 = Color3.fromRGB(0, 0, 0)
Server3_Text.TextSize = 26.000

storage_3.Name = "storage"
storage_3.Parent = Server3_Text
storage_3.BackgroundTransparency = 1.000
storage_3.LayoutOrder = 5
storage_3.Position = UDim2.new(1.06741571, 0, 0, 0)
storage_3.Size = UDim2.new(0, 28, 0, 32)
storage_3.ZIndex = 2
storage_3.Image = "rbxassetid://3926305904"
storage_3.ImageColor3 = Color3.fromRGB(255, 0, 0)
storage_3.ImageRectOffset = Vector2.new(284, 684)
storage_3.ImageRectSize = Vector2.new(36, 36)
storage_3.ScaleType = Enum.ScaleType.Crop

Server2Lock.Name = "Server2Lock"
Server2Lock.Parent = Settings
Server2Lock.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Server2Lock.BackgroundTransparency = 0.250
Server2Lock.BorderSizePixel = 0
Server2Lock.Position = UDim2.new(0.0644763708, 0, 0.601722121, 0)
Server2Lock.Size = UDim2.new(0, 130, 0, 33)

locked.Name = "locked"
locked.Parent = Server2Lock
locked.BackgroundTransparency = 1.000
locked.LayoutOrder = 2
locked.Position = UDim2.new(0.379999995, 0, 0, 0)
locked.Size = UDim2.new(0, 29, 0, 31)
locked.ZIndex = 2
locked.Image = "rbxassetid://6764432408"
locked.ImageColor3 = Color3.fromRGB(25, 25, 25)
locked.ImageRectOffset = Vector2.new(150, 250)
locked.ImageRectSize = Vector2.new(50, 50)
locked.ScaleType = Enum.ScaleType.Crop

Server3Lock.Name = "Server3Lock"
Server3Lock.Parent = Settings
Server3Lock.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Server3Lock.BackgroundTransparency = 0.250
Server3Lock.BorderSizePixel = 0
Server3Lock.Position = UDim2.new(0.0644763708, 0, 0.788844526, 0)
Server3Lock.Size = UDim2.new(0, 130, 0, 33)

locked_2.Name = "locked"
locked_2.Parent = Server3Lock
locked_2.BackgroundTransparency = 1.000
locked_2.LayoutOrder = 2
locked_2.Position = UDim2.new(0.379999995, 0, 0, 0)
locked_2.Size = UDim2.new(0, 29, 0, 31)
locked_2.ZIndex = 2
locked_2.Image = "rbxassetid://6764432408"
locked_2.ImageColor3 = Color3.fromRGB(25, 25, 25)
locked_2.ImageRectOffset = Vector2.new(150, 250)
locked_2.ImageRectSize = Vector2.new(50, 50)
locked_2.ScaleType = Enum.ScaleType.Crop


-- AUTO FARM
AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = PageFrames
AutoFarm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFarm.BackgroundTransparency = 1.000
AutoFarm.Size = UDim2.new(0, 365, 0, 251)
AutoFarm.Visible = false

AutoFarmTitle.Name = "AutoFarmTitle"
AutoFarmTitle.Parent = AutoFarm
AutoFarmTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmTitle.BackgroundTransparency = 1.000
AutoFarmTitle.Position = UDim2.new(0.231091768, 0, 0.0398406386, 0)
AutoFarmTitle.Size = UDim2.new(0, 201, 0, 31)
AutoFarmTitle.Font = Enum.Font.Merriweather
AutoFarmTitle.Text = "Auto Farm"
AutoFarmTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmTitle.TextSize = 35.000

divider1_5.Name = "divider1"
divider1_5.Parent = AutoFarm
divider1_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider1_5.BackgroundTransparency = 1.000
divider1_5.Position = UDim2.new(0.00124250143, 0, 0.163346618, 0)
divider1_5.Size = UDim2.new(0, 362, 0, 32)
divider1_5.Image = "http://www.roblox.com/asset/?id=8778648687"
divider1_5.ScaleType = Enum.ScaleType.Crop

ManualToolsTitle.Name = "ManualTools"
ManualToolsTitle.Parent = AutoFarm
ManualToolsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ManualToolsTitle.BackgroundTransparency = 1.000
ManualToolsTitle.Position = UDim2.new(0.023160249, 0, 0.262948215, 0)
ManualToolsTitle.Size = UDim2.new(0, 164, 0, 30)
ManualToolsTitle.Font = Enum.Font.Merriweather
ManualToolsTitle.Text = "Manual Tools"
ManualToolsTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
ManualToolsTitle.TextSize = 28.000

AutoToolsTitle.Name = "AutoTools"
AutoToolsTitle.Parent = AutoFarm
AutoToolsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoToolsTitle.BackgroundTransparency = 1.000
AutoToolsTitle.Position = UDim2.new(0.554667115, 0, 0.262948215, 0)
AutoToolsTitle.Size = UDim2.new(0, 153, 0, 30)
AutoToolsTitle.Font = Enum.Font.Merriweather
AutoToolsTitle.Text = "Auto Tools"
AutoToolsTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoToolsTitle.TextSize = 28.000
LegendaryFinder.Name = "LegendaryFinder"
LegendaryFinder.Parent = AutoFarm
LegendaryFinder.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
LegendaryFinder.BorderColor3 = Color3.fromRGB(0, 0, 0)
LegendaryFinder.Position = UDim2.new(0.0644763708, 0, 0.426423341, 0)
LegendaryFinder.Size = UDim2.new(0, 132, 0, 33)
LegendaryFinder.Font = Enum.Font.Merriweather
LegendaryFinder.Text = "Leg Finder"
LegendaryFinder.TextColor3 = Color3.fromRGB(0, 0, 0)
LegendaryFinder.TextSize = 26.000
LegendaryFinder.TextWrapped = true
LegendaryFinder.MouseButton1Click:Connect(function()
	coroutine.wrap(function()
		local script = [[
        repeat wait() until game:GetService("Players") ~= nil and game:GetService("Players").LocalPlayer ~= nil
        local ActionID = "0x" .. math.random(100,999)
        rconsoleclear()
        rconsolename("Wild X | Code: " .. ActionID)
        rconsoleprint("@@LIGHT_GRAY@@")
        rconsoleprint("Restarting:\n")
            
        local HttpService = game:GetService("HttpService")
        local TPService = game:GetService("TeleportService")
        
        wait()
        local function check()
            rconsoleprint("@@DARK_GRAY@@")
            rconsoleprint("Connecting to server...\n")
            repeat wait() until game:GetService("Workspace") ~= nil and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Entities") and game:GetService("Workspace")["WORKSPACE_Entities"]:FindFirstChild("Animals") and game:GetService("Workspace")["WORKSPACE_Entities"].Animals:FindFirstChildOfClass("Model") and game:GetService("Workspace"):FindFirstChild("WORKSPACE_Geometry")
            wait(2)
            local objects = {}
            local exists = false
            local c = 0
            for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Entities"].Animals:GetChildren()) do
                local health = v:WaitForChild("Health")
                if health and health.Value > 500 then 
                    c = c + 1
                    objects[c] = {"Legendary", v}
                    exists = true
                end
            end

            for i,v in pairs(game:GetService("Workspace")["WORKSPACE_Geometry"]:GetDescendants()) do
                if v:IsA("ParticleEmitter") and v.Name == "Strike2" then
                    c = c + 1
                    objects[c] = {"Thunderstruck Tree", v.Parent.Parent}
                    exists = true
                end
            end
            return exists, objects
        end
        local exists, objects = check()
        if exists then
            local Camera = workspace.CurrentCamera
            local Player = game:GetService("Players").LocalPlayer
            local RS = game:GetService("RunService")

            local RGB = Color3.fromRGB
            local V2 = Vector2.new
            local ROUND = math.round

            local ESP = {}
            function ESP:add(object, name, col) 
                local NAME = Drawing.new("Text")
                NAME.Text = name
                NAME.Size = 16
                NAME.Color = col
                NAME.Center = true
                NAME.Visible = true
                NAME.Transparency = 1
                NAME.Position = V2(0, 0)
                NAME.Outline = true
                NAME.OutlineColor = RGB(10, 10, 10)
                NAME.Font = 3
                
                local DISTANCE = Drawing.new("Text")
                DISTANCE.Text = "[]"
                DISTANCE.Size = 14
                DISTANCE.Color = RGB(255, 255, 255)
                DISTANCE.Center = true
                DISTANCE.Visible = true
                DISTANCE.Transparency = 1
                DISTANCE.Position = V2(0, 0)
                DISTANCE.Outline = true
                DISTANCE.OutlineColor = RGB(10, 10, 10)
                DISTANCE.Font = 3
                
                local function Update()
                    local c
                    c = RS.RenderStepped:Connect(function()
                        if object.Parent ~= nil and object.Parent.Parent ~= nil and object.PrimaryPart ~= nil then
                            local p, vis = Camera:WorldToViewportPoint(object.PrimaryPart.Position)
                            if vis then
                                NAME.Position = V2(p.X, p.Y)
                                
                                if Player.Character ~= nil and Player.Character.PrimaryPart ~= nil then
                                    DISTANCE.Position = NAME.Position + V2(0, NAME.TextBounds.Y/1.2)
                                    DISTANCE.Text = "["..ROUND((Player.Character.PrimaryPart.Position - object.PrimaryPart.Position).magnitude).."m]"
                                    DISTANCE.Visible = true
                                else
                                    DISTANCE.Visible = false
                                end
                                
                                NAME.Visible = true
                            else
                                NAME.Visible = false
                                DISTANCE.Visible = false
                            end
                        else
                            NAME.Visible = false
                            DISTANCE.Visible = false
                            if object.Parent == nil or object.Parent.Parent == nil then
                                NAME:Remove()
                                DISTANCE:Remove()
                                c:Disconnect()
                            end
                        end
                    end)
                end
                coroutine.wrap(Update)()
            end

            rconsoleprint("@@LIGHT_GREEN@@")
            for i,v in pairs(objects) do
                if v[1] == "Legendary" then
                    rconsoleprint("Found Legendary "..v[2].Name.." !\n")
                    ESP:add(v[2], "Legendary "..v[2].Name, RGB(255, 248, 145))
                elseif v[1] == "Thunderstruck Tree" then
                    rconsoleprint("Found Thunderstruck Tree !\n")
                    ESP:add(v[2], "Thunderstruck Tree", RGB(0, 255, 208))
                end
            end
        else
            rconsoleprint("@@GREEN@@")
            rconsoleprint("Found 0\n")
            
            local Servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
            game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
                if State == Enum.TeleportState.Started then
                    syn.queue_on_teleport('loadstring(readfile("WildX.lua"))()')
                end
            end)
            
            local new = math.random(1, #Servers.data)
            if Servers.data[new].playing >= Servers.data[new].maxPlayers-1 then
                repeat 
                    new = math.random(1, #Servers.data)
                    wait()
                until Servers.data[new].playing < Servers.data[new].maxPlayers-1
            end
            
            rconsoleprint("@@LIGHT_RED@@")
            rconsoleprint("Connecting to Server: ")
            rconsoleprint("@@RED@@")
            rconsoleprint(new.."\n")
            wait(2)
            TPService:TeleportToPlaceInstance(game.PlaceId, Servers.data[new].id)
        end
    ]]

		writefile("WildX.lua", script)
		wait(0.5)
		loadstring(readfile("WildX.lua"))()
	end)()
end)


-- AIM MOD
AimMod.Name = "AimMod"
AimMod.Parent = PageFrames
AimMod.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimMod.BackgroundTransparency = 1.000
AimMod.Size = UDim2.new(0, 364, 0, 251)
AimMod.Visible = false

AimModTitle.Name = "AimModTitle"
AimModTitle.Parent = AimMod
AimModTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimModTitle.BackgroundTransparency = 1.000
AimModTitle.Position = UDim2.new(0.231091768, 0, 0.0398406386, 0)
AimModTitle.Size = UDim2.new(0, 201, 0, 31)
AimModTitle.Font = Enum.Font.Merriweather
AimModTitle.Text = "Aim Mods"
AimModTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
AimModTitle.TextSize = 35.000

divider1_3.Name = "divider1"
divider1_3.Parent = AimMod
divider1_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider1_3.BackgroundTransparency = 1.000
divider1_3.Position = UDim2.new(0.00124250143, 0, 0.163346618, 0)
divider1_3.Size = UDim2.new(0, 362, 0, 32)
divider1_3.Image = "http://www.roblox.com/asset/?id=8778648687"
divider1_3.ScaleType = Enum.ScaleType.Crop

SilentAim.Name = "SilentAim"
SilentAim.Parent = AimMod
SilentAim.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
SilentAim.BorderColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.Position = UDim2.new(0.0644764304, 0, 0.294949234, 0)
SilentAim.Size = UDim2.new(0, 132, 0, 33)
SilentAim.Font = Enum.Font.Merriweather
SilentAim.Text = "Silent Aim"
SilentAim.TextColor3 = Color3.fromRGB(0, 0, 0)
SilentAim.TextSize = 26.000
SilentAim.TextWrapped = true
SilentAim.MouseButton1Click:connect(function()

end)


ShowFOV.Name = "ShowFOV"
ShowFOV.Parent = AimMod
ShowFOV.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
ShowFOV.BorderColor3 = Color3.fromRGB(0, 0, 0)
ShowFOV.Position = UDim2.new(0.580493152, 0, 0.29880479, 0)
ShowFOV.Size = UDim2.new(0, 131, 0, 33)
ShowFOV.Font = Enum.Font.Merriweather
ShowFOV.Text = "Show FOV"
ShowFOV.TextColor3 = Color3.fromRGB(0, 0, 0)
ShowFOV.TextSize = 26.000
ShowFOV.TextWrapped = true

fovBOX.Name = "fovBOX"
fovBOX.Parent = AimMod
fovBOX.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
fovBOX.BorderColor3 = Color3.fromRGB(0, 0, 0)
fovBOX.Position = UDim2.new(0.580493152, 0, 0.482071728, 0)
fovBOX.Size = UDim2.new(0, 130, 0, 33)
fovBOX.Font = Enum.Font.Merriweather
fovBOX.Text = "Input Value"
fovBOX.TextColor3 = Color3.fromRGB(0, 0, 0)
fovBOX.TextSize = 26.000

SwitchMod.Name = "SwitchMod"
SwitchMod.Parent = AimMod
SwitchMod.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
SwitchMod.BorderColor3 = Color3.fromRGB(0, 0, 0)
SwitchMod.Position = UDim2.new(0.0644764304, 0, 0.482071728, 0)
SwitchMod.Size = UDim2.new(0, 132, 0, 33)
SwitchMod.Font = Enum.Font.Merriweather
SwitchMod.Text = "Switch Mod"
SwitchMod.TextColor3 = Color3.fromRGB(0, 0, 0)
SwitchMod.TextSize = 26.000
SwitchMod.TextWrapped = true

GameMod.Name = "GameMod"
GameMod.Parent = PageFrames
GameMod.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameMod.BackgroundTransparency = 1.000
GameMod.Size = UDim2.new(0, 365, 0, 251)
GameMod.Visible = false

FullbrightButton_2.Name = "FullbrightButton"
FullbrightButton_2.Parent = GameMod
FullbrightButton_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
FullbrightButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
FullbrightButton_2.Position = UDim2.new(0.580493152, 0, 0.426423341, 0)
FullbrightButton_2.Size = UDim2.new(0, 131, 0, 33)
FullbrightButton_2.Font = Enum.Font.Merriweather
FullbrightButton_2.Text = "Fullbright"
FullbrightButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
FullbrightButton_2.TextSize = 26.000
FullbrightButton_2.TextWrapped = true
FullbrightButton_2.MouseButton1Click:connect(function()
	if FullbrightButton_2.BackgroundColor3 == Color3.fromRGB(22, 22, 22) then
		FullbrightButton_2.BackgroundColor3 = Color3.fromRGB(3, 83, 26)
		if FullbrightButton_2.BackgroundColor3 == Color3.fromRGB(3, 83, 26) then
			while true do
				if game:GetService("Lighting").Ambient and game:GetService("Lighting").ColorShift_Bottom and game:GetService("Lighting").ColorShift_Top ~= Color3.new(1, 1, 1) then
					game:GetService("Lighting").Ambient = Color3.new(1, 1, 1)
					game:GetService("Lighting").ColorShift_Bottom = Color3.new(1, 1, 1)
					game:GetService("Lighting").ColorShift_Top = Color3.new(1, 1, 1)
				end
			end
		end

	else if FullbrightButton_2.BackgroundColor3 == Color3.fromRGB(3, 83, 26) then
			FullbrightButton_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			if FullbrightButton_2.BackgroundColor3 == Color3.fromRGB(22, 22, 22) then
				while true do
					if game:GetService("Lighting").Ambient and game:GetService("Lighting").ColorShift_Bottom and game:GetService("Lighting").ColorShift_Top ~= Color3.new(0, 0, 0) then
						game:GetService("Lighting").Ambient = Color3.new(0, 0, 0)
						game:GetService("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
						game:GetService("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
					end
				end
			end
		end
	end
end)

PlayerESP.Name = "PlayerESP"
PlayerESP.Parent = GameMod
PlayerESP.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
PlayerESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerESP.Position = UDim2.new(0.0644763708, 0, 0.426423341, 0)
PlayerESP.Size = UDim2.new(0, 132, 0, 33)
PlayerESP.Font = Enum.Font.Merriweather
PlayerESP.Text = "Player ESP"
PlayerESP.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerESP.TextSize = 26.000
PlayerESP.TextWrapped = true

divider1_4.Name = "divider1"
divider1_4.Parent = GameMod
divider1_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider1_4.BackgroundTransparency = 1.000
divider1_4.Position = UDim2.new(0.00124250143, 0, 0.163346618, 0)
divider1_4.Size = UDim2.new(0, 362, 0, 32)
divider1_4.Image = "http://www.roblox.com/asset/?id=8778648687"
divider1_4.ScaleType = Enum.ScaleType.Crop

GameModTitle_2.Name = "GameModTitle"
GameModTitle_2.Parent = GameMod
GameModTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameModTitle_2.BackgroundTransparency = 1.000
GameModTitle_2.Position = UDim2.new(0.231091768, 0, 0.0398406386, 0)
GameModTitle_2.Size = UDim2.new(0, 201, 0, 31)
GameModTitle_2.Font = Enum.Font.Merriweather
GameModTitle_2.Text = "Game Mods"
GameModTitle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
GameModTitle_2.TextSize = 35.000

VisualsTitle_2.Name = "VisualsTitle"
VisualsTitle_2.Parent = GameMod
VisualsTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualsTitle_2.BackgroundTransparency = 1.000
VisualsTitle_2.Position = UDim2.new(0.023160249, 0, 0.262948215, 0)
VisualsTitle_2.Size = UDim2.new(0, 164, 0, 30)
VisualsTitle_2.Font = Enum.Font.Merriweather
VisualsTitle_2.Text = "Visuals"
VisualsTitle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
VisualsTitle_2.TextSize = 28.000

MiscTitle_2.Name = "MiscTitle"
MiscTitle_2.Parent = GameMod
MiscTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscTitle_2.BackgroundTransparency = 1.000
MiscTitle_2.Position = UDim2.new(0.554667115, 0, 0.262948215, 0)
MiscTitle_2.Size = UDim2.new(0, 153, 0, 30)
MiscTitle_2.Font = Enum.Font.Merriweather
MiscTitle_2.Text = "Misc"
MiscTitle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscTitle_2.TextSize = 28.000

AnimalESP.Name = "AnimalESP"
AnimalESP.Parent = GameMod
AnimalESP.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
AnimalESP.BorderColor3 = Color3.fromRGB(0, 0, 0)
AnimalESP.Position = UDim2.new(0.0644763708, 0, 0.601722121, 0)
AnimalESP.Size = UDim2.new(0, 132, 0, 33)
AnimalESP.Font = Enum.Font.Merriweather
AnimalESP.Text = "Animal ESP"
AnimalESP.TextColor3 = Color3.fromRGB(0, 0, 0)
AnimalESP.TextSize = 26.000
AnimalESP.TextWrapped = true
--[[ AnimalESP.MouseButton1Click:Connect(function()
	if AnimalESP.BackgroundColor3 == Color3.fromRGB(22, 22, 22) then
		AnimalESP.BackgroundColor3 = Color3.fromRGB(3, 83, 26)
		local esp_settings = { ---- table for esp settings 
			textsize = 8,
			colour = 255,255,255
		}

		local gui = Instance.new("BillboardGui")
		local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel



		gui.Name = "Cracked esp"; ---- properties of the esp
		gui.ResetOnSpawn = false
		gui.AlwaysOnTop = true;
		gui.LightInfluence = 0;
		gui.Size = UDim2.new(1.75, 0, 1.75, 0);
		esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		esp.Text = ""
		esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
		esp.BorderSizePixel = 4;
		esp.BorderColor3 = Color3.new(esp_settings.colour)
		esp.BorderSizePixel = 0
		esp.Font = "GothamSemibold"
		esp.TextSize = esp_settings.textsize
		esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour

		game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
			for i,v in pairs (game:GetService("Players"):GetPlayers()) do
				if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil and v.TeamColor ~= game:GetService("Players").LocalPlayer.TeamColor then -- craeting checks for team check, local player etc
					esp.Text = "{"..v.Name.."}"
					gui:Clone().Parent = v.Character.Head
				end
			end
		end)
		
	else if AnimalESP.BackgroundColor3 == Color3.fromRGB(3, 83, 26) then
			AnimalESP.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			esp.Visible = false
			gui.Enabled = false
		end
	end
end)
]]
ServerHop_2.Name = "ServerHop"
ServerHop_2.Parent = GameMod
ServerHop_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
ServerHop_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerHop_2.Position = UDim2.new(0.580493152, 0, 0.601722121, 0)
ServerHop_2.Size = UDim2.new(0, 131, 0, 33)
ServerHop_2.Font = Enum.Font.Merriweather
ServerHop_2.Text = "Server Hop"
ServerHop_2.TextColor3 = Color3.fromRGB(0, 0, 0)
ServerHop_2.TextSize = 26.000
ServerHop_2.TextWrapped = true

SectionFrame.Name = "SectionFrame"
SectionFrame.Parent = DaddyFrame
SectionFrame.Active = true
SectionFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionFrame.Position = UDim2.new(0.0201357715, 0, 0.182119817, 0)
SectionFrame.Size = UDim2.new(0, 138, 0, 245)
SectionFrame.CanvasSize = UDim2.new(0, 0, 0.100000001, 0)
SectionFrame.ScrollBarThickness = 0

Profile_2.Name = "Profile"
Profile_2.Parent = SectionFrame
Profile_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Profile_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Profile_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
Profile_2.Size = UDim2.new(0, 122, 0, 31)
Profile_2.Font = Enum.Font.Merriweather
Profile_2.Text = "Profile"
Profile_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Profile_2.TextSize = 26.000
Profile_2.TextWrapped = true

UIListLayout.Parent = SectionFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 9)

AimMod_2.Name = "AimMod"
AimMod_2.Parent = SectionFrame
AimMod_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
AimMod_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimMod_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
AimMod_2.Size = UDim2.new(0, 122, 0, 31)
AimMod_2.Font = Enum.Font.Merriweather
AimMod_2.Text = "Aim Mod"
AimMod_2.TextColor3 = Color3.fromRGB(0, 0, 0)
AimMod_2.TextSize = 26.000
AimMod_2.TextWrapped = true

GameMod_2.Name = "GameMod"
GameMod_2.Parent = SectionFrame
GameMod_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
GameMod_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameMod_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
GameMod_2.Size = UDim2.new(0, 122, 0, 31)
GameMod_2.Font = Enum.Font.Merriweather
GameMod_2.Text = "Game Mod"
GameMod_2.TextColor3 = Color3.fromRGB(0, 0, 0)
GameMod_2.TextSize = 26.000
GameMod_2.TextWrapped = true

AutoFarm_2.Name = "AutoFarm"
AutoFarm_2.Parent = SectionFrame
AutoFarm_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
AutoFarm_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoFarm_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
AutoFarm_2.Size = UDim2.new(0, 122, 0, 31)
AutoFarm_2.AutoButtonColor = false
AutoFarm_2.Font = Enum.Font.Merriweather
AutoFarm_2.Text = "Auto Farm"
AutoFarm_2.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFarm_2.TextSize = 26.000
AutoFarm_2.TextWrapped = true

AutoFarmLock.Name = "AutoFarmLock"
AutoFarmLock.Parent = AutoFarm_2
AutoFarmLock.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AutoFarmLock.BackgroundTransparency = 0.250
AutoFarmLock.BorderSizePixel = 0
AutoFarmLock.Size = UDim2.new(0, 122, 0, 31)

locked_3.Name = "locked"
locked_3.Parent = AutoFarmLock
locked_3.BackgroundTransparency = 1.000
locked_3.LayoutOrder = 2
locked_3.Position = UDim2.new(0.379999995, 0, 0, 0)
locked_3.Size = UDim2.new(0, 29, 0, 31)
locked_3.ZIndex = 2
locked_3.Image = "rbxassetid://6764432408"
locked_3.ImageColor3 = Color3.fromRGB(25, 25, 25)
locked_3.ImageRectOffset = Vector2.new(150, 250)
locked_3.ImageRectSize = Vector2.new(50, 50)
locked_3.ScaleType = Enum.ScaleType.Crop

Settings_2.Name = "Settings"
Settings_2.Parent = SectionFrame
Settings_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Settings_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
Settings_2.Size = UDim2.new(0, 122, 0, 31)
Settings_2.Font = Enum.Font.Merriweather
Settings_2.Text = "Settings"
Settings_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Settings_2.TextSize = 26.000
Settings_2.TextWrapped = true

Credits_2.Name = "Credits"
Credits_2.Parent = SectionFrame
Credits_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Credits_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_2.Position = UDim2.new(0.142487943, 0, 0.247140497, 0)
Credits_2.Size = UDim2.new(0, 122, 0, 31)
Credits_2.Font = Enum.Font.Merriweather
Credits_2.Text = "Credits"
Credits_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits_2.TextSize = 26.000
Credits_2.TextWrapped = true

Header.Name = "Header"
Header.Parent = DaddyFrame
Header.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
Header.Position = UDim2.new(0.00062063837, 0, 0.00241949619, 0)
Header.Size = UDim2.new(0, 533, 0, 38)

Shadow.Name = "Shadow"
Shadow.Parent = Header
Shadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shadow.Position = UDim2.new(4.17187857e-06, 0, 1.01979709, 0)
Shadow.Size = UDim2.new(0.99966383, 0, 0.0355248824, 4)

Close.Name = "Close"
Close.Parent = Header
Close.BackgroundTransparency = 1.000
Close.LayoutOrder = 5
Close.Position = UDim2.new(0.931844056, 0, 0.152173907, 0)
Close.Size = UDim2.new(0, 28, 0, 28)
Close.ZIndex = 2
Close.Image = "rbxassetid://3926305904"
Close.ImageColor3 = Color3.fromRGB(0, 0, 0)
Close.ImageRectOffset = Vector2.new(284, 4)
Close.ImageRectSize = Vector2.new(24, 24)
Close.MouseButton1Click:connect(function()
	DaddyFrame.Visible = false
	ImageButton.Visible = false
end)

WildXHeader.Name = "WildXHeader"
WildXHeader.Parent = Header
WildXHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WildXHeader.BackgroundTransparency = 1.000
WildXHeader.Position = UDim2.new(0.0131086139, 0, 0.152173489, 0)
WildXHeader.Size = UDim2.new(0, 92, 0, 28)
WildXHeader.Font = Enum.Font.Merriweather
WildXHeader.Text = "Wild X"
WildXHeader.TextColor3 = Color3.fromRGB(0, 0, 0)
WildXHeader.TextScaled = true
WildXHeader.TextSize = 14.000
WildXHeader.TextWrapped = true

ByHeader.Name = "ByHeader"
ByHeader.Parent = Header
ByHeader.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ByHeader.BackgroundTransparency = 1.000
ByHeader.Position = UDim2.new(0.172284648, 0, 0.415331393, 0)
ByHeader.Size = UDim2.new(0, 68, 0, 18)
ByHeader.Font = Enum.Font.Merriweather
ByHeader.Text = "By Creten"
ByHeader.TextColor3 = Color3.fromRGB(0, 0, 0)
ByHeader.TextScaled = true
ByHeader.TextSize = 14.000
ByHeader.TextWrapped = true

RankOutput.Text = "Loading ."
wait(0.5)
DaddyFrame.Visible = false

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "TrullzSec API",
	Text = "Powered By TrullzSec.  v0.07 Has Loaded!",
	Icon = "rbxassetid://9697346952"
})

if player.Name == "Dinoblox" or "Creten" then
	RankOutput.Text = "Loading .."
	wait(1)
	RankOutput.Text = "Loading ..."
	wait(0.5)
	RankOutput.Text = "Owner"
	RankOutput.TextColor3 = Color3.fromRGB(157, 0, 255)
	DaddyFrame.Visible = true
end

if player.Name == "WildX_Test" then
	RankOutput.Text = "Loading .."
	wait(1)
	RankOutput.Text = "Loading ..."
	wait(1)
	RankOutput.Text = "Loading ."
	wait(1)
	RankOutput.Text = "Loading .."
	wait(0.5)
	RankOutput.Text = "Contributor"
	RankOutput.TextColor3 = Color3.fromRGB(1, 124, 255)
	DaddyFrame.Visible = true
end

if player.Name == "Yosaun" then
	RankOutput.Text = "Loading .."
	wait(1)
	RankOutput.Text = "Loading ..."
	wait(1)
	RankOutput.Text = "Loading ."
	wait(1)
	RankOutput.Text = "Loading .."
	wait(0.5)
	RankOutput.Text = "👑 Buyer + 👑"
	RankOutput.TextColor3 = Color3.fromRGB(234, 255, 0)
	DaddyFrame.Visible = true
end

if player.Name == "N/A" then
	RankOutput.Text = "Loading .."
	wait(1)
	RankOutput.Text = "Loading ..."
	wait(1)
	RankOutput.Text = "Loading ."
	wait(1)
	RankOutput.Text = "Loading .."
	wait(1)
	RankOutput.Text = "Loading ..."
	wait(0.5)
	RankOutput.Text = "Buyer"
	RankOutput.TextColor3 = Color3.fromRGB(255, 157, 0)
	DaddyFrame.Visible = true
end

if player.Name == "N/A" then
	RankOutput.Text = "😔 Blacklisted 😔"
	RankOutput.TextColor3 = Color3.fromRGB(255, 0, 0)
	DaddyFrame.Visible = true
end

if RankOutput == "👑 Buyer + 👑" or "Contributor" or "Owner" then
	AutoFarmLock.Visible = false
	AutoFarm_2.AutoButtonColor = true
	Server2Lock.Visible = false
	Server3Lock.Visible = false
end

if 	RankOutput.Text == "Owner" or "Contributor" or "👑 Buyer + 👑" then
	ConnectionOutput.Text = "Testing Connection ."
	wait(1)
	ConnectionOutput.Text = "Testing Connection .."
	wait(1)
	ConnectionOutput.Text = (connectplus)
	if ConnectionOutput.Text == "Server 2" then
		storage_2.ImageColor3 = Color3.fromRGB(0, 255, 0)
	end
	if ConnectionOutput.Text == "Server 3" then
		storage_3.ImageColor3 = Color3.fromRGB(0, 255, 0)
	end
end

if 	RankOutput.Text == "Buyer" then
	storage.ImageColor3 = Color3.fromRGB(0, 255, 0)
	ConnectionOutput.Text = "Testing Connection ."
	wait(1)
	ConnectionOutput.Text = "Testing Connection .."
	wait(1)
	ConnectionOutput.Text = "Testing Connection ..."
	wait(1)
	ConnectionOutput.Text = "Testing Connection ."
	wait(1)
	ConnectionOutput.Text = "Testing Connection .."
	wait(1)
	ConnectionOutput.Text = "Testing Connection ..."
	wait(1)
	ConnectionOutput.Text = "Testing Connection ."
	wait(0.5)
	ConnectionOutput.Text = "Server 1"	
end

if 	RankOutput.Text == "😔 Blacklisted 😔" then
	ConnectionOutput.TextColor3 = Color3.fromRGB(255, 0, 0)
	ConnectionOutput.Text = "Blacklisted"
end

ImageButton.Parent = Thingy
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.947911382, 0, 0.00833333377, 0)
ImageButton.Size = UDim2.new(0, 99, 0, 59)
ImageButton.ZIndex = 100
ImageButton.Image = "http://www.roblox.com/asset/?id=9697346943"
ImageButton.ScaleType = Enum.ScaleType.Fit

TextLabel.Parent = ImageButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.0144441565, 0, 1, 0)
TextLabel.Size = UDim2.new(0, 99, 0, 16)
TextLabel.ZIndex = 100
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "TrullzSec API"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 11.000

Profile_2.MouseButton1Click:connect(function()
	Profile.Visible = true
	AimMod.Visible = false
	AutoFarm.Visible = false
	Credits.Visible = false
	GameMod.Visible = false
	Settings.Visible = false
end)

Credits_2.MouseButton1Click:connect(function()
	Profile.Visible = false
	AimMod.Visible = false
	AutoFarm.Visible = false
	Credits.Visible = true
	GameMod.Visible = false
	Settings.Visible = false
end)

GameMod_2.MouseButton1Click:connect(function()
	Profile.Visible = false
	AimMod.Visible = false
	AutoFarm.Visible = false
	Credits.Visible = false
	GameMod.Visible = true
	Settings.Visible = false
end)

AimMod_2.MouseButton1Click:connect(function()
	Profile.Visible = false
	AimMod.Visible = true
	AutoFarm.Visible = false
	Credits.Visible = false
	GameMod.Visible = false
	Settings.Visible = false
end)

AutoFarm_2.MouseButton1Click:connect(function()
	Profile.Visible = false
	AimMod.Visible = false
	AutoFarm.Visible = true
	Credits.Visible = false
	GameMod.Visible = false
	Settings.Visible = false
end)

Settings_2.MouseButton1Click:connect(function()
	Profile.Visible = false
	AimMod.Visible = false
	AutoFarm.Visible = false
	Credits.Visible = false
	GameMod.Visible = false
	Settings.Visible = true
end)

if 	RankOutput.Text == "Buyer" then
	ServerHop_2.MouseButton1Click:connect(function()
		if ServerHop_2.BackgroundColor3 == Color3.fromRGB(22, 22, 22) then
			ServerHop_2.BackgroundColor3 = Color3.fromRGB(3, 83, 26)
			ServerHop_2.AutoButtonColor = false
			ServerHop_2.Selectable = false
			ServerHop_2.Text = "Loading (5)"
			wait (1)
			ServerHop_2.Text = "Loading (4)"
			wait (1)
			ServerHop_2.Text = "Loading (3)"
			wait (1)
			ServerHop_2.Text = "Loading (2)"
			wait (1)
			ServerHop_2.Text = "Loading (1)"
			wait (1)
			ServerHop_2.Text = "Hoping"
			wait (1)

			local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))
			for i,v in pairs(Servers.data) do
				if v.playing ~= v.maxPlayers then
					game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
				end
			end
	--[[
		else if ServerHop_2.Text == "Cancel (5)" or "Cancel (4)" or "Cancel (3)" or "Cancel (2)" or "Cancel (1)" then
				ServerHop_2.MouseButton1Click:Connect(function()
					ServerHop_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					local Servers = print("Cancelled")
					ServerHop_2.Text = "Cancelled"
					wait (1)
					ServerHop_2.Text = "Server Hop"	
					wait(5)
					local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))
				end)
		end
	]]--
		end	

	end)
end

if 	RankOutput.Text == "👑 Buyer + 👑" or "Contributor" or "Owner" then
	ServerHop_2.MouseButton1Click:connect(function()
		if ServerHop_2.BackgroundColor3 == Color3.fromRGB(22, 22, 22) then
			ServerHop_2.BackgroundColor3 = Color3.fromRGB(3, 83, 26)
			ServerHop_2.AutoButtonColor = false
			ServerHop_2.Selectable = false
			ServerHop_2.Text = "Loading (3)"
			wait (1)
			ServerHop_2.Text = "Loading (2)"
			wait (1)
			ServerHop_2.Text = "Loading (1)"
			wait (1)
			ServerHop_2.Text = "Hoping"
			wait (0.5)

			local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))
			for i,v in pairs(Servers.data) do
				if v.playing ~= v.maxPlayers then
					game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
				end
			end
	--[[
		else if ServerHop_2.Text == "Cancel (5)" or "Cancel (4)" or "Cancel (3)" or "Cancel (2)" or "Cancel (1)" then
				ServerHop_2.MouseButton1Click:Connect(function()
					ServerHop_2.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					local Servers = print("Cancelled")
					ServerHop_2.Text = "Cancelled"
					wait (1)
					ServerHop_2.Text = "Server Hop"	
					wait(5)
					local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/2317712696/servers/Public?sortOrder=Asc&limit=100"))
				end)
		end
	]]--
		end	

	end)
end
