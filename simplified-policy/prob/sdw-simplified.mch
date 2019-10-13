MACHINE sdw_simplified

ABSTRACT_VARIABLES
    S_flying,
    S_pylon_inspection,
    S_at_landing_position,
    S_communication,
    S_battery,
    S_critical_battery_notification,
    take_off,
    land,
    go_to_landing_zone,
    execute_mission_task,
    notify_critical_battery,
    reset_critical_battery_notification_status

DEFINITIONS
    SET_PREF_MAX_INITIALISATIONS == 4096;
    SET_PREF_MAX_OPERATIONS == 4096

SETS
    Dom_S_flying = {flying_S_flying, on_the_ground_S_flying};
    Dom_S_pylon_inspection = {complete_S_pylon_inspection, not_complete_S_pylon_inspection};
    Dom_S_at_landing_position = {yes_S_at_landing_position, no_S_at_landing_position};
    Dom_S_communication = {stable_S_communication, lost_S_communication};
    Dom_S_battery = {ok_S_battery, critical_S_battery};
    Dom_S_critical_battery_notification = {not_yet_notified_S_critical_battery_notification, notified_S_critical_battery_notification}

INVARIANT
    S_flying : Dom_S_flying &
    S_pylon_inspection : Dom_S_pylon_inspection &
    S_at_landing_position : Dom_S_at_landing_position &
    S_communication : Dom_S_communication &
    S_battery : Dom_S_battery &
    S_critical_battery_notification : Dom_S_critical_battery_notification &
    take_off : BOOL &
    land : BOOL &
    go_to_landing_zone : BOOL &
    execute_mission_task : BOOL &
    notify_critical_battery : BOOL &
    reset_critical_battery_notification_status : BOOL 

INITIALISATION
    S_flying :: Dom_S_flying;
    S_pylon_inspection :: Dom_S_pylon_inspection;
    S_at_landing_position :: Dom_S_at_landing_position;
    S_communication :: Dom_S_communication;
    S_battery :: Dom_S_battery;
    S_critical_battery_notification :: Dom_S_critical_battery_notification;
    IF
        (S_flying = on_the_ground_S_flying & S_pylon_inspection = not_complete_S_pylon_inspection & S_communication = stable_S_communication & S_battery = ok_S_battery)
    THEN take_off := TRUE ELSE take_off := FALSE END;
    IF
        (S_flying = flying_S_flying & S_at_landing_position = yes_S_at_landing_position & S_communication = lost_S_communication) or
        (S_flying = flying_S_flying & S_at_landing_position = yes_S_at_landing_position & S_battery = critical_S_battery) or
        (S_flying = flying_S_flying & S_pylon_inspection = complete_S_pylon_inspection & S_at_landing_position = yes_S_at_landing_position)
    THEN land := TRUE ELSE land := FALSE END;
    IF
        (S_flying = flying_S_flying & S_at_landing_position = no_S_at_landing_position & S_communication = lost_S_communication) or
        (S_flying = flying_S_flying & S_at_landing_position = no_S_at_landing_position & S_battery = critical_S_battery) or
        (S_flying = flying_S_flying & S_pylon_inspection = complete_S_pylon_inspection & S_at_landing_position = no_S_at_landing_position)
    THEN go_to_landing_zone := TRUE ELSE go_to_landing_zone := FALSE END;
    IF
        (S_flying = flying_S_flying & S_pylon_inspection = not_complete_S_pylon_inspection & S_communication = stable_S_communication & S_battery = ok_S_battery)
    THEN execute_mission_task := TRUE ELSE execute_mission_task := FALSE END;
    IF
        (S_communication = stable_S_communication & S_battery = critical_S_battery & S_critical_battery_notification = not_yet_notified_S_critical_battery_notification)
    THEN notify_critical_battery := TRUE ELSE notify_critical_battery := FALSE END;
    IF
        (S_battery = ok_S_battery & S_critical_battery_notification = notified_S_critical_battery_notification)
    THEN reset_critical_battery_notification_status := TRUE ELSE reset_critical_battery_notification_status := FALSE END

OPERATIONS
    update_state =
        BEGIN
            S_flying :: Dom_S_flying;
            S_pylon_inspection :: Dom_S_pylon_inspection;
            S_at_landing_position :: Dom_S_at_landing_position;
            S_communication :: Dom_S_communication;
            S_battery :: Dom_S_battery;
            S_critical_battery_notification :: Dom_S_critical_battery_notification;
            IF
                (S_flying = on_the_ground_S_flying & S_pylon_inspection = not_complete_S_pylon_inspection & S_communication = stable_S_communication & S_battery = ok_S_battery)
            THEN take_off := TRUE ELSE take_off := FALSE END;
            IF
                (S_flying = flying_S_flying & S_at_landing_position = yes_S_at_landing_position & S_communication = lost_S_communication) or
                (S_flying = flying_S_flying & S_at_landing_position = yes_S_at_landing_position & S_battery = critical_S_battery) or
                (S_flying = flying_S_flying & S_pylon_inspection = complete_S_pylon_inspection & S_at_landing_position = yes_S_at_landing_position)
            THEN land := TRUE ELSE land := FALSE END;
            IF
                (S_flying = flying_S_flying & S_at_landing_position = no_S_at_landing_position & S_communication = lost_S_communication) or
                (S_flying = flying_S_flying & S_at_landing_position = no_S_at_landing_position & S_battery = critical_S_battery) or
                (S_flying = flying_S_flying & S_pylon_inspection = complete_S_pylon_inspection & S_at_landing_position = no_S_at_landing_position)
            THEN go_to_landing_zone := TRUE ELSE go_to_landing_zone := FALSE END;
            IF
                (S_flying = flying_S_flying & S_pylon_inspection = not_complete_S_pylon_inspection & S_communication = stable_S_communication & S_battery = ok_S_battery)
            THEN execute_mission_task := TRUE ELSE execute_mission_task := FALSE END;
            IF
                (S_communication = stable_S_communication & S_battery = critical_S_battery & S_critical_battery_notification = not_yet_notified_S_critical_battery_notification)
            THEN notify_critical_battery := TRUE ELSE notify_critical_battery := FALSE END;
            IF
                (S_battery = ok_S_battery & S_critical_battery_notification = notified_S_critical_battery_notification)
            THEN reset_critical_battery_notification_status := TRUE ELSE reset_critical_battery_notification_status := FALSE END
        END
END
