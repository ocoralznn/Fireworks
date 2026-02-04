execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                display:"true"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        display:1b \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                display:"false"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        display:0b \
                    } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                countdown:"true"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        countdown:1b \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                countdown:"false"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        countdown:0b \
                    } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                music:"true"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        music:1b \
                    } \
                }
execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                music:"false"\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
                        music:0b \
                    } \
                }