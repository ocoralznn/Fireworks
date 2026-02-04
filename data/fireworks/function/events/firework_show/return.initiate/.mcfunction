execute \
    if data storage \
        fireworks:definitions settings{\
            display:1b\
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
                range:1\
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
                range:1\
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
                range:{\
                    min:0,\
                    max:4\
                }\
            }\
        ]\
    } run return 1