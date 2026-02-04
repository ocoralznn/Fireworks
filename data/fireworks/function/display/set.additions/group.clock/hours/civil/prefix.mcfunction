execute \
    if score \
        $hours.current.civil fireworks.operations matches ..9 \
            run scoreboard players set #hours.civil.display.prefix fireworks.operations 0

execute \
    unless score \
        $hours.current.civil fireworks.operations matches ..9 \
            run scoreboard players reset #hours.civil.display.prefix fireworks.operations