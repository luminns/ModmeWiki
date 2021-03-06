-- LUAC rebuild by HarryBo21
-- ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_PropFactory

require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_HologramSmallFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_ParticleFX")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_PropSparks")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidget.ZmAmmo_DpadIconSide")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadIconMineFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadIconBgmFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadIconBottomFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetStalingrad.ZmAmmo_DpadIconShieldStalingrad")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadIconPistolFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_FlickerLoopFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_GlowLoopFactory")
require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadIconLeftFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadMeterPistolFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadAmmoNumbersFactory")
require("ui.uieditor.widgets.HUD.ZM_AmmoWidgetFactory.ZmAmmo_DpadLeftAmmoNumberWidgetFactory")

CoD.ZmAmmo_PropFactory = InheritFrom(LUI.UIElement)

local function PreLoadCallback(HudRef, InstanceRef)
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "actionSlot0ammo")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "actionSlot1ammo")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "actionSlot2ammo")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "actionSlot3ammo")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "dpadLeftAmmo")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadRight_Spider")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadRight_DragonStrike")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadRight_Gateworm")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadRight_Chicken")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadRight_Drone")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadLeft_Staff")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadDown_PES")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadDown_HackTool")
	Engine.CreateModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems"), "showDpadLeft_WaveGun")
end

local function PostLoadCallback(SenderRef, HudRef, InstanceRef)
end

