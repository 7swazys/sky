
local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

local darkRed = Color3.fromRGB(30, 10, 15)
local crimsonRed = Color3.fromRGB(60, 15, 25)

for _, effect in pairs(Lighting:GetChildren()) do
    if effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("Atmosphere") then
        effect:Destroy()
    end
end

local colorCorrection = Instance.new("ColorCorrectionEffect")
colorCorrection.Name = "DarkCrimson"
colorCorrection.TintColor = Color3.fromRGB(100, 40, 50)
colorCorrection.Saturation = 0.5
colorCorrection.Contrast = 0.05
colorCorrection.Brightness = 0.03
colorCorrection.Parent = Lighting

local bloom = Instance.new("BloomEffect")
bloom.Name = "RedBloom"
bloom.Intensity = 0.25
bloom.Size = 6
bloom.Threshold = 0.5
bloom.Parent = Lighting

local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere")
atmosphere.Name = "CrimsonAtmosphere"
atmosphere.Density = 0.4
atmosphere.Offset = 0.2
atmosphere.Color = crimsonRed
atmosphere.Decay = darkRed
atmosphere.Glare = 0.1
atmosphere.Haze = 0.8
atmosphere.Parent = Lighting

RunService.RenderStepped:Connect(function()
    Lighting.ClockTime = 14
    
    Lighting.Brightness = 2
    Lighting.FogEnd = 100000
    Lighting.FogStart = 100000
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.GlobalShadows = false
    Lighting.Ambient = darkRed
    Lighting.ExposureCompensation = 0.4
    Lighting.ShadowSoftness = 0.4
end)

print("7swazys will rule the world")
print("7swazys will rule the world")
print("7swazys will rule the world")
print("7swazys will rule the world")
