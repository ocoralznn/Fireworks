# Fireworks Display
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                display:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        display:"true" \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                display:0b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        display:"false" \
                    } \
                }

# Countdown
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                countdown:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        countdown:"true" \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                countdown:0b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        countdown:"false" \
                    } \
                }

# Music
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                music:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        music:"true" \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                music:0b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: { \
                        music:"false" \
                    } \
                }

# Send Chat Message
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                send_chat_message:0b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_send_message:"true",\
                            send_message_morning_and_evening:"false",\
                            send_message_everyday:"false"\
                        } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                send_chat_message:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_send_message:"false",\
                            send_message_morning_and_evening:"true",\
                            send_message_everyday:"false"\
                        } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                send_chat_message:2b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_send_message:"false",\
                            send_message_morning_and_evening:"false",\
                            send_message_everyday:"true"\
                        } \
                }

# Show Actionbar
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                show_actionbar:0b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_show_actionbar:"true",\
                            clock_show_actionbar:"false",\
                            always_show_actionbar:"false"\
                        } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                show_actionbar:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_show_actionbar:"false",\
                            clock_show_actionbar:"true",\
                            always_show_actionbar:"false"\
                        } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                show_actionbar:2b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    options: {\
                            never_show_actionbar:"false",\
                            clock_show_actionbar:"false",\
                            always_show_actionbar:"true"\
                        } \
                }