if tutorial_part == 0
{
	return
}

switch tutorial_part
{
	case 1:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "The goal is to defeat all the enemies on stage, by defeating them in\ncombat."
		tutorial_part += 1
	break;
	
	case 2:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "< Here, you can see my current HP and TP. If my HP reaches 0, we\n< lose.\n<"
		tutorial_part += 1
	break;
	
	case 3:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "< TP is used by skills, and can be gained and lost by them.\n<\n<"
		tutorial_part += 1
	break;
	
	case 4:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Now, let's try attacking that rat. Select Attack, then select the\nClapperboard attack, and then select the rat to attack it."
		tutorial_part += 1
	break;
	
	case 5:
		instance_destroy(inst_tutorial_text)
		player_menu()
		tutorial_part += 1
	break;
	
	case 8:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Now, try attacking the rat again, this time in real time."
		tutorial_part += 1
	break;
	
	case 9:
		instance_destroy(inst_tutorial_text)
		player_menu()
		tutorial_part += 1
	break;
	
	case 11:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Before you defend, you need to choose a defend skill. Select Defend,\nand then select the Megaphone defend skill."
		tutorial_part += 1
	break;
	
	case 12:
		instance_destroy(inst_tutorial_text)
		enemy_menu()
		tutorial_part += 1
	break;
	
	case 15:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Reminder though, you must dodge *before* the attack hits you."
		tutorial_part += 1
	break;
	
	case 16:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Now, see if you can dodge in real time."
		tutorial_part += 1
	break;
	
	case 17:
		instance_destroy(inst_tutorial_text)
		enemy_menu()
		tutorial_part += 1
	break;
	
	case 19:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "You can use items. Select Items, and then select Energy Drink. It will\nreplenish your HP."
		tutorial_part += 1
	break;
	
	case 20:
		instance_destroy(inst_tutorial_text)
		player_menu()
		tutorial_part += 1
	break;
	
	case 22:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "Remember, using an item means you cannot attack that turn."
		tutorial_part += 1
	break;
	
	case 23:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(256, 464, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 11.5
		inst_tutorial_text.image_yscale = 1.6
		inst_tutorial_text.tutorial_text = "That is it for the combat tutorial. You can now defeat the rat or\npress P to end the tutorial."
		tutorial_part += 1
	break;
	
	case 24:
		instance_destroy(inst_tutorial_text)
		player_menu()
		tutorial_part += 1
	break;
}