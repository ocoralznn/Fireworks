execute \
    if score \
        $months.current fireworks.operations matches 1 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"January",\
                        months_name_shortened:"Jan",\
                        months_name_index:"january"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 2 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"February",\
                        months_name_shortened:"Feb",\
                        months_name_index:"february"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 3 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"March",\
                        months_name_shortened:"Mar",\
                        months_name_index:"march"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 4 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"April",\
                        months_name_shortened:"Apr",\
                        months_name_index:"april"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 5 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"May",\
                        months_name_shortened:"May",\
                        months_name_index:"may"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 6 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"June",\
                        months_name_shortened:"Jun",\
                        months_name_index:"june"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 7 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"July",\
                        months_name_shortened:"Jul",\
                        months_name_index:"july"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 8 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"August",\
                        months_name_shortened:"Aug",\
                        months_name_index:"august"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 9 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"September",\
                        months_name_shortened:"Sep",\
                        months_name_index:"september"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 10 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"October",\
                        months_name_shortened:"Oct",\
                        months_name_index:"october"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 11 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"November",\
                        months_name_shortened:"Nov",\
                        months_name_index:"november"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 12 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        months_name:"December",\
                        months_name_shortened:"Dec",\
                        months_name_index:"december"\
                    }