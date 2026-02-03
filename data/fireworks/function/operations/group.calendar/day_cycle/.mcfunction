execute \
    store result score \
        $days.current fireworks.operations \
            run time \
                query minecraft:day repetition

scoreboard \
    players operation \
        $days.current fireworks.operations += #days.step.0 fireworks.operations

execute \
    unless score \
        $hours.current.military fireworks.operations matches 6.. \
            run scoreboard \
                players operation \
                    $days.current fireworks.operations += #days.step.1 fireworks.operations

function \
    fireworks:operations/group.calendar/day_cycle/set.name/