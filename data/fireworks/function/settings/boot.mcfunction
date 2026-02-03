scoreboard \
    objectives add \
        fireworks.definitions dummy

execute \
    unless data storage \
        fireworks:definitions settings.display \
    run data \
        modify storage \
            fireworks:definitions settings.display set value 1b

execute \
    unless data storage \
        fireworks:definitions settings.countdown \
    run data \
        modify storage \
            fireworks:definitions settings.countdown set value 1b

execute \
    unless data storage \
        fireworks:definitions settings.music \
    run data \
        modify storage \
            fireworks:definitions settings.music set value 1b