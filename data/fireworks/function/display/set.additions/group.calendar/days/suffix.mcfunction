# Translation index
execute \
    if score \
        $days.current fireworks.operations matches 1 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix_key \
                        set value "first"
execute \
    if score \
        $days.current fireworks.operations matches 2 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix_key \
                        set value "second"
execute \
    if score \
        $days.current fireworks.operations matches 3 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix_key \
                        set value "third"
execute \
    if score \
        $days.current fireworks.operations matches 4.. \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix_key \
                        set value "other"

# Fallback index
execute \
    if score \
        $days.current fireworks.operations matches 1 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix \
                        set value "st"

execute \
    if score \
        $days.current fireworks.operations matches 2 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix \
                        set value "nd"

execute \
    if score \
        $days.current fireworks.operations matches 3 \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix \
                        set value "rd"

execute \
    if score \
        $days.current fireworks.operations matches 4.. \
            run data \
                modify storage \
                    fireworks:definitions day_ordinal_suffix \
                        set value "th"