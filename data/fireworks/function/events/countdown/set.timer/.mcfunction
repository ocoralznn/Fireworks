scoreboard \
    players set \
        $events.countdown fireworks.operations 60

scoreboard \
    players operation \
        $events.countdown fireworks.operations -= $minutes.current fireworks.operations