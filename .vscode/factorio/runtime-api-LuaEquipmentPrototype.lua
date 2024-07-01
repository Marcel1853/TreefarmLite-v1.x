---@meta
---@diagnostic disable

--$Factorio 1.1.72
--$Overlay 5
--$Section LuaEquipmentPrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a modular equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html)
---@class LuaEquipmentPrototype:LuaObject
---[R]  
---The equipment attack parameters.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.attack_parameters)
---
---_Can only be used if this is ActiveDefenseEquipment_
---@field attack_parameters? AttackParameters 
---[R]  
---Whether this active defense equipment is automatic. Returns false if not active defense equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.automatic)
---@field automatic boolean 
---[R]  
---The background color of this equipment prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.background_color)
---@field background_color Color 
---[R]  
---The burner energy source prototype this equipment uses, if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.burner_prototype)
---@field burner_prototype? LuaBurnerPrototype 
---[R]  
---The electric energy source prototype this equipment uses, if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.electric_energy_source_prototype)
---@field electric_energy_source_prototype? LuaElectricEnergySourcePrototype 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.energy_consumption)
---@field energy_consumption double 
---[R]  
---The energy per shield point restored. 0 for non-shield equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.energy_per_shield)
---@field energy_per_shield double 
---[R]  
---The max power generated by this equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.energy_production)
---@field energy_production double 
---[R]  
---The energy source prototype for the equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.energy_source)
---@field energy_source LuaElectricEnergySourcePrototype 
---[R]  
---Category names for this equipment. These [categories](https://lua-api.factorio.com/latest/LuaEquipmentGridPrototype.html#LuaEquipmentGridPrototype.equipment_categories) will be used to determine whether this equipment is allowed in a particular equipment grid.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.equipment_categories)
---@field equipment_categories string[] 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.localised_description)
---@field localised_description LocalisedString 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.localised_name)
---@field localised_name LocalisedString 
---[R]  
---The logistic parameters for this roboport equipment.
---
---**Note:** Both the `charging_station_shift` and `stationing_offset` vectors are tables with `x` and `y` keys instead of an array.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---
---_Can only be used if this is RoboportEquipment_
---@field logistic_parameters? LuaEquipmentPrototype.logistic_parameters 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.movement_bonus)
---
---_Can only be used if this is MovementBonusEquipment_
---@field movement_bonus? float 
---[R]  
---Name of this prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.order)
---@field order string 
---[R]  
---Shape of this equipment prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shape)
---@field shape LuaEquipmentPrototype.shape 
---[R]  
---The shield value of this equipment. 0 for non-shield equipment.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shield)
---@field shield float 
---[R]  
---The result item when taking this equipment out of an equipment grid, if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.take_result)
---@field take_result? LuaItemPrototype 
---[R]  
---Type of this equipment prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.type)
---@field type string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.valid)
---@field valid boolean 
local LuaEquipmentPrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.help)
---@return string
help=function()end,
}

