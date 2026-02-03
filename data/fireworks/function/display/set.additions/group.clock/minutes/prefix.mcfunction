execute \
    if score \
        $minutes.current fireworks.operations matches ..9 \
            run scoreboard players set #minutes.display.prefix fireworks.operations 0

execute \
    unless score \
        $minutes.current fireworks.operations matches ..9 \
            run scoreboard players reset #minutes.display.prefix fireworks.operations