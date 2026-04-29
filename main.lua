while task.wait(1) do
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:find("Chest") and v:IsA("Part") then
            local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
            game:GetService("TweenService"):Create(hrp, TweenInfo.new((v.Position-hrp.Position).Magnitude/150), {CFrame=v.CFrame}):Play()
            task.wait((v.Position-hrp.Position).Magnitude/150 + 0.2)
        end
    end
end
