# if is morning and chat options is_not disabled, return true, else return false
execute \
    if data storage fireworks:definitions settings{send_chat_message:0b} run return 0

execute \
    if score $hours.current.military fireworks.operations matches 6 \
    if score $minutes.current fireworks.operations matches 0 \
    if predicate {\
        condition:"minecraft:time_check",\
        clock:"minecraft:overworld",\
        value:17,\
        period:20\
    } run return 1