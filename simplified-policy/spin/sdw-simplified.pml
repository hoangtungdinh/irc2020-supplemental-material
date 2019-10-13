mtype:S_flying = {flying_S_flying, on_the_ground_S_flying}
mtype:S_pylon_inspection = {complete_S_pylon_inspection, not_complete_S_pylon_inspection}
mtype:S_at_landing_position = {yes_S_at_landing_position, no_S_at_landing_position}
mtype:S_communication = {stable_S_communication, lost_S_communication}
mtype:S_battery = {ok_S_battery, critical_S_battery}
mtype:S_critical_battery_notification = {not_yet_notified_S_critical_battery_notification, notified_S_critical_battery_notification}

bool take_off
bool land
bool go_to_landing_zone
bool execute_mission_task
bool notify_critical_battery
bool reset_critical_battery_notification_status

mtype:S_flying S_flying
mtype:S_pylon_inspection S_pylon_inspection
mtype:S_at_landing_position S_at_landing_position
mtype:S_communication S_communication
mtype:S_battery S_battery
mtype:S_critical_battery_notification S_critical_battery_notification

bool running = false
bool init_state = false

inline change_S_flying() {
    if
    :: S_flying = flying_S_flying
    :: S_flying = on_the_ground_S_flying
    fi
}

inline change_S_pylon_inspection() {
    if
    :: S_pylon_inspection = complete_S_pylon_inspection
    :: S_pylon_inspection = not_complete_S_pylon_inspection
    fi
}

inline change_S_at_landing_position() {
    if
    :: S_at_landing_position = yes_S_at_landing_position
    :: S_at_landing_position = no_S_at_landing_position
    fi
}

inline change_S_communication() {
    if
    :: S_communication = stable_S_communication
    :: S_communication = lost_S_communication
    fi
}

inline change_S_battery() {
    if
    :: S_battery = ok_S_battery
    :: S_battery = critical_S_battery
    fi
}

inline change_S_critical_battery_notification() {
    if
    :: S_critical_battery_notification = not_yet_notified_S_critical_battery_notification
    :: S_critical_battery_notification = notified_S_critical_battery_notification
    fi
}

init {
    atomic {
        change_S_flying()
        change_S_pylon_inspection()
        change_S_at_landing_position()
        change_S_communication()
        change_S_battery()
        change_S_critical_battery_notification()
    if
    :: (
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_communication == stable_S_communication && S_battery == ok_S_battery)
       ) -> take_off = true;
    :: else -> take_off = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_communication == lost_S_communication) ||
        (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_battery == critical_S_battery) ||
        (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position)
       ) -> land = true;
    :: else -> land = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_communication == lost_S_communication) ||
        (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_battery == critical_S_battery) ||
        (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position)
       ) -> go_to_landing_zone = true;
    :: else -> go_to_landing_zone = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_communication == stable_S_communication && S_battery == ok_S_battery)
       ) -> execute_mission_task = true;
    :: else -> execute_mission_task = false;
    fi
    if
    :: (
        (S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification)
       ) -> notify_critical_battery = true;
    :: else -> notify_critical_battery = false;
    fi
    if
    :: (
        (S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification)
       ) -> reset_critical_battery_notification_status = true;
    :: else -> reset_critical_battery_notification_status = false;
    fi
        running = true
        init_state = true
    }
    init_state = false
    do
    :: atomic {
        change_S_flying()
        change_S_pylon_inspection()
        change_S_at_landing_position()
        change_S_communication()
        change_S_battery()
        change_S_critical_battery_notification()
        if
        :: (
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_communication == stable_S_communication && S_battery == ok_S_battery)
           ) -> take_off = true;
        :: else -> take_off = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_communication == lost_S_communication) ||
            (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_battery == critical_S_battery) ||
            (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position)
           ) -> land = true;
        :: else -> land = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_communication == lost_S_communication) ||
            (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_battery == critical_S_battery) ||
            (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position)
           ) -> go_to_landing_zone = true;
        :: else -> go_to_landing_zone = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_communication == stable_S_communication && S_battery == ok_S_battery)
           ) -> execute_mission_task = true;
        :: else -> execute_mission_task = false;
        fi
        if
        :: (
            (S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification)
           ) -> notify_critical_battery = true;
        :: else -> notify_critical_battery = false;
        fi
        if
        :: (
            (S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification)
           ) -> reset_critical_battery_notification_status = true;
        :: else -> reset_critical_battery_notification_status = false;
        fi
    }
    od
}

ltl p1 {
        (
            // a1.1
            [] (init_state -> (S_flying == on_the_ground_S_flying && S_at_landing_position == yes_S_at_landing_position)) &&
            // a1.2
            [](
                running -> (
                    (
                        (
                            S_at_landing_position == yes_S_at_landing_position && 
                            X(S_at_landing_position != yes_S_at_landing_position)
                        ) ||
                        (
                            S_at_landing_position == no_S_at_landing_position && 
                            X(S_at_landing_position != no_S_at_landing_position)
                        )
                    )
                    ->
                    (S_flying == flying_S_flying && X(S_flying == flying_S_flying))
                )
            ) &&
            // a1.3
            [] (
                running -> (
                    (
                        (S_flying == flying_S_flying && X(S_flying != flying_S_flying)) ||
                        (S_flying == on_the_ground_S_flying && X(S_flying != on_the_ground_S_flying))
                    )
                    ->
                    (take_off || land)
                )
            )
        )
        -> 
        [] (running -> (S_flying == on_the_ground_S_flying -> S_at_landing_position == yes_S_at_landing_position))
}

ltl p3 {
    // a3.2
    [] (running -> S_communication != lost_S_communication)
    ->
    [] (
        running -> (
            (S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification)
            -> notify_critical_battery
        )
    )
}

ltl p4 {
        (
            // a4.1
            ! (<> [] (execute_mission_task && X (S_pylon_inspection != complete_S_pylon_inspection))) &&
            // a4.2
            ! (<> [] (take_off && (S_flying != flying_S_flying))) &&
            // a4.5
            [] (
                (
                    (S_flying == flying_S_flying && X (S_flying != flying_S_flying)) ||
                    (S_flying == on_the_ground_S_flying && X (S_flying != on_the_ground_S_flying))
                )
                ->
                (take_off || land)
            ) &&
            // a4.8
            (<> [] (S_battery == ok_S_battery)) &&
            // a4.10
            (<> [] (S_communication == stable_S_communication))
        )
        ->
        <> (S_pylon_inspection == complete_S_pylon_inspection)
}
