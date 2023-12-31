--Handles all local client-side events such as sfx and animation.

local Tool = script.Parent
local AnimationR6 = script:WaitForChild("AnimationR6", 1)
local AnimationR15 = script:WaitForChild("AnimationR15", 1)
Tool.Activated:Connect(function() -- does not execute
	local Character = Tool.Parent
	if Character then
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid then 
			local loadedAnim = nil
			local loadedSFX = script:WaitForChild("KickSFX")
			if Humanoid.RigType == Enum.HumanoidRigType.R6 then
				loadedAnim = Humanoid:LoadAnimation(AnimationR6)

			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
				loadedAnim = Humanoid:LoadAnimation(AnimationR15)
				print("kicking")
			end
			if loadedAnim then
				loadedAnim:Play()
				loadedSFX:Play()
				print("kicked")
			end
		end
	end
end) 
