# Fallback index 0
execute \
    if score \
        $hours.current.military fireworks.operations matches 13..24 \
            run return run data \
                modify storage \
                    fireworks:definitions clock_suffix \
                        set value "PM"
# Translation index 1
execute \
    if score \
        $hours.current.military fireworks.operations matches 13..24 \
            run data \
                modify storage \
                    fireworks:definitions clock_suffix_key \
                        set value "pm"

# Fallback index 1
execute \
    if score \
        $hours.current.military fireworks.operations matches 1..12 \
            run data \
                modify storage \
                    fireworks:definitions clock_suffix \
                        set value "AM"
# Translation index 0
execute \
    if score \
        $hours.current.military fireworks.operations matches 1..12 \
            run data \
                modify storage \
                    fireworks:definitions clock_suffix_key \
                        set value "am"