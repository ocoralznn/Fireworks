execute \
    if score \
        $days.current fireworks.operations matches ..9 \
            run scoreboard players set #days.display.prefix fireworks.operations 0

execute \
    unless score \
        $days.current fireworks.operations matches ..9 \
            run scoreboard players reset #days.display.prefix fireworks.operations