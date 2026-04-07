--------------------------------------------------------------------
-- DEEP BLUE ATMOSPHERE (SCREENSHOT MATCH)
--------------------------------------------------------------------
spawn(function()
    if not game:IsLoaded() then game.Loaded:Wait() end
    task.wait(1)
    local Lighting = game:GetService("Lighting")
    
    -- Cleanup
    for _, effect in pairs(Lighting:GetChildren()) do
        if effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or effect:IsA("Atmosphere") then
            effect:Destroy()
        end
    end

    -- Base Settings
    Lighting.Brightness = 0.3  -- Way darker
    Lighting.ClockTime = 0  -- Midnight
    Lighting.Ambient = Color3.fromRGB(10, 10, 30)
    Lighting.OutdoorAmbient = Color3.fromRGB(5, 5, 20)
    Lighting.ExposureCompensation = 1.5  -- VERY dark
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 200  -- Thick fog
    Lighting.FogStart = 50
    Lighting.FogColor = Color3.fromRGB(20, 20, 60)

    -- Color Correction - Heavy blue tint
    local CC = Instance.new("ColorCorrectionEffect")
    CC.TintColor = Color3.fromRGB(100, 80, 200)  -- Strong blue-purple
    CC.Saturation = -0.3  -- Desaturated for that grey-blue look
    CC.Contrast = 0.5  -- High contrast
    CC.Brightness = 0.05  -- Dark
    CC.Parent = Lighting

    -- Strong Bloom
    local Bloom = Instance.new("BloomEffect")
    Bloom.Intensity = 0.2
    Bloom.Size = 5
    Bloom.Threshold = 0.6
    Bloom.Parent = Lighting

    -- Thick Atmosphere
    local Atmosphere = Instance.new("Atmosphere")
    Atmosphere.Density = 0.35
    Atmosphere.Offset = 0.15
    Atmosphere.Color = Color3.fromRGB(40, 40, 100)
    Atmosphere.Decay = Color3.fromRGB(10, 10, 30)
    Atmosphere.Glare = 0.08
    Atmosphere.Haze = 0.7
    Atmosphere.Parent = Lighting

    print("DEEP BLUE ATMOSPHERE LOADED")
end)
