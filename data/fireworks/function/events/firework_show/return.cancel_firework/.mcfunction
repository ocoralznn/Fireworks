execute \
    if entity @a[\
        distance=..48\
    ] \
    if entity @e[\
        type=#fireworks:denies_fireworks,\
        distance=..8 \
    ] run return 1

execute \
    if score \
        $hours.current.military fireworks.operations matches 4.. \
            run return 1