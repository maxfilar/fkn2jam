randomize()

function Screen(_xpos,_ypos) constructor {
	xpos = _xpos
	ypos = _ypos
}

function Material(_name,_sprite) constructor {
	name = _name
	sprite = _sprite
}

function Potion(_name,_sprite,_recipe) constructor {
	name = _name
	sprite = _sprite
	recipe = _recipe
}

global.SCREENS = {
	mortar: new Screen(0,0),
	ingredients: new Screen(0,0),
	recipes: new Screen(0,0),
	rabbit: new Screen(0,0)
}

global.cur_screen = global.SCREENS.mortar

global.PLAYER = {
	inventory: {
		list: [],
		size: 5,
		object: o_player_inventory_slot,
		xpos: 192,
		ypos: 384,
	},
	potions: {
		list: [],
		size: 5,
		xpos: 0,
		ypos: 0,
	},
	cooking: {
		clockwise_progress: 0,
		unclockwise_progress: 0,
	},
	triggers: {
		picked_material: false,
	}
}

global.ENEMY = {
	
}

global.MATERIALS = [
	new Material("test1",s_phs_material_test1),
	new Material("test2",s_phs_material_test2),
]

global.POTIONS = [
	new Potion(
		"test1",
		s_phs_potion_test1,
		[ 
			arr_find_el(global.MATERIALS,"test1"),
			arr_find_el(global.MATERIALS,"test2"),
		]
	)
]

sc_inventory_create(global.PLAYER.inventory)

sc_gamestart_give_materials(global.PLAYER.inventory.list,2)