execute \
    unless data storage fireworks:definitions settings{send_chat_message:1b} run return 0

execute \
    if score $hours.current.military fireworks.operations matches 18 \
    if score $minutes.current fireworks.operations matches 0 \
    if predicate {\
        condition:"minecraft:time_check",\
        clock:"minecraft:overworld",\
        value:17,\
        period:20\
    } run return 1