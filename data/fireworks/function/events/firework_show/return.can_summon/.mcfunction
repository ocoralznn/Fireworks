execute \
    unless entity @e[ \
        type=minecraft:firework_rocket,\
        limit=5, \
        distance=..30 \
    ] \
    if predicate {\
        condition:"minecraft:random_chance",\
        chance: 0.2\
    } \
    unless entity @e[\
        type=#fireworks:denies_fireworks,\
        distance=..8 \
    ] run return 1