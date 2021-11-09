--translation files should be converted at some point
local function S(a) return a end

-- Nodes
minetest.register_node("gloopblocks:basalt_cooled", {
	description = S("Basalt"),
	tiles = {"gloopblocks_basalt.png"},
	groups = {cracky=2, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "gloopblocks:basalt",
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		minetest.add_node(pos, {name = "gloopblocks:basalt"})
	end
})

minetest.register_node("gloopblocks:pumice_cooled", {
	description = S("Pumice"),
	tiles = {"gloopblocks_pumice.png"},
	groups = {cracky=3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "gloopblocks:pumice",
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		minetest.add_node(pos, {name = "gloopblocks:pumice"})
	end
})

minetest.register_node("gloopblocks:rainbow_block_diagonal", {
	description = S("Diagonal Rainbow Block"),
	tiles = {"gloopblocks_rainbow_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_defaults(),
})
minetest.register_alias("gloopblocks:rainbow_block", "gloopblocks:rainbow_block_diagonal")

minetest.register_node("gloopblocks:rainbow_block_horizontal", {
	description = S("Horizontal Rainbow Block"),
	tiles = {
		"gloopblocks_rainbow_horizontal.png^[transformR90",
		"gloopblocks_rainbow_horizontal.png^[transformR90",
		"gloopblocks_rainbow_horizontal.png"
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX,
	paramtype2 = "facedir",
	groups = {cracky = 2},
	is_ground_content = false,
	sounds = default.node_sound_defaults(),
})

minetest.register_node("gloopblocks:evil_block", {
	description = S("Evil Block"),
	tiles = {"gloopblocks_evil_block.png"},
	light_source = 5,
	is_ground_content = true,
	groups = {cracky=2},

	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:basalt", {
	description = S("Basalt"),
	tiles = {"gloopblocks_basalt.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:pumice", {
	description = S("Pumice"),
	tiles = {"gloopblocks_pumice.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("gloopblocks:pavement", {
	description = S("Pavement"),
	tiles = {"gloopblocks_pavement.png"},
	groups = {cracky=3, oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:oerkki_block", {
	drawtype = "nodebox",
	description = S("Oerkki Block"),
	paramtype = "light",
	paramtype2 = "facedir",
	tiles = {
		"gloopblocks_oerkkiblock_tb.png",
		"gloopblocks_oerkkiblock_tb.png",
		"gloopblocks_oerkkiblock_sides.png",
		"gloopblocks_oerkkiblock_sides.png",
		"gloopblocks_oerkkiblock_sides.png",
		"gloopblocks_oerkkiblock_front.png"
	},
	groups = {cracky=3, oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
	},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875}, -- NodeBox1
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}, -- NodeBox2
			{0.4375, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox3
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5}, -- NodeBox4
			{-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5}, -- NodeBox5
			{-0.5, -0.0625, -0.5, 0.5, 0.0625, 0.5}, -- NodeBox6
		}
	}
})

minetest.register_node("gloopblocks:stone_brick_mossy", {
	description = S("Mossy Stone Brick"),
	tiles = {"gloopblocks_stone_brick_mossy.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:stone_mossy", {
	description = S("Mossy Stone"),
	tiles = {"gloopblocks_stone_mossy.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
	drop = "default:mossycobble"
})

minetest.register_node("gloopblocks:cobble_road", {
	description = S("Cobblestone Road Bed"),
	tiles = {"gloopblocks_cobble_road.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:cobble_road_mossy", {
	description = S("Mossy Cobblestone Road Bed"),
	tiles = {"gloopblocks_cobble_road_mossy.png"},
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:scaffolding", {
	description = S("Wooden Scaffold"),
	drawtype = "allfaces",
	paramtype = "light",
	sunlight_propagates = true,
	tiles = {"gloopblocks_scaffold.png"},
	groups = {choppy=3, oddly_breakable_by_hand=3},
	sounds = default.node_sound_wood_defaults(),
})


minetest.register_alias("moreblocks:oerkkiblock", "gloopblocks:oerkki_block")
minetest.register_alias("gloopblocks:obsidian", "default:obsidian")

-- Nodes imported from Usesdirt ================================================================================

if not minetest.get_modpath("usesdirt") then

	local dirt_brick_tex  = "default_dirt.png^gloopblocks_dirt_brick_overlay.png"
	local dirt_cobble_tex = "default_cobble.png^(default_dirt.png^[mask:gloopblocks_dirt_cobble_mask.png)"
	local dirt_stone_tex  = "default_stone.png^(default_dirt.png^[mask:gloopblocks_dirt_stone_mask.png)"

	local dirt_ladder_tex = "(default_dirt.png^[mask:gloopblocks_ladder_mask.png)^gloopblocks_ladder_overlay.png"
	local dirt_brick_ladder_tex = "(("..dirt_brick_tex..")^[mask:gloopblocks_ladder_mask.png)^gloopblocks_ladder_overlay.png"
	local dirt_cobble_ladder_tex = "(("..dirt_cobble_tex..")^[mask:gloopblocks_ladder_mask.png)^gloopblocks_ladder_overlay.png"
	local dirt_stone_ladder_tex = "(("..dirt_stone_tex..")^[mask:gloopblocks_ladder_mask.png)^gloopblocks_ladder_overlay.png"

	minetest.register_node(":usesdirt:dirt_brick", {
		tiles = { dirt_brick_tex },
		description = "Dirt Brick",
		groups = {snappy=2,choppy=1,oddly_breakable_by_hand=2},
	})

	minetest.register_node(":usesdirt:dirt_brick_ladder", {
		description = "Dirt Brick Ladder",
		drawtype = "signlike",
		tiles = { dirt_brick_ladder_tex },
		inventory_image = dirt_brick_ladder_tex,
		wield_image     = dirt_brick_ladder_tex,
		paramtype = "light",
		paramtype2 = "wallmounted",
		is_ground_content = true,
		walkable = false,
		climbable = true,
		selection_box = {
			type = "wallmounted",
			--wall_top = = <default>
			--wall_bottom = = <default>
			--wall_side = = <default>
		},
		groups = {cracky=3, stone=2},
		legacy_wallmounted = true,
	})

	default.register_fence(":usesdirt:dirt_brick_fence", {
		description = "Dirt Brick Fence",
		texture = dirt_brick_tex,
		inventory_image = "default_fence_overlay.png^("..dirt_brick_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^("..dirt_brick_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		material = "usesdirt:dirt_brick",
		groups = {cracky=3, stone=2},
		sounds = default.node_sound_stone_defaults(),
		check_for_pole = true
	})

	minetest.register_node(":usesdirt:dirt_ladder", {
		description = "Dirt Ladder",
		drawtype = "signlike",
		tiles = { dirt_ladder_tex },
		inventory_image = dirt_ladder_tex,
		wield_image     = dirt_ladder_tex,
		paramtype = "light",
		paramtype2 = "wallmounted",
		is_ground_content = true,
		walkable = false,
		climbable = true,
		selection_box = {
			type = "wallmounted",
			--wall_top = = <default>
			--wall_bottom = = <default>
			--wall_side = = <default>
		},
		groups = {snappy=2,choppy=2,oddly_breakable_by_hand=3},
		legacy_wallmounted = true,
	})

	default.register_fence(":usesdirt:dirt_fence", {
		description = "Dirt Fence",
		texture = "default_dirt.png",
		inventory_image = "default_fence_overlay.png^default_dirt.png^default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^default_dirt.png^default_fence_overlay.png^[makealpha:255,126,126",
		material = "default:dirt",
		groups = {snappy=2,choppy=1,oddly_breakable_by_hand=3},
		sounds = default.node_sound_dirt_defaults(),
		check_for_pole = true
	})

----

	minetest.register_node(":usesdirt:dirt_cobble_stone", {
		tiles = { dirt_cobble_tex },
		description = "Dirt Cobble Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node(":usesdirt:dirt_cobble_stone_ladder", {
		description = "Dirt Cobble Stone Ladder",
		drawtype = "signlike",
		tiles = { dirt_cobble_ladder_tex },
		inventory_image = dirt_cobble_ladder_tex,
		wield_image     = dirt_cobble_ladder_tex,
		paramtype = "light",
		paramtype2 = "wallmounted",
		is_ground_content = true,
		walkable = false,
		climbable = true,
		selection_box = {
			type = "wallmounted",
			--wall_top = = <default>
			--wall_bottom = = <default>
			--wall_side = = <default>
		},
		groups = {cracky=3, stone=2},
		legacy_wallmounted = true,
	})

	default.register_fence(":usesdirt:dirt_cobble_stone_fence", {
		description = "Dirt Cobble Stone Fence",
		texture = dirt_cobble_tex,
		inventory_image = "default_fence_overlay.png^("..dirt_cobble_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^("..dirt_cobble_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		material = "usesdirt:dirt_cobble_stone",
		groups = {cracky=3, stone=2},
		sounds = default.node_sound_stone_defaults(),
		check_for_pole = true
	})

----

	minetest.register_node(":usesdirt:dirt_stone", {
		tiles = { dirt_stone_tex },
		description = "Dirt Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node(":usesdirt:dirt_stone_ladder", {
		description = "Dirt Stone Ladder",
		drawtype = "signlike",
		tiles = { dirt_stone_ladder_tex },
		inventory_image = dirt_stone_ladder_tex,
		wield_image     = dirt_stone_ladder_tex,
		paramtype = "light",
		paramtype2 = "wallmounted",
		is_ground_content = true,
		walkable = false,
		climbable = true,
		selection_box = {
			type = "wallmounted",
			--wall_top = = <default>
			--wall_bottom = = <default>
			--wall_side = = <default>
		},
		groups = {cracky=3, stone=2},
		legacy_wallmounted = true,
	})

	default.register_fence(":usesdirt:dirt_stone_fence", {
		description = "Dirt Stone Fence",
		texture = dirt_stone_tex,
		inventory_image = "default_fence_overlay.png^("..dirt_stone_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		wield_image = "default_fence_overlay.png^("..dirt_stone_tex..")^default_fence_overlay.png^[makealpha:255,126,126",
		material = "usesdirt:dirt_stone",
		groups = {cracky=3, stone=2},
		sounds = default.node_sound_stone_defaults(),
		check_for_pole = true
	})
end

if minetest.get_modpath("moreblocks") then

	stairsplus:register_all("gloopblocks", "oerkki_block", "gloopblocks:oerkki_block", {
		description = S("Oerkki Block"),
		tiles = {
			"gloopblocks_oerkkiblock_tb.png",
			"gloopblocks_oerkkiblock_tb.png",
			"gloopblocks_oerkkiblock_sides.png",
			"gloopblocks_oerkkiblock_sides.png",
			"gloopblocks_oerkkiblock_sides.png",
			"gloopblocks_oerkkiblock_front.png"
		},
		groups = {cracky=2, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "stone_brick_mossy", "gloopblocks:stone_brick_mossy", {
		description = S("Mossy Stone Brick"),
		tiles = {"gloopblocks_stone_brick_mossy.png"},
		groups = {cracky=1, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "stone_mossy", "gloopblocks:stone_mossy", {
		description = S("Mossy Stone"),
		tiles = {"gloopblocks_stone_mossy.png"},
		groups = {cracky=1, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "cobble_road", "gloopblocks:cobble_road", {
		description = S("Cobblestone Roadbed"),
		tiles = {"gloopblocks_cobble_road.png"},
		groups = {cracky=3, stone=1, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "cobble_road_mossy", "gloopblocks:cobble_road_mossy", {
		description = S("Mossy Cobblestone Roadbed"),
		tiles = {"gloopblocks_cobble_road_mossy.png"},
		groups = {cracky=3, stone=1, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "pavement", "gloopblocks:pavement", {
		description = S("Pavement"),
		tiles = {"gloopblocks_pavement.png"},
		groups = {cracky=2, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "rainbow_block", "gloopblocks:rainbow_block", {
		description = S("Rainbow Block"),
		tiles = {"gloopblocks_rainbow_block.png"},
		groups = {cracky=3, not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "evil_block", "gloopblocks:evil_block", {
		description = S("Evil Block"),
		tiles = {"gloopblocks_evil_block.png"},
		groups = {cracky=3, not_in_creative_inventory=1},
		sounds = default.node_sound_defaults(),
		light_source = 5,
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "basalt", "gloopblocks:basalt", {
		description = S("Basalt"),
		tiles = {"gloopblocks_basalt.png"},
		groups = {cracky=2, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "pumice", "gloopblocks:pumice", {
		description = S("Pumice"),
		tiles = {"gloopblocks_pumice.png"},
		groups = {cracky=3, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = true,
	})

	stairsplus:register_all("gloopblocks", "gravel", "default:gravel", {
		description = S("Gravel"),
		tiles = {"default_gravel.png"},
		groups = {crumbly = 2, falling_node = 1, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		sunlight_propagates = false,
	})

	if minetest.get_modpath("caverealms") then
		stairsplus:register_all("caverealms", "glow_crystal", "caverealms:glow_crystal", {
			description = S("Glow Crystal"),
			tiles = {"caverealms_glow_crystal.png"},
			groups = {cracky=3, not_in_creative_inventory=1},
			sounds = default.node_sound_glass_defaults(),
			light_source = 12,
			use_texture_alpha = true,
			paramtype="light",
			sunlight_propagates = true,
		})

		stairsplus:register_all("caverealms", "glow_emerald", "caverealms:glow_emerald", {
			description = S("Glow Emerald"),
			tiles = {"caverealms_glow_emerald.png"},
			groups = {cracky=3, not_in_creative_inventory=1},
			sounds = default.node_sound_glass_defaults(),
			light_source = 12,
			use_texture_alpha = true,
			paramtype="light",
			sunlight_propagates = true,
		})

		stairsplus:register_all("caverealms", "glow_mese", "caverealms:glow_mese", {
			description = S("Glow Mese"),
			tiles = {"caverealms_glow_mese.png"},
			groups = {cracky=3, not_in_creative_inventory=1},
			sounds = default.node_sound_glass_defaults(),
			light_source = 12,
			use_texture_alpha = true,
			paramtype="light",
			sunlight_propagates = true,
		})
	end
end

local fence_texture =
	"default_fence_overlay.png^default_steel_block.png^default_fence_overlay.png^[makealpha:255,126,126"

minetest.register_node("gloopblocks:fence_steel", {
	description = S("Steel Fence"),
	drawtype = "fencelike",
	tiles = {"default_steel_block.png"},
	inventory_image = fence_texture,
	wield_image = fence_texture,
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-1/7, -1/2, -1/7, 1/7, 1/2, 1/7},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 2 },
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_alias("nyancat:nyancat_rainbow", "gloopblocks:rainbow_block_horizontal")
minetest.register_alias("default:nyancat_rainbow", "gloopblocks:rainbow_block_horizontal")
