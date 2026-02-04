execute \
    if entity @a[\
        distance=..64\
    ] \
    if entity @e[ \
        type=minecraft:firework_rocket,\
        limit=5, \
        distance=..30 \
    ] \
    if entity @e[\
        type=#fireworks:denies_fireworks,\
        distance=..8 \
    ] run return 1

execute \
    if score \
        $hours.current.military fireworks.operations matches 5.. \
            run return 1