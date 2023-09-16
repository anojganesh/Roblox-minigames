local mouse = game.Players.LocalPlayer:GetMouse()

script.Parent.Activated:Connect(function()  --fires event when appropriate
	if mouse.Target then 
		local model = mouse.Target:FindFirstAncestorOfClass("Model")
		if model then
			if model:FindFirstChildWhichIsA("Humanoid") then
				script.Parent.Knockback:FireServer(model)
			end
		end
	end
end)
