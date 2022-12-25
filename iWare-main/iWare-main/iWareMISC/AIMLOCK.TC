local localPlayer = game:GetService("Players").LocalPlayer

local function player()
    local target = nil
    local dist = math.huge
    
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= localPlayer.Name then
            if v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") and v.TeamColor ~= localPlayer.TeamColor then
                local magnitude = (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude

                if magnitude < dist then
                    target = v
                    dist = magnitude
                end
        end
    end
    
    return target
end


local camera = game.Workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local aim = false

game:GetService("RunService").RenderStepped:Connect(function()
    if aim then
        camera.CFrame = CFrame.new(camera.CFrame.Position,player().Character.Head.Position)
    end
end)

UIS.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = true
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = false
    end
end)
