mtype:S_flying = {flying_S_flying, on_the_ground_S_flying}
mtype:S_pylon_inspection = {complete_S_pylon_inspection, not_complete_S_pylon_inspection}
mtype:S_manual_control_request = {on_S_manual_control_request, off_S_manual_control_request}
mtype:S_at_landing_position = {yes_S_at_landing_position, no_S_at_landing_position, unknown_S_at_landing_position}
mtype:S_mission_configuration = {configured_S_mission_configuration, not_configured_S_mission_configuration}
mtype:S_mission_started = {yes_S_mission_started, no_S_mission_started}
mtype:S_being_blocked = {yes_S_being_blocked, no_S_being_blocked}
mtype:S_being_blocked_notification = {not_yet_notified_S_being_blocked_notification, notified_S_being_blocked_notification}
mtype:S_communication = {stable_S_communication, degraded_S_communication, lost_S_communication}
mtype:S_communication_failure_notification = {not_yet_notified_S_communication_failure_notification, notified_S_communication_failure_notification}
mtype:S_battery = {ok_S_battery, low_S_battery, critical_S_battery}
mtype:S_low_battery_notification = {not_yet_notified_S_low_battery_notification, notified_S_low_battery_notification}
mtype:S_critical_battery_notification = {not_yet_notified_S_critical_battery_notification, notified_S_critical_battery_notification}
mtype:S_obstacle_detection = {stable_S_obstacle_detection, lost_S_obstacle_detection}
mtype:S_obstacle_detection_failure_notification = {not_yet_notified_S_obstacle_detection_failure_notification, notified_S_obstacle_detection_failure_notification}
mtype:S_mission_abort_request = {yes_S_mission_abort_request, no_S_mission_abort_request}

bool take_off
bool land
bool go_to_landing_zone
bool manual_control
bool execute_mission_task
bool configure_mission
bool wait_for_start
bool notify_being_blocked
bool notify_communication_failure
bool notify_low_battery
bool notify_critical_battery
bool notify_obstacle_detection_failure
bool reset_being_blocked_notification_status
bool reset_communication_failure_notification_status
bool reset_low_battery_notification_status
bool reset_critical_battery_notification_status
bool reset_obstacle_detection_failure_notification_status

mtype:S_flying S_flying
mtype:S_pylon_inspection S_pylon_inspection
mtype:S_manual_control_request S_manual_control_request
mtype:S_at_landing_position S_at_landing_position
mtype:S_mission_configuration S_mission_configuration
mtype:S_mission_started S_mission_started
mtype:S_being_blocked S_being_blocked
mtype:S_being_blocked_notification S_being_blocked_notification
mtype:S_communication S_communication
mtype:S_communication_failure_notification S_communication_failure_notification
mtype:S_battery S_battery
mtype:S_low_battery_notification S_low_battery_notification
mtype:S_critical_battery_notification S_critical_battery_notification
mtype:S_obstacle_detection S_obstacle_detection
mtype:S_obstacle_detection_failure_notification S_obstacle_detection_failure_notification
mtype:S_mission_abort_request S_mission_abort_request

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

inline change_S_manual_control_request() {
    if
    :: S_manual_control_request = on_S_manual_control_request
    :: S_manual_control_request = off_S_manual_control_request
    fi
}

inline change_S_at_landing_position() {
    if
    :: S_at_landing_position = yes_S_at_landing_position
    :: S_at_landing_position = no_S_at_landing_position
    :: S_at_landing_position = unknown_S_at_landing_position
    fi
}

inline change_S_mission_configuration() {
    if
    :: S_mission_configuration = configured_S_mission_configuration
    :: S_mission_configuration = not_configured_S_mission_configuration
    fi
}

inline change_S_mission_started() {
    if
    :: S_mission_started = yes_S_mission_started
    :: S_mission_started = no_S_mission_started
    fi
}

inline change_S_being_blocked() {
    if
    :: S_being_blocked = yes_S_being_blocked
    :: S_being_blocked = no_S_being_blocked
    fi
}

inline change_S_being_blocked_notification() {
    if
    :: S_being_blocked_notification = not_yet_notified_S_being_blocked_notification
    :: S_being_blocked_notification = notified_S_being_blocked_notification
    fi
}

