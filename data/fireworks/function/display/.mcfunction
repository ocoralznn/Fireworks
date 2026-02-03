## Strings 
# %1$s Minutes
# %2$s Hours (Civil)
# %3$s Hours (Military)
# %4$s Clock suffix
# %5$s Day index with prefix
# %6$s Day index no prefix
# %7$s Day name
# %8$s Day name shortened
# %9$s Day suffix
# %10$s Month name
# %11$s Month name shortened
# %12$s Month index
# %13$s Year

$execute \
    if function \
        fireworks:display/return.can_display/ \
    run return run title \
        @a actionbar {\
            translate:"display.general",\
            fallback:"§7%7$s, %10$s %6$s, %13$s | %2$s:%1$s %4$s",\
            with: [\
                {\
                    score: {\
                        name:"#minutes.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$minutes.current",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                },\
                {\
                    score: {\
                        name:"#hours.civil.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$hours.current.civil",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                },\
                {\
                    score: {\
                        name:"#hours.military.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$hours.current.military",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                },\
                {\
                    translate:"clock.suffix.$(clock_suffix_index)",\
                    fallback:"$(clock_suffix)"\
                },\
                {\
                    score: {\
                        name:"#days.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$days.current",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                },\
                {\
                    score: {\
                        name:"$days.current",\
                        objective:"fireworks.operations"\
                    }\
                },\
                {\
                    translate:"calendar.day_name.$(days_name_index)",\
                    fallback:"$(days_name)"\
                },\
                {\
                    translate:"calendar.day_name.$(days_name_index).short",\
                    fallback:"$(days_name_shortened)"\
                },\
                {\
                    translate:"calendar.day_name.suffix.$(days_suffix_index)",\
                    fallback:"$(days_suffix)"\
                },\
                {\
                    translate:"calendar.month_name.$(months_name_index)",\
                    fallback:"$(months_name)"\
                },\
                {\
                    translate:"calendar.month_name.$(months_name_index).short",\
                    fallback:"$(months_name_shortened)"\
                },\
                {\
                    score: {\
                        name:"#months.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$months.current",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                },\
                {\
                    score: {\
                        name:"#years.display.prefix",\
                        objective:"fireworks.operations"\
                    },\
                    extra: [\
                        {\
                            score: {\
                                name:"$years.current",\
                                objective:"fireworks.operations"\
                            }\
                        }\
                    ]\
                }\
            ],\
            shadow_color:0\
        }

title \
    @a actionbar {\
        score: {\
            name:"$events.countdown",\
            objective:"fireworks.operations" \
        },\
        color:"green" \
    }