function CoD.ZmAmmo_PropFactory.new(HudRef, InstanceRef)
	local ZmAmmo_PropFactory = LUI.UIElement.new()
	
	if PreLoadCallback then
		PreLoadCallback(ZmAmmo_PropFactory, InstanceRef)
	end
	
	ZmAmmo_PropFactory:setUseStencil(false)
	ZmAmmo_PropFactory:setClass(CoD.ZmAmmo_PropFactory)
	ZmAmmo_PropFactory.id = "ZmAmmo_PropFactory"
	ZmAmmo_PropFactory.soundSet = "HUD"
	ZmAmmo_PropFactory:setLeftRight(true, false, 0.000000, 233.000000)
	ZmAmmo_PropFactory:setTopBottom(true, false, 0.000000, 144.000000)
	ZmAmmo_PropFactory.anyChildUsesUpdateState = true
	
	ZmAmmo_PropFactory.ZmAmmoHologramSmallFactory = CoD.ZmAmmo_HologramSmallFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoHologramSmallFactory:setLeftRight(true, false, -10.870000, 258.450000)
	ZmAmmo_PropFactory.ZmAmmoHologramSmallFactory:setTopBottom(true, false, -25.270000, 183.920000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoHologramSmallFactory)
	
	ZmAmmo_PropFactory.BulbLgFill = LUI.UIImage.new()
	ZmAmmo_PropFactory.BulbLgFill:setLeftRight(true, false, -13.570000, 261.150000)
	ZmAmmo_PropFactory.BulbLgFill:setTopBottom(true, false, -26.270000, 185.050000)
	ZmAmmo_PropFactory.BulbLgFill:setAlpha(0.000000)
	ZmAmmo_PropFactory.BulbLgFill:setImage(RegisterImage("uie_t7_zm_derriese_hud_ammo_projection_lrg"))
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.BulbLgFill)
	
	ZmAmmo_PropFactory.ZmAmmoParticleFX = CoD.ZmAmmo_ParticleFX.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setLeftRight(true, false, 31.330000, 174.810000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setTopBottom(true, false, 42.090000, 116.700000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setXRot(1.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setYRot(1.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setZRot(-10.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	ZmAmmo_PropFactory.ZmAmmoParticleFX.p2:setAlpha(0.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX.p3:setAlpha(0.000000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoParticleFX)
	
	ZmAmmo_PropFactory.ZmAmmoParticleFX2 = CoD.ZmAmmo_ParticleFX.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoParticleFX2:setLeftRight(true, false, 31.330000, 174.810000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX2:setTopBottom(true, false, 39.700000, 114.300000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX2:setZRot(-10.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX2:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	ZmAmmo_PropFactory.ZmAmmoParticleFX2.p1:setAlpha(0.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX2.p3:setAlpha(0.000000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoParticleFX2)
	
	ZmAmmo_PropFactory.ZmAmmoParticleFX3 = CoD.ZmAmmo_ParticleFX.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoParticleFX3:setLeftRight(true, false, 31.330000, 174.810000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX3:setTopBottom(true, false, 40.700000, 115.300000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX3:setZRot(-10.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	ZmAmmo_PropFactory.ZmAmmoParticleFX3.p1:setAlpha(0.000000)
	ZmAmmo_PropFactory.ZmAmmoParticleFX3.p2:setAlpha(0.000000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoParticleFX3)
	
	ZmAmmo_PropFactory.ZmAmmoPropSparks = CoD.ZmAmmo_PropSparks.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoPropSparks:setLeftRight(true, false, 17.810000, 160.810000)
	ZmAmmo_PropFactory.ZmAmmoPropSparks:setTopBottom(true, false, 44.350000, 119.350000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoPropSparks)
	
	ZmAmmo_PropFactory.DpadElement = LUI.UIImage.new()
	ZmAmmo_PropFactory.DpadElement:setLeftRight(true, false, 122.960000, 249.660000)
	ZmAmmo_PropFactory.DpadElement:setTopBottom(true, false, 11.000000, 152.700000)
	ZmAmmo_PropFactory.DpadElement:setImage(RegisterImage("uie_t7_zm_derriese_hud_ammo_dpadbase"))
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadElement)
	
	ZmAmmo_PropFactory.DpadIconWpn = CoD.ZmAmmo_DpadIconSide.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconWpn:setLeftRight(true, false, 140.000000, 156.000000)
	ZmAmmo_PropFactory.DpadIconWpn:setTopBottom(true, false, 76.000000, 92.000000)
	ZmAmmo_PropFactory.DpadIconWpn:setAlpha(0.000000)
	ZmAmmo_PropFactory.DpadIconWpn:mergeStateConditions(
	{
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		}
	})
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconWpn)
	
	ZmAmmo_PropFactory.DpadIconChicken = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconChicken:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconChicken:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconChicken.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_genesis_hud_ammo_icon_chicken_inactive"))
	ZmAmmo_PropFactory.DpadIconChicken.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_genesis_hud_ammo_icon_chicken"))
	ZmAmmo_PropFactory.DpadIconChicken:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Chicken", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Chicken", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconChicken:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight_Chicken"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.showDpadRight_Chicken"})
	end)
	ZmAmmo_PropFactory.DpadIconChicken:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.actionSlot3ammo"})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconChicken)
	
	ZmAmmo_PropFactory.DpadIconGateworm = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconGateworm:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconGateworm:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconGateworm.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_genesis_hud_ammo_icon_gateworm_inactive"))
	ZmAmmo_PropFactory.DpadIconGateworm.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_genesis_hud_ammo_icon_gateworm"))
	ZmAmmo_PropFactory.DpadIconGateworm:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Gateworm", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Gateworm", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconGateworm:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight_Gateworm"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.showDpadRight_Gateworm"})
	end)
	ZmAmmo_PropFactory.DpadIconGateworm:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.actionSlot3ammo"})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconGateworm)
	
	ZmAmmo_PropFactory.DpadIconBgm = CoD.ZmAmmo_DpadIconBgmFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconBgm:setLeftRight(true, false, 168.000000, 184.000000)
	ZmAmmo_PropFactory.DpadIconBgm:setTopBottom(true, false, 41.000000, 57.000000)
	ZmAmmo_PropFactory.DpadIconBgm:setScale(0.910000)
	ZmAmmo_PropFactory.DpadIconBgm:subscribeToGlobalModel(InstanceRef, "PerController", "bgb_invalid_use", function(ModelRef)
		PulseElementToStateAndBack(ZmAmmo_PropFactory.DpadIconBgm, "InvalidUse")
	end)
	ZmAmmo_PropFactory.DpadIconBgm:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueGreaterThan(InstanceRef, "bgb_activations_remaining", 0.000000)
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadUp", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconBgm:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "bgb_activations_remaining"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "bgb_activations_remaining"})
	end)
	ZmAmmo_PropFactory.DpadIconBgm:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadUp"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.showDpadUp"})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconBgm)
	
	ZmAmmo_PropFactory.DpadIconMine = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconMine:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconMine:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconMine:setScale(0.850000)
	ZmAmmo_PropFactory.DpadIconMine:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconMine:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.showDpadRight"})
	end)
	ZmAmmo_PropFactory.DpadIconMine:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.actionSlot3ammo"})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconMine)
	
	ZmAmmo_PropFactory.DpadIconSpider = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconSpider:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconSpider:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconSpider:setScale(0.850000)
	ZmAmmo_PropFactory.DpadIconSpider.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_island_hud_ammo_icon_spider_inactive"))
	ZmAmmo_PropFactory.DpadIconSpider.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_island_hud_ammo_icon_spider"))
	ZmAmmo_PropFactory.DpadIconSpider:subscribeToGlobalModel(InstanceRef, "PerController", "dragon_strike_invalid_use", function(ModelRef)
		PulseElementToStateAndBack(ZmAmmo_PropFactory.DpadIconSpider, "InvalidUse")
	end)
	ZmAmmo_PropFactory.DpadIconSpider:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Spider", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Spider", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconSpider:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight_Spider"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.showDpadRight_Spider"})
	end)
	ZmAmmo_PropFactory.DpadIconSpider:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = "hudItems.actionSlot3ammo"})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconSpider)
	
	ZmAmmo_PropFactory.DpadIconDragonStrike = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconDragonStrike:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconDragonStrike:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconDragonStrike:setScale(0.850000)
	ZmAmmo_PropFactory.DpadIconDragonStrike.IconImgMineDisabled:setImage(RegisterImage("uie_t7_icon_inventory_dlc3_dragonstrike_console"))
	ZmAmmo_PropFactory.DpadIconDragonStrike.IconImgMineActive:setImage(RegisterImage("uie_t7_icon_inventory_dlc3_dragonstrike_console"))
	ZmAmmo_PropFactory.DpadIconDragonStrike:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_DragonStrike", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_DragonStrike", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconDragonStrike:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight_DragonStrike"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadRight_DragonStrike")})
	end)
	ZmAmmo_PropFactory.DpadIconDragonStrike:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.actionSlot3ammo")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconDragonStrike)
	
	ZmAmmo_PropFactory.DpadIconDrone = CoD.ZmAmmo_DpadIconMineFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconDrone:setLeftRight(true, false, 198.000000, 214.000000)
	ZmAmmo_PropFactory.DpadIconDrone:setTopBottom(true, false, 83.000000, 99.000000)
	ZmAmmo_PropFactory.DpadIconDrone:setScale(0.850000)
	ZmAmmo_PropFactory.DpadIconDrone.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_hd_hud_ammo_icon_drone_inactive"))
	ZmAmmo_PropFactory.DpadIconDrone.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_hd_hud_ammo_icon_drone_active"))
	ZmAmmo_PropFactory.DpadIconDrone:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Drone", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.actionSlot3ammo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadRight_Drone", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconDrone:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadRight_Drone"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadRight_Drone")})
	end)
	ZmAmmo_PropFactory.DpadIconDrone:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.actionSlot3ammo")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconDrone)
	
	ZmAmmo_PropFactory.DpadIconPES = CoD.ZmAmmo_DpadIconBottomFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconPES:setLeftRight(true, false, 163.000000, 178.000000)
	ZmAmmo_PropFactory.DpadIconPES:setTopBottom(true, false, 113.000000, 128.000000)
	ZmAmmo_PropFactory.DpadIconPES.IconImgShieldDisabled:setScale(0.800000)
	ZmAmmo_PropFactory.DpadIconPES.IconImgShieldActive:setScale(0.800000)
	ZmAmmo_PropFactory.DpadIconPES:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadDown_PES", 1.000000)
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconPES:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadDown_PES"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadDown_PES")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconPES)
	
	ZmAmmo_PropFactory.DpadIconHackTool = CoD.ZmAmmo_DpadIconBottomFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconHackTool:setLeftRight(true, false, 163.000000, 178.000000)
	ZmAmmo_PropFactory.DpadIconHackTool:setTopBottom(true, false, 113.000000, 128.000000)
	ZmAmmo_PropFactory.DpadIconHackTool.IconImgShieldDisabled:setScale(0.800000)
	ZmAmmo_PropFactory.DpadIconHackTool.IconImgShieldDisabled:setImage(RegisterImage("uie_t7_zm_hud_ammo_icon_hack"))
	ZmAmmo_PropFactory.DpadIconHackTool.IconImgShieldActive:setScale(0.800000)
	ZmAmmo_PropFactory.DpadIconHackTool.IconImgShieldActive:setImage(RegisterImage("uie_t7_zm_hud_ammo_icon_hack_active"))
	ZmAmmo_PropFactory.DpadIconHackTool:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadDown_HackTool", 1.000000)
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconHackTool:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadDown_HackTool"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadDown_HackTool")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconHackTool)
	
	ZmAmmo_PropFactory.DpadIconShield = CoD.ZmAmmo_DpadIconShieldStalingrad.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconShield:setLeftRight(true, false, 163.000000, 178.000000)
	ZmAmmo_PropFactory.DpadIconShield:setTopBottom(true, false, 113.000000, 128.000000)
	ZmAmmo_PropFactory.DpadIconShield:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadDown", 1.000000)
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconShield:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadDown"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadDown")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconShield)
	
	ZmAmmo_PropFactory.DpadIconSword = CoD.ZmAmmo_DpadIconPistolFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconSword:setLeftRight(true, false, 158.810000, 190.810000)
	ZmAmmo_PropFactory.DpadIconSword:setTopBottom(true, false, 68.000000, 100.000000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconSword)
	
	ZmAmmo_PropFactory.ZmAmmoFlickerLoopFactory = CoD.ZmAmmo_FlickerLoopFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoFlickerLoopFactory:setLeftRight(true, false, 122.580000, 249.420000)
	ZmAmmo_PropFactory.ZmAmmoFlickerLoopFactory:setTopBottom(true, false, 26.000000, 152.850000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoFlickerLoopFactory)
	
	ZmAmmo_PropFactory.ZmAmmoGlowLoopFactory = CoD.ZmAmmo_GlowLoopFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoGlowLoopFactory:setLeftRight(true, false, 119.000000, 179.000000)
	ZmAmmo_PropFactory.ZmAmmoGlowLoopFactory:setTopBottom(true, false, 65.390000, 125.390000)
	ZmAmmo_PropFactory.ZmAmmoGlowLoopFactory:setScale(0.800000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoGlowLoopFactory)
	
	ZmAmmo_PropFactory.DpadLeftCover = CoD.onOffImage.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadLeftCover:setLeftRight(true, false, 135.500000, 165.000000)
	ZmAmmo_PropFactory.DpadLeftCover:setTopBottom(true, false, 46.290000, 117.410000)
	ZmAmmo_PropFactory.DpadLeftCover.image:setImage(RegisterImage("uie_t7_zm_hd_hud_ammo_cover"))
	ZmAmmo_PropFactory.DpadLeftCover:mergeStateConditions(
	{
		{
			stateName = "On",
			condition = function(Unk0, Unk1, Unk2)
				return IsAnyMapName("zm_tomb", "zm_moon")
			end
		}
	})
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadLeftCover)
	
	ZmAmmo_PropFactory.DpadIconStaff = CoD.ZmAmmo_DpadIconLeftFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconStaff:setLeftRight(false, false, 17.000000, 33.000000)
	ZmAmmo_PropFactory.DpadIconStaff:setTopBottom(false, false, 1.000000, 17.000000)
	ZmAmmo_PropFactory.DpadIconStaff.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_hd_hud_ammo_icon_staff_inactive"))
	ZmAmmo_PropFactory.DpadIconStaff.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_hd_hud_ammo_icon_staff_active"))
	ZmAmmo_PropFactory.DpadIconStaff:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadLeft_Staff", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.dpadLeftAmmo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadLeft_Staff", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconStaff:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadLeft_Staff"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadLeft_Staff")})
	end)
	ZmAmmo_PropFactory.DpadIconStaff:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.dpadLeftAmmo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.dpadLeftAmmo")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconStaff)
	
	ZmAmmo_PropFactory.DpadIconWaveGun = CoD.ZmAmmo_DpadIconLeftFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconWaveGun:setLeftRight(false, false, 17.000000, 33.000000)
	ZmAmmo_PropFactory.DpadIconWaveGun:setTopBottom(false, false, 1.000000, 17.000000)
	ZmAmmo_PropFactory.DpadIconWaveGun.IconImgMineDisabled:setImage(RegisterImage("uie_t7_zm_hud_ammo_icon_wavegun"))
	ZmAmmo_PropFactory.DpadIconWaveGun.IconImgMineActive:setImage(RegisterImage("uie_t7_zm_hud_ammo_icon_wavegun_active"))
	ZmAmmo_PropFactory.DpadIconWaveGun:mergeStateConditions(
	{
		{
			stateName = "Ready",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadLeft_WaveGun", 1.000000) then
					return IsModelValueGreaterThan(InstanceRef, "hudItems.dpadLeftAmmo", 0.000000)
				end
			end
		},
		{
			stateName = "New",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Unavailable",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.showDpadLeft_WaveGun", 1.000000)
			end
		}
	})
	ZmAmmo_PropFactory.DpadIconWaveGun:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadLeft_WaveGun"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadLeft_WaveGun")})
	end)
	ZmAmmo_PropFactory.DpadIconWaveGun:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.dpadLeftAmmo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.dpadLeftAmmo")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconWaveGun)
	
	ZmAmmo_PropFactory.ZmAmmoDpadMeterPistol = CoD.ZmAmmo_DpadMeterPistolFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.ZmAmmoDpadMeterPistol:setLeftRight(true, false, 154.000000, 202.000000)
	ZmAmmo_PropFactory.ZmAmmoDpadMeterPistol:setTopBottom(true, false, 58.000000, 114.000000)
	ZmAmmo_PropFactory.ZmAmmoDpadMeterPistol:setScale(0.950000)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.ZmAmmoDpadMeterPistol)
	
	ZmAmmo_PropFactory.DpadAmmoNumbersRight = CoD.ZmAmmo_DpadAmmoNumbersFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadAmmoNumbersRight:setLeftRight(true, false, 223.000000, 241.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersRight:setTopBottom(true, false, 82.000000, 100.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersRight:mergeStateConditions(
	{
		{
			stateName = "ShowZ",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Show5",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot3ammo", 5.000000)
			end
		},
		{
			stateName = "Show4",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot3ammo", 4.000000)
			end
		},
		{
			stateName = "Show3",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot3ammo", 3.000000)
			end
		},
		{
			stateName = "Show2",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot3ammo", 2.000000)
			end
		},
		{
			stateName = "Show1",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot3ammo", 1.000000)
			end
		},
		{
			stateName = "Hidden",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysTrue()
			end
		}
	})
	ZmAmmo_PropFactory.DpadAmmoNumbersRight:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot3ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.actionSlot3ammo")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadAmmoNumbersRight)
	
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom = CoD.ZmAmmo_DpadAmmoNumbersFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom:setLeftRight(true, false, 169.000000, 187.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom:setTopBottom(true, false, 134.700000, 152.700000)
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom:mergeStateConditions(
	{
		{
			stateName = "ShowZ",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysFalse()
			end
		},
		{
			stateName = "Show5",
			condition = function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot1ammo", 5.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Show4",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot1ammo", 4.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Show3",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot1ammo", 3.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Show2",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot1ammo", 2.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Show1",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.actionSlot1ammo", 1.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Show0",
			condition =  function(Unk0, Unk1, Unk2)
				if IsModelValueEqualTo(InstanceRef, "hudItems.showDpadDown", 1.000000) and not
				IsMapName("zm_island") and not
				IsMapName("zm_tomb") then
					return not IsMapName("zm_moon")
				end
				return false	
			end
		},
		{
			stateName = "Hidden",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysTrue()
			end
		}
	})
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.actionSlot1ammo"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.actionSlot1ammo")})
	end)
	ZmAmmo_PropFactory.DpadAmmoNumbersBottom:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "hudItems.showDpadDown"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("hudItems.showDpadDown")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadAmmoNumbersBottom)
	
	ZmAmmo_PropFactory.DpadAmmoNumbersTop = CoD.ZmAmmo_DpadAmmoNumbersFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadAmmoNumbersTop:setLeftRight(true, false, 174.810000, 192.810000)
	ZmAmmo_PropFactory.DpadAmmoNumbersTop:setTopBottom(true, false, 19.000000, 37.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersTop:mergeStateConditions(
	{
		{
			stateName = "ShowZ",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 7.000000)
			end
		},
		{
			stateName = "ShowCross",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 6.000000)
			end
		},
		{
			stateName = "Show5",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 5.000000)
			end
		},
		{
			stateName = "Show4",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 4.000000)
			end
		},
		{
			stateName = "Show3",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 3.000000)
			end
		},
		{
			stateName = "Show2",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 2.000000)
			end
		},
		{
			stateName = "Show1",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueEqualTo(InstanceRef, "bgb_activations_remaining", 1.000000)
			end
		},
		{
			stateName = "Hidden",
			condition = function(Unk0, Unk1, Unk2)
				return AlwaysTrue()
			end
		}
	})
	ZmAmmo_PropFactory.DpadAmmoNumbersTop:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "bgb_activations_remaining"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("bgb_activations_remaining")})
	end)
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadAmmoNumbersTop)
	
	ZmAmmo_PropFactory.DpadIconCounter = CoD.onOffImage.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadIconCounter:setLeftRight(true, false, 100.300000, 141.500000)
	ZmAmmo_PropFactory.DpadIconCounter:setTopBottom(true, false, 66.400000, 107.600000)
	ZmAmmo_PropFactory.DpadIconCounter.image:setImage(RegisterImage("uie_t7_zm_derriese_hud_ammo_dpadbase_left"))
	ZmAmmo_PropFactory.DpadIconCounter:mergeStateConditions(
	{
		{
			stateName = "On",
			condition = function(arg0, arg1, arg2)
				return IsAnyMapName("zm_tomb", "zm_moon")
			end
		}
	})
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadIconCounter)
	
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft = CoD.ZmAmmo_DpadLeftAmmoNumberWidgetFactory.new(HudRef, InstanceRef)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:setLeftRight(true, false, 105.500000, 129.500000)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:setTopBottom(true, false, 72.000000, 96.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:setXRot(2.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:setYRot(-20.000000)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:setScale(1.100000)
	ZmAmmo_PropFactory.DpadAmmoNumbersLeft:mergeStateConditions(
	{
		{
			stateName = "Visible",
			condition = function(arg0, arg1, arg2)
				return IsAnyMapName("zm_tomb", "zm_moon")
			end
		}
	})
	ZmAmmo_PropFactory:addElement(ZmAmmo_PropFactory.DpadAmmoNumbersLeft)
	
	ZmAmmo_PropFactory.clipsPerState =
	{
		DefaultState =
		{
			DefaultClip = function()
				ZmAmmo_PropFactory:setupElementClipCounter(1.000000)
				
				ZmAmmo_PropFactory.BulbLgFill:completeAnimation()
				ZmAmmo_PropFactory.BulbLgFill:setAlpha(0.000000)
				ZmAmmo_PropFactory.clipFinished(ZmAmmo_PropFactory.BulbLgFill, {})
			end
		},
		WeaponDual =
		{
			DefaultClip = function()
				ZmAmmo_PropFactory:setupElementClipCounter(1.000000)
				
				ZmAmmo_PropFactory.BulbLgFill:completeAnimation()
				ZmAmmo_PropFactory.BulbLgFill:setAlpha(0.930000)
				ZmAmmo_PropFactory.clipFinished(ZmAmmo_PropFactory.BulbLgFill, {})
			end
		}
	}
	ZmAmmo_PropFactory:mergeStateConditions(
	{
		{
			stateName = "WeaponDual",
			condition = function(Unk0, Unk1, Unk2)
				return IsModelValueGreaterThanOrEqualTo(InstanceRef, "currentWeapon.ammoInDWClip", 2.000000)
			end
		}
	})
	ZmAmmo_PropFactory:subscribeToModel(Engine.GetModel(Engine.GetModelForController(InstanceRef), "currentWeapon.ammoInDWClip"), function(ModelRef)
		HudRef:updateElementState(ZmAmmo_PropFactory, {name = "model_validation", menu = HudRef, modelValue = Engine.GetModelValue(ModelRef), modelName = ("currentWeapon.ammoInDWClip")})
	end)
	
	LUI.OverrideFunction_CallOriginalSecond(ZmAmmo_PropFactory, "close", function(SenderRef)
		SenderRef.ZmAmmoHologramSmallFactory:close()
		SenderRef.ZmAmmoParticleFX:close()
		SenderRef.ZmAmmoParticleFX2:close()
		SenderRef.ZmAmmoParticleFX3:close()
		SenderRef.ZmAmmoPropSparks:close()
		SenderRef.DpadIconWpn:close()
		SenderRef.DpadIconChicken:close()
		SenderRef.DpadIconGateworm:close()
		SenderRef.DpadIconBgm:close()
		SenderRef.DpadIconMine:close()
		SenderRef.DpadIconSpider:close()
		SenderRef.DpadIconDragonStrike:close()
		SenderRef.DpadIconDrone:close()
		SenderRef.DpadIconPES:close()
		SenderRef.DpadIconHackTool:close()
		SenderRef.DpadIconShield:close()
		SenderRef.DpadIconSword:close()
		SenderRef.ZmAmmoFlickerLoopFactory:close()
		SenderRef.ZmAmmoGlowLoopFactory:close()
		SenderRef.DpadLeftCover:close()
		SenderRef.DpadIconStaff:close()
		SenderRef.DpadIconWaveGun:close()
		SenderRef.ZmAmmoDpadMeterPistol:close()
		SenderRef.DpadAmmoNumbersRight:close()
		SenderRef.DpadAmmoNumbersBottom:close()
		SenderRef.DpadAmmoNumbersTop:close()
		SenderRef.DpadIconCounter:close()
		SenderRef.DpadAmmoNumbersLeft:close()
	end)
	
	if PostLoadCallback then
        PostLoadCallback(ZmAmmo_PropFactory, HudRef, InstanceRef)
    end
	
	return ZmAmmo_PropFactory
end