execute \
    if score \
        $hours.current.military fireworks.operations matches ..9 \
            run scoreboard players set #hours.military.display.prefix fireworks.operations 0

execute \
    unless score \
        $hours.current.military fireworks.operations matches ..9 \
            run scoreboard players reset #hours.military.display.prefix fireworks.operations