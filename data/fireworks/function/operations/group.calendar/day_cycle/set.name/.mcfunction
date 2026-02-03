scoreboard \
    players operation \
        #days.current.name fireworks.operations = $days.current fireworks.operations

scoreboard \
    players operation \
        #days.current.name fireworks.operations %= #days.step.2 fireworks.operations

execute \
    if score \
        #days.current.name fireworks.operations matches 0 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Sunday",\
                        days_name_shortened:"Sun",\
                        days_name_index:"sunday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 1 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Monday",\
                        days_name_shortened:"Mon",\
                        days_name_index:"monday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 2 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Tuesday",\
                        days_name_shortened:"Tue",\
                        days_name_index:"tuesday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 3 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Wednesday",\
                        days_name_shortened:"Wed",\
                        days_name_index:"wednesday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 4 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Thursday",\
                        days_name_shortened:"Thu",\
                        days_name_index:"thursday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 5 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Friday",\
                        days_name_shortened:"Fri",\
                        days_name_index:"friday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 6 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        days_name:"Saturday",\
                        days_name_shortened:"Sat",\
                        days_name_index:"saturday"\
                    }