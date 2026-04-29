
while task.wait(1) do
for _,v in pairs(workspace:GetDescendants()) do
if v.Name:find("Chest") and v:IsA("BasePart") then
local h=game.Players.LocalPlayer.Character.HumanoidRootPart
local d=(v.Position-h.Position).Magnitude
game:GetService("TweenService"):Create(h,TweenInfo.new(d/350),{CFrame=v.CFrame}):Play()
task.wait(d/350+0.5)
end
end
end
