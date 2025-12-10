var _empty = sc_inventory_count_empty(global.PLAYER.inventory.list)

if _empty > 0 {
	sc_inventory_add_item(global.PLAYER.inventory.list,storage)
	array_delete(global.POTIONS_LIST,index,1)
	instance_destroy(o_potion)
	sc_show_created_potions()
}