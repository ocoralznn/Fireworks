## GENERAL 
# %1$s Today (Weekday name)
# %2$s Calendar

## TODAY
# %1$s = Full weekday name
# %2$s = Abbreviated weekday name

## CALENDAR
# %1$s = Zero-padded day of month
# %2$s = Non-padded day of month
# %3$s = Day ordinal suffix
# %4$s = Full month name
# %5$s = Abbreviated month name
# %6$s = Zero-padded month number
# %7$s = Non-padded month number
# %8$s = Year

# Morning chat message
$execute \
    if function \
        fireworks:display/chat/return.can_display/morning \
    run return run tellraw @a {\
        translate:"chat.type.text",\
        with: [\
            {\
                translate:"fireworks.title",\
                fallback:"Fireworks",\
                color:"yellow",\
            },\
            {\
                translate:"fireworks.chat.morning",\
                fallback:"Good morning! Today is %2$s, what a lovely %1$s! Have fun with your day, and remember: Mine with caution, craft with care.",\
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
            }\
        ]\
    }

# Evening chat message
$execute \
    if function \
        fireworks:display/chat/return.can_display/evening \
    run return run tellraw @a {\
        translate:"chat.type.text",\
        with: [\
            {\
                translate:"fireworks.title",\
                fallback:"Fireworks",\
                color:"yellow",\
            },\
            {\
                translate:"fireworks.chat.evening",\
                fallback:"Good evening. It's %2$s, an awesome %1$s! Have a nice rest, and remember: Sleep every day to keep the phantoms away!",\
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
            }\
        ]\
    }