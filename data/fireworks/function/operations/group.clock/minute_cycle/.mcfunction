execute \
    store result score \
        $minutes.current fireworks.operations \
            run time query minecraft:day

scoreboard \
    players operation \
        $minutes.current fireworks.operations %= #minutes.step.0 fireworks.operations

scoreboard \
    players operation \
        $minutes.current fireworks.operations *= #minutes.step.1 fireworks.operations

scoreboard \
    players operation \
        $minutes.current fireworks.operations /= #minutes.step.2 fireworks.operations