local soccerBall = game.Workspace.SoccerBall
local kick = script.Parent
--local velocity = Instance.new("BodyVelocity", soccerBall)
local humanoid = game.Players
local Player = kick.Parent.Parent
function onKick()
	if Player:DistanceFromCharacter(soccerBall.Position) <= 5 then
		print("close")
		print(soccerBall.AssemblyLinearVelocity)
		soccerBall:ApplyImpulse((Player.character.HumanoidRootPart.CFrame.lookVector)*400 + Vector3.new(0,1000,0))
	end
end


kick.Activated:Connect(onKick)
