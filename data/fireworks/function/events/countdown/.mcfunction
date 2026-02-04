execute \
    unless function \
        fireworks:events/countdown/return.initiate/ \
    run return run scoreboard \
        players reset \
            $events.countdown fireworks.operations

execute \
    if function \
        fireworks:events/countdown/return.initiate/ \
    run function \
        fireworks:events/countdown/set.timer/