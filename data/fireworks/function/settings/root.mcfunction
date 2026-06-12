$dialog show @s {\
    type:"minecraft:confirmation",\
    title: {\
            translate:"screen.fireworks_options.title",\
            fallback:"Fireworks"\
        },\
    body: {\
        type:"minecraft:plain_message",\
        contents: {\
            translate:"screen.fireworks_options.description",\
            fallback:"Choose what should happen as the year draws to a close in your world."\
        }\
    },\
    inputs: [\
        {\
            type:"minecraft:single_option",\
            key:"display",\
            label: {\
                translate:"options.fireworks_display",\
                fallback:"Fireworks"\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"gui.no"\
                    }\
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"gui.yes"\
                    },\
                    initial:$(display) \
                }\
            ]\
        },\
        {\
            type:"minecraft:single_option",\
            key:"countdown",\
            label: {\
                translate:"options.countdown",\
                fallback:"Countdown"\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"gui.no"\
                    }\
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"gui.yes"\
                    },\
                    initial:$(countdown) \
                }\
            ]\
        },\
        {\
            type:"minecraft:single_option",\
            key:"music",\
            label: {\
                translate:"options.music",\
                fallback:"Music"\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"gui.no"\
                    },\
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"gui.yes"\
                    },\
                    initial:$(music) \
                }\
            ]\
        },\
        {\
            type:"minecraft:single_option",\
            key:"send_chat_message",\
            label: {\
                translate:"options.send_chat_message",\
                fallback:"Send chat message"\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"options.send_chat_message.never",\
                        fallback:"Never"\
                    },\
                    initial:$(never_send_message) \
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"options.send_chat_message.morning_and_evening",\
                        fallback:"Every 12 hours"\
                    },\
                    initial:$(send_message_morning_and_evening) \
                },\
                {\
                    id:"2b",\
                    display: {\
                        translate:"options.send_chat_message.everyday",\
                        fallback:"Every 24 hours"\
                    },\
                    initial:$(send_message_everyday) \
                }\
            ]\
        },\
        {\
            type:"minecraft:single_option",\
            key:"show_actionbar",\
            label: {\
                translate:"options.show_actionbar",\
                fallback:"Show actionbar"\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"options.show_actionbar.never",\
                        fallback:"Never"\
                    },\
                    initial:$(never_show_actionbar) \
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"options.show_actionbar.hold_clock",\
                        fallback:"When holding a clock"\
                    },\
                    initial:$(clock_show_actionbar) \
                },\
                {\
                    id:"2b",\
                    display: {\
                        translate:"options.show_actionbar.always",\
                        fallback:"Always"\
                    },\
                    initial:$(always_show_actionbar) \
                }\
            ]\
        }\
    ],\
    pause:false,\
    yes: {\
        label: {\
            translate:"gui.done"\
        },\
        action: {\
            type:"minecraft:dynamic/run_command",\
            template:"function fireworks:settings/ {D:\u0024(display),C:\u0024(countdown),M:\u0024(music),B:\u0024(send_chat_message),A:\u0024(show_actionbar)}"\
        }\
    },\
    no: {\
        label:{\
            translate:"gui.cancel"\
        }\
    }\
}