inline change_S_communication() {
    if
    :: S_communication = stable_S_communication
    :: S_communication = degraded_S_communication
    :: S_communication = lost_S_communication
    fi
}

inline change_S_communication_failure_notification() {
    if
    :: S_communication_failure_notification = not_yet_notified_S_communication_failure_notification
    :: S_communication_failure_notification = notified_S_communication_failure_notification
    fi
}

inline change_S_battery() {
    if
    :: S_battery = ok_S_battery
    :: S_battery = low_S_battery
    :: S_battery = critical_S_battery
    fi
}

inline change_S_low_battery_notification() {
    if
    :: S_low_battery_notification = not_yet_notified_S_low_battery_notification
    :: S_low_battery_notification = notified_S_low_battery_notification
    fi
}

inline change_S_critical_battery_notification() {
    if
    :: S_critical_battery_notification = not_yet_notified_S_critical_battery_notification
    :: S_critical_battery_notification = notified_S_critical_battery_notification
    fi
}

inline change_S_obstacle_detection() {
    if
    :: S_obstacle_detection = stable_S_obstacle_detection
    :: S_obstacle_detection = lost_S_obstacle_detection
    fi
}

inline change_S_obstacle_detection_failure_notification() {
    if
    :: S_obstacle_detection_failure_notification = not_yet_notified_S_obstacle_detection_failure_notification
    :: S_obstacle_detection_failure_notification = notified_S_obstacle_detection_failure_notification
    fi
}

inline change_S_mission_abort_request() {
    if
    :: S_mission_abort_request = yes_S_mission_abort_request
    :: S_mission_abort_request = no_S_mission_abort_request
    fi
}

