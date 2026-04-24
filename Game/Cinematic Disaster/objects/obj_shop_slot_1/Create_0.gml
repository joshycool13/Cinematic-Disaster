randomize();

// initialize the variables
product = "";
price = 100;

product_price = obj_shop_shop.product_price
item_order = obj_shop_shop.item_order
actor_order = obj_shop_shop.actor_order

//sprite setting
image_speed = 0
pressed = 0;

// set the item or employee this slot of the shop sells
item_select = item_order[1]
actor_select = actor_order[1]

item_or_actor = 1 //if 1, sells items, if 0, sells employees

if (item_or_actor == 1) {
	product = item_select
	price = product_price[$ item_select]
} else {
	product = actor_select
	price = product_price[$ actor_select]
}
