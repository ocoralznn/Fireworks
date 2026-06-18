$dialog show @s {\
    type:"minecraft:confirmation",\
    title: {\
        translate:"fireworks.title",\
        fallback:"Fireworks"\
    },\
    inputs: [\
        {\
            type:"minecraft:single_option",\
            key:"display",\
            label: {\
                translate:"fireworks.settings.fireworks_display.title",\
                fallback:"Fireworks Display",\
                hover_event: {\
		            action: "show_text",\
		            value: {\
                        translate: "fireworks.settings.fireworks_display.description"\
                    }\
	            }\
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
                translate:"fireworks.settings.countdown.title",\
                fallback:"Countdown",\
                hover_event: {\
		            action: "show_text",\
		            value: {\
                        translate: "fireworks.settings.countdown.description"\
                    }\
	            }\
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
                translate:"fireworks.settings.music.title",\
                fallback:"Music",\
                hover_event: {\
		            action: "show_text",\
		            value: {\
                        translate: "fireworks.settings.music.description"\
                    }\
	            }\
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
                translate:"fireworks.settings.send_chat_message.title",\
                fallback:"Send chat message",\
                hover_event: {\
		            action: "show_text",\
		            value: {\
                        translate: "fireworks.settings.send_chat_message.description"\
                    }\
	            }\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"fireworks.settings.send_chat_message.never",\
                        fallback:"Never"\
                    },\
                    initial:$(never_send_message) \
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"fireworks.settings.send_chat_message.morning_and_evening",\
                        fallback:"Every 12 hours"\
                    },\
                    initial:$(send_message_morning_and_evening) \
                },\
                {\
                    id:"2b",\
                    display: {\
                        translate:"fireworks.settings.send_chat_message.everyday",\
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
                translate:"fireworks.settings.show_actionbar.title",\
                fallback:"Show actionbar",\
                hover_event: {\
		            action: "show_text",\
		            value: {\
                        translate: "fireworks.settings.show_actionbar.description"\
                    }\
	            }\
            },\
            options: [\
                {\
                    id:"0b",\
                    display: {\
                        translate:"fireworks.settings.show_actionbar.never",\
                        fallback:"Never"\
                    },\
                    initial:$(never_show_actionbar) \
                },\
                {\
                    id:"1b",\
                    display: {\
                        translate:"fireworks.settings.show_actionbar.hold_clock",\
                        fallback:"When holding a clock"\
                    },\
                    initial:$(clock_show_actionbar) \
                },\
                {\
                    id:"2b",\
                    display: {\
                        translate:"fireworks.settings.show_actionbar.always",\
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