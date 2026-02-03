execute \
    store result score \
        $hours.current.military fireworks.operations \
            run time query minecraft:day

scoreboard \
    players operation \
        $hours.current.military fireworks.operations /= #hours.military.step.0 fireworks.operations

scoreboard \
    players operation \
        $hours.current.military fireworks.operations += #hours.military.step.1 fireworks.operations

scoreboard \
    players operation \
        $hours.current.military fireworks.operations %= #hours.military.step.2 fireworks.operations