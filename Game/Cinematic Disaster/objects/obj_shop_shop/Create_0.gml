item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]

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

item_order = array_shuffle(item_list)
actor_order = array_shuffle(actor_list)

function shop_refresh() {
	item_order = array_shuffle(item_list)
	actor_order = array_shuffle(actor_list)
	
	obj_shop_slot_0.actor_order = actor_order
	obj_shop_slot_0.item_order = item_order
	obj_shop_slot_0.item_select = item_order[0]
	obj_shop_slot_0.actor_select = actor_order[0]
	obj_shop_slot_1.actor_order = actor_order
	obj_shop_slot_1.item_order = item_order
	obj_shop_slot_1.item_select = item_order[1]
	obj_shop_slot_1.actor_select = actor_order[1]
	obj_shop_slot_2.actor_order = actor_order
	obj_shop_slot_2.item_order = item_order
	obj_shop_slot_2.item_select = item_order[2]
	obj_shop_slot_2.actor_select = actor_order[2]
	obj_shop_slot_3.actor_order = actor_order
	obj_shop_slot_3.item_order = item_order
	obj_shop_slot_3.item_select = item_order[3]
	obj_shop_slot_3.actor_select = actor_order[3]
	obj_shop_slot_4.actor_order = actor_order
	obj_shop_slot_4.item_order = item_order
	obj_shop_slot_4.item_select = item_order[4]
	obj_shop_slot_4.actor_select = actor_order[4]
}

