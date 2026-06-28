data merge entity @s {\
	Tags:[\
		"is_from_fireworks"\
	],\
	LifeTime:40,\
	FireworksItem:{\
		id: "minecraft:firework_rocket",\
		components:{\
			"minecraft:fireworks":{\
				explosions:[\
					{\
						shape:"small_ball",\
						colors:[0],\
						fade_colors:[0]\
					}\
				]\
			}\
		}\
	}\
}

execute store result score @s fireworks.definitions run random value 0..4
	execute if score @s fireworks.definitions matches 1 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[].shape set value "large_ball"
	execute if score @s fireworks.definitions matches 2 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[].shape set value "star"
	execute if score @s fireworks.definitions matches 3 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[].shape set value "creeper"
	execute if score @s fireworks.definitions matches 4 run data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[].shape set value "burst"

execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[].has_trail byte 1 run random value 0..1
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[].has_twinkle byte 1 run random value 0..1
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[].colors[0] int 1 run random value 0..16777215
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[].colors[1] int 1 run random value 0..16777215
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[].fade_colors[0] int 1 run random value 0..16777215
execute store result entity @s FireworksItem.components."minecraft:fireworks".flight_duration byte 1 run random value 8..24

spreadplayers ~ ~ 0 128 false @s