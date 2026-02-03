execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                display:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
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
                    settings: { \
                        display:"false" \
                    } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                countdown:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
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
                    settings: { \
                        countdown:"false" \
                    } \
                }

execute \
    if data storage \
        fireworks:definitions {\
            settings:{\
                music:1b\
            }\
        } \
            run data \
                merge storage fireworks:definitions { \
                    settings: { \
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
                    settings: { \
                        music:"false" \
                    } \
                }