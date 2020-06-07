ACF.RegisterSensorClass("TGT-Radar", {
	Name		= "Targeting Radar",
	Entity		= "acf_radar",
	CreateMenu	= ACF.CreateRadarMenu,
	LimitConVar	= {
		Name = "_acf_radar",
		Amount = 4,
		Text = "Maximum amount of ACF radars a player can create."
	},
})

do -- Directional radars
	local function DetectEntities(Radar)
		return ACF.GetEntitiesInCone(Radar:LocalToWorld(Radar.Origin), Radar:GetForward(), Radar.ConeDegs)
	end

	ACF.RegisterSensor("SmallDIR-TGT", "TGT-Radar", {
		Name		= "Small Directional Radar",
		Description	= "A lightweight directional radar with a smaller view cone.",
		Model		= "models/radar/radar_sml.mdl",
		Mass		= 35,
		ViewCone	= 10,
		Origin		= "missile1",
		SwitchDelay	= 2,
		ThinkDelay	= 0.1,
		Detect		= DetectEntities,
	})

	ACF.RegisterSensor("MediumDIR-TGT", "TGT-Radar", {
		Name		= "Medium Directional Radar",
		Description	= "A directional radar with a regular view cone.",
		Model		= "models/radar/radar_mid.mdl",
		Mass		= 120,
		ViewCone	= 25,
		Origin		= "missile1",
		SwitchDelay	= 4,
		ThinkDelay	= 0.1,
		Detect		= DetectEntities,
	})

	ACF.RegisterSensor("LargeDIR-TGT", "TGT-Radar", {
		Name		= "Large Directional Radar",
		Description	= "A heavy directional radar with a large view cone.",
		Model		= "models/radar/radar_big.mdl",
		Mass		= 220,
		ViewCone	= 60,
		Origin		= "missile1",
		SwitchDelay	= 8,
		ThinkDelay	= 0.1,
		Detect		= DetectEntities,
	})
end

do -- Spherical radars
	local function DetectEntities(Radar)
		return ACF.GetEntitiesInSphere(Radar:LocalToWorld(Radar.Origin), Radar.Range)
	end

	ACF.RegisterSensor("SmallOMNI-TGT", "TGT-Radar", {
		Name		= "Small Spherical Radar",
		Description	= "A lightweight omni-directional radar with a smaller range.",
		Model		= "models/radar/radar_sp_sml.mdl",
		Mass		= 80,
		Range		= 7874,
		Origin		= "missile1",
		SwitchDelay	= 3,
		ThinkDelay	= 0.5,
		Detect		= DetectEntities,
	})

	ACF.RegisterSensor("MediumOMNI-TGT", "TGT-Radar", {
		Name		= "Medium Spherical Radar",
		Description	= "A omni-directional radar with a regular range.",
		Model		= "models/radar/radar_sp_mid.mdl",
		Mass		= 210,
		Range		= 15748,
		Origin		= "missile1",
		SwitchDelay	= 6,
		ThinkDelay	= 0.5,
		Detect		= DetectEntities,
	})

	ACF.RegisterSensor("LargeOMNI-TGT", "TGT-Radar", {
		Name		= "Large Spherical Radar",
		Description	= "A heavy omni-directional radar with a large range.",
		Model		= "models/radar/radar_sp_big.mdl",
		Mass		= 540,
		Range		= 31496,
		Origin		= "missile1",
		SwitchDelay	= 12,
		ThinkDelay	= 0.5,
		Detect		= DetectEntities,
	})
end
