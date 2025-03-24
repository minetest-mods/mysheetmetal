--dripedge
minetest.register_node("mysheetmetal:dripedge", {
	description = "Drip Edge",
	drawtype = "nodebox",
	tiles = {"mysheetmetal_white.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, -0.4375, 0.4375, 0.5, -0.3125, 0.5},
		}
	},
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1},

})
minetest.register_node("mysheetmetal:dripedge_with_soffit", {
	drawtype = "nodebox",
	tiles = {"mysheetmetal_white.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mysheetmetal:dripedge",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.4375, 0.5},
			{-0.5, 0.375, 0.4375, 0.5, 0.4375, 0.5},
			{-0.5, 0.4375, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.4375, 0.25, 0.5, -0.375, 0.4375},
			{-0.5, -0.5, 0.0625, 0.5, -0.4375, 0.3125},
			{-0.5, -0.4375, -0.125, 0.5, -0.375, 0.125},
			{-0.5, -0.5, -0.3125, 0.5, -0.4375, -0.0625},
			{-0.5, -0.4375, -0.4375, 0.5, -0.375, -0.25},
			{-0.5, -0.5, -0.5, 0.5, -0.4375, -0.375},
		}
	},
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=1},
	on_punch = function(pos, node, puncher, pointed_thing)
		minetest.set_node({x = pos.x, y = pos.y, z = pos.z},{name = "mysheetmetal:soffit", param2=node.param2})
	end
})
