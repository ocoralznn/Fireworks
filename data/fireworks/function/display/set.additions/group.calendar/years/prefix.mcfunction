execute \
    if score \
        $years.current fireworks.operations matches ..9 \
            run scoreboard players set #years.display.prefix fireworks.operations 0

execute \
    unless score \
        $years.current fireworks.operations matches ..9 \
            run scoreboard players reset #years.display.prefix fireworks.operations