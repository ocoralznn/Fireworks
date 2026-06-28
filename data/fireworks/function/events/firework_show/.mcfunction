execute \
	if function \
		fireworks:events/firework_show/return.initiate/ \
	at @a \
	if function \
		fireworks:events/firework_show/return.can_summon/ \
	summon minecraft:firework_rocket \
		run function \
			fireworks:events/firework_show/set.entity_data/