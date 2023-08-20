--handles client-side interactions

local Tool = script.Parent
local AnimationR15 = script:WaitForChild("AnimationR15", 1)
local AnimationR6 = script:WaitForChild("AnimationR6", 1)

Tool.Activated:Connect(function()
    
	local Character = Tool.Parent
	if Character then 
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid then
			local LoadedAnim = nil
			local LoadedSFX = script:WaitForChild("MiningSFX")
        
			if Humanoid.RigType == Enum.HumanoidRigType.R15 and AnimationR15 then 
				LoadedAnim = Humanoid:LoadAnimation(AnimationR15)    
			elseif Humanoid.RigType == Enum.HumanoidRigType.R6 and AnimationR6 then
				LoadedAnim = Humanoid:LoadAnimation(AnimationR6)
			end 
        
			if LoadedAnim then
				LoadedAnim:Play()
				LoadedSFX:Play()
			end
		end
	end	
end)
