scoreboard \
    players set \
        #years.step.1 fireworks.operations 365

# bool leap_year = (year % 4 == 0) AND (year % 100 != 0 OR year % 400 == 0);
execute \
    if function fireworks:operations/group.calendar/year_cycle/return.leap_year/ \
        run scoreboard \
            players add \
                #years.step.1 fireworks.operations 1

execute \
    unless score $days.current fireworks.operations > #years.step.1 fireworks.operations \
        run return 1

scoreboard \
    players operation \
        $days.current fireworks.operations -= #years.step.1 fireworks.operations

scoreboard \
    players operation \
        $years.current fireworks.operations += #years.step.2 fireworks.operations

function \
    fireworks:operations/group.calendar/year_cycle/while/