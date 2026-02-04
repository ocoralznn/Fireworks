execute \
    if score \
        $months.current fireworks.operations matches ..9 \
            run scoreboard players set #months.display.prefix fireworks.operations 0

execute \
    unless score \
        $months.current fireworks.operations matches ..9 \
            run scoreboard players reset #months.display.prefix fireworks.operations