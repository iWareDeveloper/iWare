--by me_ozoneYT YT chanel :https://www.youtube.com/channel/UCOUFlqujCTz0UfBsrNbvJFA

local function a(b, c)
    local d = getfenv(c)
    local e =
        setmetatable(
        {},
        {__index = function(self, f)
                if f == "script" then
                    return b
                else
                    return d[f]
                end
            end}
    )
    setfenv(c, e)
    return c
end

local g = game:GetService("Players")
local h = sethiddenproperty or set_hidden_property or set_hidden_prop
local i = setsimulationradius or set_simulation_radius
local j = nil
local k = {}
local l = Instance.new("Model")
l.Parent = game:GetService("Lighting")
local m = Instance.new("Tool")
local n = Instance.new("Part")
local o = Instance.new("Script")
local p = Instance.new("LocalScript")
m.Name = "Delet Tool"
m.Parent = l
m.Grip = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0)
m.GripForward = Vector3.new(-0, -1, -0)
m.GripRight = Vector3.new(0, 0, 1)
m.GripUp = Vector3.new(1, 0, 0)
n.Name = "Handle"
n.Parent = m
n.CFrame = CFrame.new(-17.2635937, 15.4915619, 46, 0, 1, 0, 1, 0, 0, 0, 0, -1)
n.Orientation = Vector3.new(0, 180, 90)
n.Position = Vector3.new(-17.2635937, 15.4915619, 46)
n.Rotation = Vector3.new(-180, 0, -90)
n.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
n.Transparency = 1
n.Size = Vector3.new(1, 1.20000005, 1)
n.BottomSurface = Enum.SurfaceType.Weld
n.BrickColor = BrickColor.new("Really black")
n.Material = Enum.Material.Metal
n.TopSurface = Enum.SurfaceType.Smooth
n.brickColor = BrickColor.new("Really black")
o.Name = "LineConnect"
o.Parent = m
table.insert(
    k,
    a(
        o,
        function()
            wait()
            local q = script.Part2
            local r = script.Part1.Value
            local s = script.Part2.Value
            local t = script.Par.Value
            local color = script.Color
            local u = Instance.new("Part")
            u.TopSurface = 0
            u.BottomSurface = 0
            u.Reflectance = .5
            u.Name = "Laser"
            u.Locked = true
            u.CanCollide = false
            u.Anchored = true
            u.formFactor = 0
            u.Size = Vector3.new(1, 1, 1)
            local v = Instance.new("BlockMesh")
            v.Parent = u
            while true do
                if q.Value == nil then
                    break
                end
                if r == nil or s == nil or t == nil then
                    break
                end
                if r.Parent == nil or s.Parent == nil then
                    break
                end
                if t.Parent == nil then
                    break
                end
                local w = CFrame.new(r.Position, s.Position)
                local dist = (r.Position - s.Position).magnitude
                u.Parent = t
                u.BrickColor = color.Value.BrickColor
                u.Reflectance = color.Value.Reflectance
                u.Transparency = color.Value.Transparency
                u.CFrame = CFrame.new(r.Position + w.lookVector * dist / 2)
                u.CFrame = CFrame.new(u.Position, s.Position)
                v.Scale = Vector3.new(0,0,9999)
                wait()
            end
            u:remove()
            script:remove()
        end
    )
)
o.Disabled = true
p.Name = "MainScript"
p.Parent = m
table.insert(
    k,
    a(
        p,
        function()
            wait()
            tool = script.Parent
            lineconnect = tool.LineConnect
            object = nil
            mousedown = false
            found = false
            BP = Instance.new("BodyPosition")
            BP.maxForce = Vector3.new(math.huge * math.huge, math.huge * math.huge, math.huge * math.huge)
            BP.P = BP.P * 1.1
            dist = nil
            point = Instance.new("Part")
            point.Locked = true
            point.Anchored = true
            point.formFactor = 0
            point.Shape = 0
            point.BrickColor = BrickColor.Black()
            point.Size = Vector3.new(1, 1, 1)
            point.CanCollide = false
            local v = Instance.new("SpecialMesh")
            v.MeshType = "Sphere"
            v.Scale = Vector3.new(.7, .7, .7)
            v.Parent = point
            handle = tool.Handle
            front = tool.Handle
            color = tool.Handle
            objval = nil
            local x = false
            local y = BP:clone()
            y.maxForce = Vector3.new(9e9, 9e9, 9e9)
            local function z(r, s, t)
                local A = Instance.new("ObjectValue")
                A.Value = r
                A.Name = "Part1"
                local B = Instance.new("ObjectValue")
                B.Value = s
                B.Name = "Part2"
                local C = Instance.new("ObjectValue")
                C.Value = t
                C.Name = "Par"
                local D = Instance.new("ObjectValue")
                D.Value = color
                D.Name = "Color"
                local E = lineconnect:clone()
                E.Disabled = false
                A.Parent = E
                B.Parent = E
                C.Parent = E
                D.Parent = E
                E.Parent = workspace
                if s == object then
                    objval = B
                end
            end
            local function F(G)
                if mousedown == true then
                    return
                end
                mousedown = true
                coroutine.resume(
                    coroutine.create(
                        function()
                            local H = point:clone()
                            H.Parent = tool
                            z(front, H, workspace)
                            while mousedown == true do
                                H.Parent = tool
                                if object == nil then
                                    if G.Target == nil then
                                        local w = CFrame.new(front.Position, G.Hit.p)
                                        H.CFrame = CFrame.new(front.Position + w.lookVector * 1000)
                                    else
                                        H.CFrame = CFrame.new(G.Hit.p)
                                    end
                                else
                                    z(front, object, workspace)
                                    break
                                end
                                wait()
                            end
                            H:remove()
                        end
                    )
                )
                while mousedown == true do
                    if G.Target ~= nil then
                        local I = G.Target
                        if I.Anchored == false then
                            object = I
                            dist = (2000 - 0)
                            break
                        end
                    end
                    wait()
                end
                while mousedown == true do
                    if object.Parent == nil then
                        break
                    end
                    local w = CFrame.new(front.Position, G.Hit.p)
                    BP.Parent = object
                    BP.position = front.Position + w.lookVector * dist
                    wait()
                end
                BP:remove()
                object = nil
                objval.Value = nil
            end
            local function J(K, G)
                local K = K:lower()
                local L = false
                if K == "q" then
                    if dist >= 5 then
                        dist = dist - 10
                    end
                end
                if K == "r" then
                    if object == nil then
                        return
                    end
                    for M, N in pairs(object:children()) do
                        if N.className == "BodyGyro" then
                            return nil
                        end
                    end
                    BG = Instance.new("BodyGyro")
                    BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                    BG.cframe = CFrame.new(object.CFrame.p)
                    BG.Parent = object
                    repeat
                        wait()
                    until object.CFrame == CFrame.new(object.CFrame.p)
                    BG.Parent = nil
                    if object == nil then
                        return
                    end
                    for M, N in pairs(object:children()) do
                        if N.className == "BodyGyro" then
                            N.Parent = nil
                        end
                    end
                    object.Velocity = Vector3.new(0, 0, 0)
                    object.RotVelocity = Vector3.new(0, 0, 0)
                    object.Orientation = Vector3.new(0, 0, 0)
                end
                if K == "e" then
                    dist = dist + 10
                end
                if K == "t" then
                    if dist ~= 10 then
                        dist = 10
                    end
                end
                if K == "e" then
                    if dist ~= 2000 then
                        dist = 2000
                    end
                end

                if K == "=" then
                    BP.P = BP.P * 1.5
                end
                if K == "-" then
                    BP.P = BP.P * 0.5
                end
                if K == "k" then
                    if h then
                        if j == nil then
                            j =
                                game:GetService("RunService").RenderStepped:Connect(
                                function()
                                    pcall(
                                        function()
                                            settings().Physics.AllowSleep = false
                                            h(g.LocalPlayer, "SimulationRadius", math.huge)
                                            h(g.LocalPlayer, "MaxSimulationRadius", math.huge)
                                            g.LocalPlayer.MaximumSimulationRadius = math.huge
                                            g.LocalPlayer.ReplicationFocus = workspace
                                        end
                                    )
                                end
                            )
                            game:GetService("StarterGui"):SetCore(
                                "SendNotification",
                                {Title = "Simple Net", Text = "Enabled"}
                            )
                        else
                            j:Disconnect()
                            wait()
                            j = nil
                            if i then
                                i(139, 139)
                            else
                                h(g.LocalPlayer, "MaximumSimulationRadius", 139)
                                h(g.LocalPlayer, "SimulationRadius", 139)
                            end
                            wait()
                            game:GetService("StarterGui"):SetCore(
                                "SendNotification",
                                {Title = "Simple Net", Text = "Disabled"}
                            )
                        end
                    else
                        game:GetService("StarterGui"):SetCore(
                            "SendNotification",
                            {Title = "Script Error", Text = "Missing sethiddenproperty"}
                        )
                    end
                end
            end
            local function O(G)
                keymouse = G
                local P = tool.Parent
                human = P.Humanoid
                human.Changed:connect(
                    function()
                        if human.Health == 0 then
                            mousedown = false
                            BP:remove()
                            point:remove()
                            tool:remove()
                        end
                    end
                )
                G.Button1Down:connect(
                    function()
                        F(G)
                    end
                )
                G.Button1Up:connect(
                    function()
                        mousedown = false
                    end
                )
                G.KeyDown:connect(
                    function(K)
                        J(K, G)
                    end
                )
                G.Icon = "rbxasset://textures\\GunCursor.png"
            end
            tool.Equipped:connect(O)
        end
    )
)
game:GetService'Players':Chat("fe btool move tool")
for Q, N in pairs(l:GetChildren()) do
    N.Parent = game:GetService("Players").LocalPlayer.Backpack
    pcall(
        function()
            N:MakeJoints()
        end
    )
end
l:Destroy()
loadstring(game:HttpGet(('https://pastebin.com/raw/8X8LeApF'),true))()
for Q, N in pairs(k) do
    spawn(
        function()
            pcall(N)
        end
    )
end

--netbypass for synapse x

local heartbeat = game:GetService("RunService").Heartbeat
spawn(function()
    while true do heartbeat:Wait()
            game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.pow(math.huge,math.huge)*math.huge)
            game:GetService("RunService").Stepped:wait()
end
end)
