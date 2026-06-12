execute \
    if function \
        fireworks:events/countdown/return.initiate/ \
    run return run title \
    @a actionbar {\
        score: {\
            name:"$events.countdown",\
            objective:"fireworks.operations" \
        },\
        color:"green" \
    }

## GENERAL 
# %1$s Today (Weekday name)
# %2$s Clock
# %3$s Calendar

## TODAY
# %1$s = Full weekday name
# %2$s = Abbreviated weekday name

## CLOCK
# %1$s = Hour (12-hour format)
# %2$s = Hour (24-hour format)
# %3$s = Minute
# %4$s = Suffix (AM/PM)

## CALENDAR
# %1$s = Zero-padded day of month
# %2$s = Non-padded day of month
# %3$s = Day ordinal suffix
# %4$s = Full month name
# %5$s = Abbreviated month name
# %6$s = Zero-padded month number
# %7$s = Non-padded month number
# %8$s = Year


$execute \
    as @a \
    if function \
        fireworks:display/actionbar/return.can_display/ \
    run return run title \
        @s actionbar {\
            translate:"fireworks.actionbar",\
            fallback:"%1$s, %2$s | %3$s",\
            with: [\
                {\
                    translate:"fireworks.general.today",\
                    fallback:"%1$s",\
                    with: [\
                        {\
                            translate:"fireworks.today.weekday_name.$(weekday_name_key).full",\
                            fallback:$(full_weekday_name),\
                        },\
                        {\
                            translate:"fireworks.today.weekday_name.$(weekday_name_key).abbreviated",\
                            fallback:$(abbreviated_weekday_name),\
                        }\
                    ]\
                },\
                {\
                    translate:"fireworks.general.clock",\
                    fallback:"%1$s:%3$s %4$s",\
                    with: [\
                        [\
                            {\
                                score: {\
                                    name:"#hours.civil.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$hours.current.civil",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                        [\
                            {\
                                score: {\
                                    name:"#hours.military.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$hours.current.military",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                        [\
                            {\
                                score: {\
                                    name:"#minutes.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$minutes.current",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                        {\
                            translate:"fireworks.clock.suffix.$(clock_suffix_key)",\
                            fallback:$(clock_suffix),\
                        }\
                    ]\
                },\
                {\
                    translate:"fireworks.general.calendar",\
                    fallback:"%4$s %2$s%3$s, %8$s",\
                    with: [\
                        [\
                            {\
                                score: {\
                                    name:"#days.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$days.current",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                        {\
                            score: {\
                                name:"$days.current",\
                                objective:"fireworks.operations" \
                            },\
                        },\
                        {\
                            translate:"fireworks.calendar.day.ordinal_suffix.$(day_ordinal_suffix_key)",\
                            fallback:$(day_ordinal_suffix),\
                        },\
                        {\
                            translate:"fireworks.calendar.month_name.$(month_name_key).full",\
                            fallback:$(full_month_name),\
                        },\
                        {\
                            translate:"fireworks.calendar.month_name.$(month_name_key).abbreviated",\
                            fallback:$(abbreviated_month_name),\
                        },\
                        [\
                            {\
                                score: {\
                                    name:"#months.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$months.current",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                        {\
                            score: {\
                                name:"$months.current",\
                                objective:"fireworks.operations" \
                            },\
                        },\
                        [\
                            {\
                                score: {\
                                    name:"#years.display.prefix",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                            {\
                                score: {\
                                    name:"$years.current",\
                                    objective:"fireworks.operations" \
                                },\
                            },\
                        ],\
                    ]\
                },\
            ],\
            shadow_color:0\
        }