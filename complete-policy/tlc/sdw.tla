---- MODULE sdw ----

EXTENDS sdw_policy

\* **********************

\* Assumption ==
\*     \* a1.2
\*     /\ (S_at_landing_position # S_at_landing_position')  => (S_flying = "flying" /\ S_flying' = "flying")
\*     \* a1.3
\*     /\ (S_flying # S_flying') => (take_off \/ land)

\* Init == 
\*     /\ TypeOK
\*     \* a1.1
\*     /\ S_flying = "on_the_ground"
\*     /\ S_at_landing_position = "yes"

\* Next == 
\*     /\ NextTypeOK
\*     /\ Assumption

\* Spec == Init /\ [][Next]_vars

\* \* p1
\* Property ==
\*     [](S_flying = "on_the_ground" => S_at_landing_position = "yes")

\* **********************

\* Assumption ==
\*     \* a2.2
\*     /\ ((S_flying = "on_the_ground" /\ S_flying' = "flying") => take_off)
\*     \* a2.3
\*     /\ (S_mission_started = "yes" => S_mission_started' = "yes")

\* Init == 
\*     /\ TypeOK
\*     \* a2.1
\*     /\ S_flying = "on_the_ground"

\* Next == 
\*     /\ NextTypeOK
\*     /\ Assumption

\* Spec == Init /\ [][Next]_vars

\* \* p2
\* Property ==
\*     [](S_mission_started = "no" => S_flying # "flying")

\* **********************

\* Assumption ==
\*     \* a3.1
\*     /\ (S_mission_configuration' = "configured" <=> S_at_landing_position' # "unknown")
\*     \* a3.2
\*     /\ S_communication' # "lost"

\* Init == 
\*     /\ TypeOK
\*     \* a3.1
\*     /\ (S_mission_configuration = "configured" <=> S_at_landing_position # "unknown")
\*     \* a3.2
\*     /\ S_communication # "lost"

\* Next == 
\*     /\ NextTypeOK
\*     /\ Assumption

\* Spec == Init /\ [][Next]_vars

\* \* p3
\* Property ==
\*     [](
\*         (S_battery = "low" /\ S_low_battery_notification = "not_yet_notified") => notify_low_battery
\*     )

\* **********************

Assumption ==
    \* a4.5
    /\ (S_flying # S_flying') => (take_off \/ land)
    \* a4.6
    /\ (S_mission_started = "yes" => S_mission_started' = "yes")
    \* a4.7
    /\ (S_mission_configuration' = "configured" <=> S_at_landing_position' # "unknown")
    \* a4.12
    /\ (S_mission_abort_request' = "no")
    \* a4.15
    /\ (S_mission_configuration = "configured" => S_mission_configuration' = "configured" )

Init == 
    /\ TypeOK
    \* a4.7
    /\ (S_mission_configuration = "configured" <=> S_at_landing_position # "unknown")
    \* a4.12
    /\ (S_mission_abort_request = "no")

Next == 
    /\ NextTypeOK
    /\ Assumption

Spec == 
    /\ Init 
    /\ [][Next]_vars 
    /\ WF_vars(Next) 
    \* a4.1
    /\ ~(<>[][execute_mission_task /\ S_being_blocked = "no" /\ S_pylon_inspection' # "complete"]_vars)
    \* a4.2
    /\ ~(<>[][take_off /\ S_flying' # "flying"]_vars)
    \* a4.3
    /\ ~(<>[][land /\ S_flying' # "on_the_ground"]_vars)
    \* a4.4
    /\ ~(<>[][configure_mission /\ S_mission_configuration' # "configured"]_vars)
    \* a4.8
    /\ <>[][S_battery = "ok"]_vars
    \* a4.9
    /\ <>[][S_being_blocked = "no"]_vars
    \* a4.10
    /\ <>[][S_communication = "stable"]_vars
    \* a4.11
    /\ <>[][S_obstacle_detection = "stable"]_vars
    \* a4.13
    /\ <>[][S_manual_control_request = "off"]_vars
    \* a4.14
    /\ <>[][S_mission_started = "yes"]_vars

\* p4
Property ==
    <>(S_pylon_inspection = "complete")

====
