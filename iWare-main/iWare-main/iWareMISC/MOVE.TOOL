--[[ 
e to make unanchord out q to make unanchord near 
k to simple net bypass (this might not work on some game)
--t to make unanchord to comeback fast y to make unanchord far away
]]


local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://216917652"
sound.Parent = game:GetService("SoundService")
sound:Play()
sound.PlaybackSpeed = 1

spawn(function()
local message = Instance.new("Message",workspace)
message.Text  = "Move Tool Loading..."
wait(0.5)
message:Destroy()
end)

loadstring(game:HttpGet(('https://pastebin.com/raw/VHpzmw3a'),true))()
