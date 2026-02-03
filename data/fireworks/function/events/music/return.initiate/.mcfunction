execute \
    if data storage \
        fireworks:definitions settings{\
            music:1b\
        } \
    if predicate {\
        condition:"minecraft:time_check",\
        clock:"minecraft:overworld",\
        value:0,\
        period:20\
    } \
    if predicate {\
        condition:"minecraft:all_of",\
        terms: [\
            {\
                condition:"minecraft:value_check",\
                    value: {\
                        type:"minecraft:score",\
                            target: {\
                            type:"minecraft:fixed",\
                            name:"$days.current"\
                        },\
                    score:"fireworks.operations"\
                },\
                range:31\
            },\
            {\
                condition:"minecraft:value_check",\
                value: {\
                    type:"minecraft:score",\
                    target: {\
                        type:"minecraft:fixed",\
                        name:"$months.current"\
                    },\
                    score:"fireworks.operations"\
                },\
                range:12\
            },\
            {\
                condition:"minecraft:value_check",\
                value: {\
                    type:"minecraft:score",\
                    target: {\
                        type:"minecraft:fixed",\
                            name:"$hours.current.military"\
                        },\
                    score:"fireworks.operations"\
                },\
                range: 0\
            },\
            {\
                condition:"minecraft:value_check",\
                value: {\
                    type:"minecraft:score",\
                    target: {\
                        type:"minecraft:fixed",\
                            name:"$minutes.current"\
                        },\
                    score:"fireworks.operations"\
                },\
                range: 0\
            }\
        ]\
    } \
    run return 1