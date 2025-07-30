local player = game.Players.LocalPlayer
local petsFolder = player:FindFirstChild("Pets")

if not petsFolder then
    warn("No pets folder found.")
    return
end

for _, pet in ipairs(petsFolder:GetChildren()) do
    local clone = pet:Clone()
    clone.Name = pet.Name .. "_HACKED"
    clone.Parent = petsFolder
end

print("[EXPLOIT TEST] Duplicated all pets for:", player.Name)