init {
    atomic {
        change_S_flying()
        change_S_pylon_inspection()
        change_S_manual_control_request()
        change_S_at_landing_position()
        change_S_mission_configuration()
        change_S_mission_started()
        change_S_being_blocked()
        change_S_being_blocked_notification()
        change_S_communication()
        change_S_communication_failure_notification()
        change_S_battery()
        change_S_low_battery_notification()
        change_S_critical_battery_notification()
        change_S_obstacle_detection()
        change_S_obstacle_detection_failure_notification()
        change_S_mission_abort_request()
    if
    :: (
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request)
       ) -> take_off = true;
    :: else -> take_off = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
       ) -> land = true;
    :: else -> land = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
       ) -> go_to_landing_zone = true;
    :: else -> go_to_landing_zone = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started) ||
        (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started) ||
        (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
       ) -> manual_control = true;
    :: else -> manual_control = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request)
       ) -> execute_mission_task = true;
    :: else -> execute_mission_task = false;
    fi
    if
    :: (
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
        (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
       ) -> configure_mission = true;
    :: else -> configure_mission = false;
    fi
    if
    :: (
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
        (S_flying == flying_S_flying && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started) ||
        (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started) ||
        (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started)
       ) -> wait_for_start = true;
    :: else -> wait_for_start = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication)
       ) -> notify_being_blocked = true;
    :: else -> notify_being_blocked = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification)
       ) -> notify_communication_failure = true;
    :: else -> notify_communication_failure = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification)
       ) -> notify_low_battery = true;
    :: else -> notify_low_battery = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification)
       ) -> notify_critical_battery = true;
    :: else -> notify_critical_battery = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification)
       ) -> notify_obstacle_detection_failure = true;
    :: else -> notify_obstacle_detection_failure = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification)
       ) -> reset_being_blocked_notification_status = true;
    :: else -> reset_being_blocked_notification_status = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification)
       ) -> reset_communication_failure_notification_status = true;
    :: else -> reset_communication_failure_notification_status = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification)
       ) -> reset_low_battery_notification_status = true;
    :: else -> reset_low_battery_notification_status = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification)
       ) -> reset_critical_battery_notification_status = true;
    :: else -> reset_critical_battery_notification_status = false;
    fi
    if
    :: (
        (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
        (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification)
       ) -> reset_obstacle_detection_failure_notification_status = true;
    :: else -> reset_obstacle_detection_failure_notification_status = false;
    fi
        running = true
        init_state = true
    }
    init_state = false
    do
    :: atomic {
        change_S_flying()
        change_S_pylon_inspection()
        change_S_manual_control_request()
        change_S_at_landing_position()
        change_S_mission_configuration()
        change_S_mission_started()
        change_S_being_blocked()
        change_S_being_blocked_notification()
        change_S_communication()
        change_S_communication_failure_notification()
        change_S_battery()
        change_S_low_battery_notification()
        change_S_critical_battery_notification()
        change_S_obstacle_detection()
        change_S_obstacle_detection_failure_notification()
        change_S_mission_abort_request()
        if
        :: (
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request)
           ) -> take_off = true;
        :: else -> take_off = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
           ) -> land = true;
        :: else -> land = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
           ) -> go_to_landing_zone = true;
        :: else -> go_to_landing_zone = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started) ||
            (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started) ||
            (S_flying == flying_S_flying && S_manual_control_request == on_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
           ) -> manual_control = true;
        :: else -> manual_control = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == degraded_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection && S_mission_abort_request == no_S_mission_abort_request)
           ) -> execute_mission_task = true;
        :: else -> execute_mission_task = false;
        fi
        if
        :: (
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_battery == ok_S_battery && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication == stable_S_communication && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked_notification == notified_S_being_blocked_notification && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_being_blocked == no_S_being_blocked && S_communication_failure_notification == notified_S_communication_failure_notification && S_low_battery_notification == notified_S_low_battery_notification && S_obstacle_detection == stable_S_obstacle_detection) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == on_the_ground_S_flying && S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_communication == lost_S_communication) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_battery == critical_S_battery) ||
            (S_flying == flying_S_flying && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started && S_mission_abort_request == yes_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_pylon_inspection == complete_S_pylon_inspection && S_manual_control_request == off_S_manual_control_request && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == yes_S_mission_started)
           ) -> configure_mission = true;
        :: else -> configure_mission = false;
        fi
        if
        :: (
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == stable_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == ok_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_pylon_inspection == not_complete_S_pylon_inspection && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started && S_communication == degraded_S_communication && S_battery == low_S_battery && S_mission_abort_request == no_S_mission_abort_request) ||
            (S_flying == flying_S_flying && S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_mission_started == no_S_mission_started) ||
            (S_flying == flying_S_flying && S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started) ||
            (S_flying == flying_S_flying && S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_mission_started == no_S_mission_started)
           ) -> wait_for_start = true;
        :: else -> wait_for_start = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == stable_S_communication) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == yes_S_being_blocked && S_being_blocked_notification == not_yet_notified_S_being_blocked_notification && S_communication == degraded_S_communication)
           ) -> notify_being_blocked = true;
        :: else -> notify_being_blocked = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_communication_failure_notification == not_yet_notified_S_communication_failure_notification)
           ) -> notify_communication_failure = true;
        :: else -> notify_communication_failure = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == low_S_battery && S_low_battery_notification == not_yet_notified_S_low_battery_notification)
           ) -> notify_low_battery = true;
        :: else -> notify_low_battery = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_battery == critical_S_battery && S_critical_battery_notification == not_yet_notified_S_critical_battery_notification)
           ) -> notify_critical_battery = true;
        :: else -> notify_critical_battery = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == degraded_S_communication && S_obstacle_detection == lost_S_obstacle_detection && S_obstacle_detection_failure_notification == not_yet_notified_S_obstacle_detection_failure_notification)
           ) -> notify_obstacle_detection_failure = true;
        :: else -> notify_obstacle_detection_failure = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_being_blocked == no_S_being_blocked && S_being_blocked_notification == notified_S_being_blocked_notification)
           ) -> reset_being_blocked_notification_status = true;
        :: else -> reset_being_blocked_notification_status = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_communication == stable_S_communication && S_communication_failure_notification == notified_S_communication_failure_notification)
           ) -> reset_communication_failure_notification_status = true;
        :: else -> reset_communication_failure_notification_status = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_low_battery_notification == notified_S_low_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == critical_S_battery && S_low_battery_notification == notified_S_low_battery_notification)
           ) -> reset_low_battery_notification_status = true;
        :: else -> reset_low_battery_notification_status = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == ok_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_battery == low_S_battery && S_critical_battery_notification == notified_S_critical_battery_notification)
           ) -> reset_critical_battery_notification_status = true;
        :: else -> reset_critical_battery_notification_status = false;
        fi
        if
        :: (
            (S_at_landing_position == unknown_S_at_landing_position && S_mission_configuration == not_configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == yes_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification) ||
            (S_at_landing_position == no_S_at_landing_position && S_mission_configuration == configured_S_mission_configuration && S_obstacle_detection == stable_S_obstacle_detection && S_obstacle_detection_failure_notification == notified_S_obstacle_detection_failure_notification)
           ) -> reset_obstacle_detection_failure_notification_status = true;
        :: else -> reset_obstacle_detection_failure_notification_status = false;
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

