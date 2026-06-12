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
                        full_weekday_name:"Sunday",\
                        abbreviated_weekday_name:"Sun",\
                        weekday_name_key:"sunday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 1 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Monday",\
                        abbreviated_weekday_name:"Mon",\
                        weekday_name_key:"monday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 2 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Tuesday",\
                        abbreviated_weekday_name:"Tue",\
                        weekday_name_key:"tuesday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 3 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Wednesday",\
                        abbreviated_weekday_name:"Wed",\
                        weekday_name_key:"wednesday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 4 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Thursday",\
                        abbreviated_weekday_name:"Thu",\
                        weekday_name_key:"thursday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 5 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Friday",\
                        abbreviated_weekday_name:"Fri",\
                        weekday_name_key:"friday"\
                    }
execute \
    if score \
        #days.current.name fireworks.operations matches 6 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_weekday_name:"Saturday",\
                        abbreviated_weekday_name:"Sat",\
                        weekday_name_key:"saturday"\
                    }