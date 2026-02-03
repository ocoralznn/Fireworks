execute \
    as @e[tag=is_from_fireworks] \
    at @s \
    if function \
        fireworks:events/firework_show/return.cancel_firework/ \
    run kill @s