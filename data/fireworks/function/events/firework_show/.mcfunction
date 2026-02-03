execute \
	if function \
		fireworks:events/firework_show/return.initiate/ \
	at @a \
	at @e[ \
		type=!#fireworks:denies_fireworks,\
		distance=64..128, \
		sort=random, \
		limit=2 \
	] \
	if function \
		fireworks:events/firework_show/return.can_summon/ \
	align xyz \
	positioned over world_surface \
	positioned ~.5 ~1.5 ~.5 \
	summon minecraft:firework_rocket \
		run function \
			fireworks:events/firework_show/set.entity_data/