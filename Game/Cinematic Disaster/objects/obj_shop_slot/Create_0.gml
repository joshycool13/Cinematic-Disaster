randomize();

// initialize the variables
product = "";
price = 100;

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

//sprite setting
image_speed = 0
pressed = 0;

// set the item or employee this slot of the shop sells
item_select = item_list[irandom_range(0,6)]
actor_select = actor_list[irandom_range(0,4)]

item_or_actor = irandom_range(0, 1) //if 1, sells items, if 0, sells employees

if (item_or_actor == 1) {
	product = item_select
	price = product_price[$ item_select]
} else {
	product = actor_select
	price = product_price[$ actor_select]
}
