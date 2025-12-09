randomize()

show_debug_log(true)


function Material(_name,_sprite,_restore_sec) constructor {
	name = _name
	sprite = _sprite
	xpos = 0
	ypos = 0
	count = 1
	restore_sec_time = _restore_sec
	restore_sec_cur = 0
	restore_count = 0
}

function Potion(_name,_sprite,_recipe) constructor {
	name = _name
	sprite = _sprite
	recipe = _recipe
	xpos = 0
	ypos = 0
	count = 1
}

global.PLAYER = {
	inventory: {
		list: [],
		size: 5,
		object: o_player_inventory_slot,
		xpos: 32,
		ypos: 64,
	},
	potions: {
		mortar_list: [],
		size: 3,
		xpos: 256,
		ypos: 256,
		cooking_progress: 0,
	},
	elixir: {
		list: [],
		cooking_progress: 0,
	},
	triggers: {
		picked_material: false,
	}
}

global.ENEMY = {
	
}

global.MATERIALS = [
	new Material("Apple",s_phs_material_apple,10),
	new Material("Ginger",s_phs_material_ginger,10),
	new Material("Grape",s_phs_material_grape,10),
	new Material("Lotos",s_phs_material_lotos,10),
]

global.POTIONS = [
	new Potion(
		"vinegar",
		s_phs_potion_test1,
		[ 
			arr_find_el(global.MATERIALS,"Apple"),
			arr_find_el(global.MATERIALS,"Apple"),
			arr_find_el(global.MATERIALS,"Apple"),
		],
	),
	new Potion(
		"wine",
		s_phs_potion_test1,
		[ 
			arr_find_el(global.MATERIALS,"Grape"),
			arr_find_el(global.MATERIALS,"Grape"),
			arr_find_el(global.MATERIALS,"Apple"),
		],
	),
	new Potion(
		"asparagus",
		s_phs_potion_test1,
		[ 
			arr_find_el(global.MATERIALS,"Grape"),
			arr_find_el(global.MATERIALS,"Ginger"),
			arr_find_el(global.MATERIALS,"Lotos"),
		],
	),
]

global.POTIONS_LIST = []

sc_inventory_create(global.PLAYER.inventory)

sc_gamestart_give_materials(global.PLAYER.inventory.list,2)

alarm[0] = 60