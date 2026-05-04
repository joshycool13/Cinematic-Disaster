randomise()


// initialize the variables
product = ""
price = 100
locked = false

product_price = obj_shop_shop.product_price

//sprite setting
image_speed = 0
pressed = 0;

// set the item or employee this slot of the shop sells
item_select = global.item_list[slot_number]
actor_select = global.actor_list[slot_number]

item_or_actor = 1 //if 1, sells items, if 0, sells employees
if (slot_number > 2) {
	item_or_actor = 0
}

if (item_or_actor == 1) {
	product = item_select
	price = product_price[$ item_select]
} else {
	product = actor_select
	price = product_price[$ actor_select]
}
