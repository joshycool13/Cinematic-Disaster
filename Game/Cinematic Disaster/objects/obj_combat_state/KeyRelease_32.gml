if tutorial_part == 0
{
	return
}

switch tutorial_part
{
	case 1:
		instance_destroy(inst_tutorial_text)
		inst_tutorial_text = instance_create_layer(32, 480, "TutorialText", obj_interactivetutorialtext)
		inst_tutorial_text.image_xscale = 8
		inst_tutorial_text.image_yscale = 2
		inst_tutorial_text.tutorial_text = "Hello World!"
	break;
}