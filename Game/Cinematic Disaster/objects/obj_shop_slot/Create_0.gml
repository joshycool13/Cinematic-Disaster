
// initialize the variables
product = "";
price = 100;


//sprite setting
image_speed = 0
pressed = 0;

// set the item or employee this slot of the shop sells
item_list = ["coffee", "drink", "flashbang", "linechange", "rag", "reel", "tomato"]
actor_list = ["castagent", "janitor", "makeup", "boomcrew", "janewick"]

item_select = irandom_range(0,6)
actor_select = irandom_range(0,4)

item_or_actor = irandom_range(0, 1)

if (item_or_actor == 1) {
	product = item_list[item_select]
	price = 10*irandom_range(5, 15) // price will be fixed later but for now it is random
} else {
	product = actor_list[actor_select]
	price = 20*irandom_range(5, 10)
}
