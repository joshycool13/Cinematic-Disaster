product_price = {
	"castagent": 151,
	"janitor": 152,
	"makeup": 153,
	"boomcrew": 154,
	"janewick": 155,
	
	"coffee": 91,
	"drink": 92,
	"flashbang": 93,
	"linechange": 94,
	"rag": 95,
	"reel": 96,
	"tomato": 97
}

function shop_refresh() {
	array_shuffle_ext(global.item_list)
	array_shuffle_ext(global.actor_list)
	
	obj_shop_slot_0.item_select = item_order[0]
	obj_shop_slot_0.actor_select = actor_order[0]
	obj_shop_slot_1.item_select = item_order[1]
	obj_shop_slot_1.actor_select = actor_order[1]
	/*
	obj_shop_slot_2.item_select = item_order[2]
	obj_shop_slot_2.actor_select = actor_order[2]
	*/
	obj_shop_slot_3.item_select = item_order[3]
	obj_shop_slot_3.actor_select = actor_order[3]
	obj_shop_slot_4.item_select = item_order[4]
	obj_shop_slot_4.actor_select = actor_order[4]
}