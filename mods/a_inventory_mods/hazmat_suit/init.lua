local part_count = 4

local level = 35
local heal = 20
local use = 1000
local fire = 4
local water = 1
local radiation = 50

if minetest.get_modpath("shields") then
	level = level / 0.9
end

if part_count == #armor.elements then
	level = level / 1.1
end

level = math.floor(level / part_count)
heal = math.floor(heal / part_count)
fire = math.floor(fire / part_count)
radiation = math.floor(radiation / part_count)

minetest.register_craftitem("hazmat_suit:helmet_hazmat", {
		description = "Hazmat Helmet",
		inventory_image = "hazmat_suit_inv_helmet_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:chestplate_hazmat", {
		description = "Hazmat Chestplate",
		inventory_image = "hazmat_suit_inv_chestplate_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:sleeve_hazmat", {
		description = "Hazmat Sleeve",
		inventory_image = "hazmat_suit_inv_sleeve_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:leggings_hazmat", {
		description = "Hazmat Leggins",
		inventory_image = "hazmat_suit_inv_leggings_hazmat.png",
		stack_max = 1,
})

minetest.register_craftitem("hazmat_suit:boots_hazmat", {
		description = "Hazmat Boots",
		inventory_image = "hazmat_suit_inv_boots_hazmat.png",
		stack_max = 1,
})

minetest.register_tool("hazmat_suit:suit_hazmat", {
	description = "Hazmat Suit",
	inventory_image = "hazmat_suit_inv_suit_hazmat.png",
	groups = {
		armor_head = level,
		armor_torso = level,
		armor_legs = level,
		armor_feet = level,
		armor_heal = heal,
		armor_use = use,
		armor_fire = fire,
		armor_water = water,
		armor_radiation = radiation,
	},
	wear = 0,
})

minetest.register_craft({
	output = "hazmat_suit:helmet_hazmat",
	recipe = {
		{"", "es:infinium_ingot", ""},
		{"es:infinium_ingot", "default:glass", "es:infinium_ingot"},
		{"es:rubber", "es:rubber", "es:rubber"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:chestplate_hazmat",
	recipe = {
		{"es:purpellium_ingot", "dye:yellow", "es:purpellium_ingot"},
		{"es:infinium_ingot", "es:purpellium_ingot", "es:infinium_ingot"},
		{"es:purpellium_ingot", "es:infinium_ingot", "es:purpellium_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:sleeve_hazmat",
	recipe = {
		{"es:rubber", "dye:yellow"},
		{"", "es:infinium_ingot"},
		{"", "es:rubber"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:leggings_hazmat",
	recipe = {
		{"es:rubber", "es:purpellium_ingot", "es:rubber"},
		{"es:infinium_ingot", "es:rubber", "es:infinium_ingot"},
		{"es:purpellium_ingot", "", "es:purpellium_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:boots_hazmat",
	recipe = {
		{"", "", ""},
		{"es:rubber", "", "es:rubber"},
		{"es:infinium_ingot", "", "es:infinium_ingot"},
	},
})

minetest.register_craft({
	output = "hazmat_suit:suit_hazmat",
	type = "shapeless",
	recipe = {
		"hazmat_suit:helmet_hazmat",
		"hazmat_suit:chestplate_hazmat",
		"hazmat_suit:leggings_hazmat",
		"hazmat_suit:boots_hazmat",
		"hazmat_suit:sleeve_hazmat",
		"hazmat_suit:sleeve_hazmat",
	},
})
