// die
if instance_exists(health_reel)
{
	instance_destroy(health_reel)
}

var item_number = irandom(5)
var item_name = ""

switch item_number
{
	case 0:
		obj_combat_state.gain_item("drink", self)
	break;
	
	case 1:
		obj_combat_state.gain_item("coffee", self)
	break;
	
	case 2:
		obj_combat_state.gain_item("rag", self)
	break;
	
	case 3:
		obj_combat_state.gain_item("linechange", self)
	break;
	
	case 4:
		obj_combat_state.gain_item("tomato", self)
	break;
	
	case 5:
		obj_combat_state.gain_item("flashbang", self)
	break;
}

if instance_exists(inst_status_stun)
{
	remove_status_effect(inst_status_stun)
	instance_destroy(inst_status_stun)
}

if instance_exists(inst_status_poison)
{
	remove_status_effect(inst_status_poison)
	instance_destroy(inst_status_poison)
}

if instance_exists(inst_status_wet)
{
	remove_status_effect(inst_status_wet)
	instance_destroy(inst_status_wet)
}

instance_destroy()