local goalPart = script.Parent
local exclaimationModel = game.Workspace.ExMarksRed
local soccerBall = game.Workspace.SoccerBall

function onTouch(part)
	if part == soccerBall then -- if soccer ball touches red goal area
		for i, part in pairs(exclaimationModel:getChildren()) do -- making celebration and sound parts/effects visible for red
			if part:IsA("BasePart") then
				part.Transparency = 0	
			end
		end
		game.SoundService.Crowdsfx:Play()
		game.Workspace.Confetti:MoveTo(Vector3.new(-324.508, 28.872, 192.48))
		wait (3) -- wait 3 seconds, make everything invisible again
		game.Workspace.Confetti:MoveTo(Vector3.new(-786.683, 329.536, 70.776))
		for i, part in pairs(exclaimationModel:getChildren()) do
			if part:IsA("BasePart") then
				part.Transparency = 1	
			end
		end
		local text = game.Workspace.Scoreboard.Redboard.SurfaceGui.TextLabel.Text -- update scoreboard for red
		local text2 = tostring(tonumber(text)+1)
		game.Workspace.Scoreboard.Redboard.SurfaceGui.TextLabel.Text = text2
		
		print("Red Goal")
		soccerBall.Position = Vector3.new(-322.52, 16.345, 82.685) -- bring soccer ball back to center of field, +5 units above field for dropping effect.
		soccerBall.AssemblyLinearVelocity = Vector3.new(0,0,0) -- reset ball velocity to 0
		
	end
end


goalPart.Touched:Connect(onTouch)
