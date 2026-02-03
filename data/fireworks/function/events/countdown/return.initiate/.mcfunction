execute \
    if data storage \
        fireworks:definitions settings{\
            countdown:1b\
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
                range: 23\
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
                range: {\
                    min:50,\
                    max:60,\
                }\
            }\
        ]\
    } \
    run return 1