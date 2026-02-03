# if (year % 100 != 0 OR year % 400 == 0)
    # (year % 100 !=)
    scoreboard \
        players operation \
            #years.return.root fireworks.operations = $years.current fireworks.operations

    scoreboard \
        players operation \
            #years.return.root fireworks.operations %= #years.return.root.branch_1.0 fireworks.operations

    execute \
        unless score \
            #years.return.root fireworks.operations matches 0 \
                run return 1

    # (year % 400 == 0)
    scoreboard \
        players operation \
            #years.return.root fireworks.operations = $years.current fireworks.operations

    scoreboard \
        players operation \
            #years.return.root fireworks.operations %= #years.return.root.branch_1.1 fireworks.operations

    execute \
        if score \
            #years.return.root fireworks.operations matches 0 \
                run return 1