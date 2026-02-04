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
        }\
    ],\
    pause:false,\
    yes: {\
        label: {\
            translate:"gui.done"\
        },\
        action: {\
            type:"minecraft:dynamic/run_command",\
            template:"function fireworks:settings/ {D:\u0024(display),C:\u0024(countdown),M:\u0024(music)}"\
        }\
    },\
    no: {\
        label:{\
            translate:"gui.cancel"\
        }\
    }\
}