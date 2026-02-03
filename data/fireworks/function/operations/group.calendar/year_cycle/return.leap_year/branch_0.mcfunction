# if (year % 4 == 0)
scoreboard \
    players operation \
        #years.return.root fireworks.operations = $years.current fireworks.operations

# (year % 4)
scoreboard \
    players operation \
        #years.return.root fireworks.operations %= #years.return.root.branch_0 fireworks.operations

execute \
    if score \
        #years.return.root fireworks.operations matches 0 \
            run return 1