execute \
    if function \
        fireworks:operations/group.calendar/month_cycle/return.has_28_days/ \
            run scoreboard \
                players set \
                    #months.step.1 fireworks.operations 28

execute \
    if function \
        fireworks:operations/group.calendar/month_cycle/return.has_29_days/ \
            run scoreboard \
                players add \
                    #months.step.1 fireworks.operations 1

execute \
    if function \
        fireworks:operations/group.calendar/month_cycle/return.has_30_days/ \
            run scoreboard \
                players set \
                    #months.step.1 fireworks.operations 30

execute \
    if function \
        fireworks:operations/group.calendar/month_cycle/return.has_31_days/ \
            run scoreboard \
                players set \
                    #months.step.1 fireworks.operations 31

execute \
    unless score $days.current fireworks.operations > #months.step.1 fireworks.operations \
        run return 1

scoreboard \
    players operation \
        $days.current fireworks.operations -= #months.step.1 fireworks.operations

scoreboard \
    players operation \
        $months.current fireworks.operations += #months.step.2 fireworks.operations

function \
    fireworks:operations/group.calendar/month_cycle/while/