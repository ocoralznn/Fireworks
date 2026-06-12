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

execute \
    unless data storage \
        fireworks:definitions settings.send_chat_message \
    run data \
        modify storage \
            fireworks:definitions settings.send_chat_message set value 0b

execute \
    unless data storage \
        fireworks:definitions settings.show_actionbar \
    run data \
        modify storage \
            fireworks:definitions settings.show_actionbar set value 2b