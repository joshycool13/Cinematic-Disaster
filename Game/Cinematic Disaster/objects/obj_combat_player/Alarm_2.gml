instance_destroy(inst_actor)

if actor_was_attack
{
	finish_attack()
}
else if not actor_was_attack
{
	finish_defend()
}