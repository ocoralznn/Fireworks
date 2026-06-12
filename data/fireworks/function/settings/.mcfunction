$data \
    merge storage \
        fireworks:definitions { \
            settings: { \
                display:$(D)b, \
                countdown:$(C)b, \
                music:$(M)b, \
                send_chat_message:$(B)b, \
                show_actionbar:$(A)b \
            } \
        }