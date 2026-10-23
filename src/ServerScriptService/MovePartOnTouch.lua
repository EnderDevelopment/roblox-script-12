-- MovePartOnTouch.lua

local part = script.Parent

local function onTouched(otherPart)
    local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
    if humanoid then
        part.Position = part.Position + Vector3.new(0, 5, 0)
    end
end

part.Touched:Connect(onTouched)