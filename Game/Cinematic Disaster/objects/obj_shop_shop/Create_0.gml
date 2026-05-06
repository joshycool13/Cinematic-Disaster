randomise()

product_price = {
	"castagent": irandom_range(60,100),
	"janitor": irandom_range(80,120),
	"makeup": irandom_range(100,140),
	"boomcrew": irandom_range(120,160),
	"janewick": irandom_range(140,180),
	
	"coffee": irandom_range(40,60),
	"drink": irandom_range(40,60),
	"flashbang": irandom_range(30,50),
	"linechange": irandom_range(50,70),
	"rag": irandom_range(45,65),
	"reel": irandom_range(70,80),
	"tomato": irandom_range(35,55)
}

function shop_refresh() {
	array_shuffle_ext(global.item_list)
	array_shuffle_ext(global.actor_list)
	
	obj_shop_slot_0.item_select = global.item_list[0]
	obj_shop_slot_0.actor_select = global.actor_list[0]
	obj_shop_slot_1.item_select = global.item_list[1]
	obj_shop_slot_1.actor_select = global.actor_list[1]
	/*
	obj_shop_slot_2.item_select = global.item_list[2]
	obj_shop_slot_2.actor_select = global.actor_list[2]
	*/
	obj_shop_slot_3.item_select = global.item_list[3]
	obj_shop_slot_3.actor_select = global.actor_list[3]
	obj_shop_slot_4.item_select = global.item_list[4]
	obj_shop_slot_4.actor_select = global.actor_list[4]
}