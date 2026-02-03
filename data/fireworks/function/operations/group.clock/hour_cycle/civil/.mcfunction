scoreboard \
    players operation \
        $hours.current.civil fireworks.operations = $hours.current.military fireworks.operations

execute \
    if score \
        $hours.current.civil fireworks.operations matches 13..24 \
            run scoreboard \
                players operation \
                    $hours.current.civil fireworks.operations -= #hours.civil.step.0 fireworks.operations

execute \
    if score \
        $hours.current.civil fireworks.operations matches 0 \
            run scoreboard \
                players operation \
                    $hours.current.civil fireworks.operations += #hours.civil.step.1 fireworks.operations