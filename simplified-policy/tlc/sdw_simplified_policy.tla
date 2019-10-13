---- MODULE sdw_simplified_policy ----

VARIABLE
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

vars == <<S_flying, S_pylon_inspection, S_at_landing_position, S_communication, S_battery, S_critical_battery_notification, take_off, land, go_to_landing_zone, execute_mission_task, notify_critical_battery, reset_critical_battery_notification_status>>

Dom_S_flying == {"flying", "on_the_ground"}
Dom_S_pylon_inspection == {"complete", "not_complete"}
Dom_S_at_landing_position == {"yes", "no"}
Dom_S_communication == {"stable", "lost"}
Dom_S_battery == {"ok", "critical"}
Dom_S_critical_battery_notification == {"not_yet_notified", "notified"}

TypeOK ==
    /\ S_flying \in Dom_S_flying
    /\ S_pylon_inspection \in Dom_S_pylon_inspection
    /\ S_at_landing_position \in Dom_S_at_landing_position
    /\ S_communication \in Dom_S_communication
    /\ S_battery \in Dom_S_battery
    /\ S_critical_battery_notification \in Dom_S_critical_battery_notification
    /\ take_off \in BOOLEAN
    /\ land \in BOOLEAN
    /\ go_to_landing_zone \in BOOLEAN
    /\ execute_mission_task \in BOOLEAN
    /\ notify_critical_battery \in BOOLEAN
    /\ reset_critical_battery_notification_status \in BOOLEAN

NextTypeOK ==
    /\ S_flying' \in Dom_S_flying
    /\ S_pylon_inspection' \in Dom_S_pylon_inspection
    /\ S_at_landing_position' \in Dom_S_at_landing_position
    /\ S_communication' \in Dom_S_communication
    /\ S_battery' \in Dom_S_battery
    /\ S_critical_battery_notification' \in Dom_S_critical_battery_notification
    /\ take_off' \in BOOLEAN
    /\ land' \in BOOLEAN
    /\ go_to_landing_zone' \in BOOLEAN
    /\ execute_mission_task' \in BOOLEAN
    /\ notify_critical_battery' \in BOOLEAN
    /\ reset_critical_battery_notification_status' \in BOOLEAN

Policy ==
    /\ IF
        \/
            /\ S_flying = "on_the_ground"
            /\ S_pylon_inspection = "not_complete"
            /\ S_communication = "stable"
            /\ S_battery = "ok"
       THEN take_off ELSE ~take_off
    /\ IF
        \/
            /\ S_flying = "flying"
            /\ S_at_landing_position = "yes"
            /\ S_communication = "lost"
        \/
            /\ S_flying = "flying"
            /\ S_at_landing_position = "yes"
            /\ S_battery = "critical"
        \/
            /\ S_flying = "flying"
            /\ S_pylon_inspection = "complete"
            /\ S_at_landing_position = "yes"
       THEN land ELSE ~land
    /\ IF
        \/
            /\ S_flying = "flying"
            /\ S_at_landing_position = "no"
            /\ S_communication = "lost"
        \/
            /\ S_flying = "flying"
            /\ S_at_landing_position = "no"
            /\ S_battery = "critical"
        \/
            /\ S_flying = "flying"
            /\ S_pylon_inspection = "complete"
            /\ S_at_landing_position = "no"
       THEN go_to_landing_zone ELSE ~go_to_landing_zone
    /\ IF
        \/
            /\ S_flying = "flying"
            /\ S_pylon_inspection = "not_complete"
            /\ S_communication = "stable"
            /\ S_battery = "ok"
       THEN execute_mission_task ELSE ~execute_mission_task
    /\ IF
        \/
            /\ S_communication = "stable"
            /\ S_battery = "critical"
            /\ S_critical_battery_notification = "not_yet_notified"
       THEN notify_critical_battery ELSE ~notify_critical_battery
    /\ IF
        \/
            /\ S_battery = "ok"
            /\ S_critical_battery_notification = "notified"
       THEN reset_critical_battery_notification_status ELSE ~reset_critical_battery_notification_status

NextPolicy == 
    /\ IF
        \/
            /\ S_flying' = "on_the_ground"
            /\ S_pylon_inspection' = "not_complete"
            /\ S_communication' = "stable"
            /\ S_battery' = "ok"
       THEN take_off' ELSE ~take_off'
    /\ IF
        \/
            /\ S_flying' = "flying"
            /\ S_at_landing_position' = "yes"
            /\ S_communication' = "lost"
        \/
            /\ S_flying' = "flying"
            /\ S_at_landing_position' = "yes"
            /\ S_battery' = "critical"
        \/
            /\ S_flying' = "flying"
            /\ S_pylon_inspection' = "complete"
            /\ S_at_landing_position' = "yes"
       THEN land' ELSE ~land'
    /\ IF
        \/
            /\ S_flying' = "flying"
            /\ S_at_landing_position' = "no"
            /\ S_communication' = "lost"
        \/
            /\ S_flying' = "flying"
            /\ S_at_landing_position' = "no"
            /\ S_battery' = "critical"
        \/
            /\ S_flying' = "flying"
            /\ S_pylon_inspection' = "complete"
            /\ S_at_landing_position' = "no"
       THEN go_to_landing_zone' ELSE ~go_to_landing_zone'
    /\ IF
        \/
            /\ S_flying' = "flying"
            /\ S_pylon_inspection' = "not_complete"
            /\ S_communication' = "stable"
            /\ S_battery' = "ok"
       THEN execute_mission_task' ELSE ~execute_mission_task'
    /\ IF
        \/
            /\ S_communication' = "stable"
            /\ S_battery' = "critical"
            /\ S_critical_battery_notification' = "not_yet_notified"
       THEN notify_critical_battery' ELSE ~notify_critical_battery'
    /\ IF
        \/
            /\ S_battery' = "ok"
            /\ S_critical_battery_notification' = "notified"
       THEN reset_critical_battery_notification_status' ELSE ~reset_critical_battery_notification_status'

====
