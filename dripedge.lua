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

