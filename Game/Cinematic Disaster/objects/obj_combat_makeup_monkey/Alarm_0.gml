// die
if instance_exists(health_reel)
{
	instance_destroy(health_reel)
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