ltl p2 {
    (
        // a2.1
        [] (init_state -> (S_flying == on_the_ground_S_flying)) &&
        // a2.2
        [] (
            running -> (
                (
                    (S_flying == on_the_ground_S_flying) &&
                    X(S_flying == flying_S_flying)
                ) ->
                take_off
            )
        ) &&
        // a2.3
        [] (
            running -> (
                (S_mission_started == yes_S_mission_started) -> X(S_mission_started == yes_S_mission_started)
            )
        )
    )
    ->
    [] (running -> (S_mission_started == no_S_mission_started -> S_flying != flying_S_flying))
}

ltl p3 {
    (
        // a3.1
        [] (running -> (
            S_mission_configuration == configured_S_mission_configuration <-> S_at_landing_position != unknown_S_at_landing_position
        )) &&
        // a3.2
        [] (running -> (
            S_communication != lost_S_communication
        ))
    ) ->
    [] (
        running -> (
            (
                S_battery == critical_S_battery &&
                S_critical_battery_notification == not_yet_notified_S_critical_battery_notification
            ) ->
            notify_critical_battery
        )
    )
}

ltl p4 {
    [] (running -> (
            (
                // a4.1
                !(<> [] (execute_mission_task && S_being_blocked == no_S_being_blocked && X(S_pylon_inspection != complete_S_pylon_inspection))) &&
                // a4.2
                !(<> [] (take_off && X(S_flying != flying_S_flying))) &&
                // a4.3
                !(<> [] (land && X(S_flying != on_the_ground_S_flying))) &&
                // a4.4
                !(<> [] (configure_mission && X(S_mission_configuration != configured_S_mission_configuration))) &&
                // a4.5
                [] (    
                    (
                        S_flying == on_the_ground_S_flying &&
                        X(S_flying == flying_S_flying)
                    ) ->
                    take_off
                ) &&
                [] (
                    (
                        S_flying == flying_S_flying &&
                        X(S_flying == on_the_ground_S_flying)
                    ) ->
                    land
                ) &&
                // a4.6
                [] (
                    S_mission_started == yes_S_mission_started -> X(S_mission_started == yes_S_mission_started)
                ) &&
                // a4.7
                [] (S_mission_configuration == configured_S_mission_configuration <-> S_at_landing_position != unknown_S_at_landing_position) &&
                // a4.8
                <> [] (S_battery == ok_S_battery) &&
                // a4.9
                <> [] (S_being_blocked == no_S_being_blocked) &&
                // a4.10
                <> [] (S_communication == stable_S_communication) &&
                // a4.11
                <> [] (S_obstacle_detection == stable_S_obstacle_detection) &&
                // a4.12
                [] (S_mission_abort_request == no_S_mission_abort_request) &&
                // a4.13
                <> [] (S_manual_control_request == off_S_manual_control_request) &&
                // a4.14
                <> (S_mission_started == yes_S_mission_started) &&
                // a4.15
                [] (S_mission_configuration == configured_S_mission_configuration -> X(S_mission_configuration == configured_S_mission_configuration))
            ) ->
            <> (S_pylon_inspection == complete_S_pylon_inspection)
        )
    )
}