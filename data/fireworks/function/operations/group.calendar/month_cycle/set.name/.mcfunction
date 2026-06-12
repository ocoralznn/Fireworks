execute \
    if score \
        $months.current fireworks.operations matches 1 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"January",\
                        abbreviated_month_name:"Jan",\
                        month_name_key:"january"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 2 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"February",\
                        abbreviated_month_name:"Feb",\
                        month_name_key:"february"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 3 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"March",\
                        abbreviated_month_name:"Mar",\
                        month_name_key:"march"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 4 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"April",\
                        abbreviated_month_name:"Apr",\
                        month_name_key:"april"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 5 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"May",\
                        abbreviated_month_name:"May",\
                        month_name_key:"may"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 6 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"June",\
                        abbreviated_month_name:"Jun",\
                        month_name_key:"june"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 7 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"July",\
                        abbreviated_month_name:"Jul",\
                        month_name_key:"july"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 8 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"August",\
                        abbreviated_month_name:"Aug",\
                        month_name_key:"august"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 9 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"September",\
                        abbreviated_month_name:"Sep",\
                        month_name_key:"september"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 10 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"October",\
                        abbreviated_month_name:"Oct",\
                        month_name_key:"october"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 11 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"November",\
                        abbreviated_month_name:"Nov",\
                        month_name_key:"november"\
                    }
execute \
    if score \
        $months.current fireworks.operations matches 12 \
            run data \
                merge storage \
                    fireworks:definitions {\
                        full_month_name:"December",\
                        abbreviated_month_name:"Dec",\
                        month_name_key:"december"\
                    }