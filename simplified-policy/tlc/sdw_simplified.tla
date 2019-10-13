---- MODULE sdw_simplified ----

EXTENDS sdw_simplified_policy

\**************************************************

Assumption == 
    \* a1.2
    /\ (S_at_landing_position # S_at_landing_position')  => (S_flying = "flying" /\ S_flying' = "flying")
    \* a1.3
    /\ (S_flying # S_flying') => (take_off \/ land)

Init == 
    /\ TypeOK 
    /\ Policy
    \* a1.1
    /\ (S_flying = "on_the_ground" /\ S_at_landing_position = "yes")

Next == 
    /\ NextTypeOK
    /\ NextPolicy
    /\ Assumption

Spec == Init /\ [][Next]_vars

\* p1
Property ==
    [](S_flying = "on_the_ground" => S_at_landing_position = "yes")

\**************************************************

\* Assumption == 
\*     \* a3.2
\*     S_communication' # "lost"

\* Init == 
\*     /\ TypeOK 
\*     /\ Policy
\*     \* a3.2
\*     /\ S_communication # "lost"

\* Next == 
\*     /\ NextTypeOK
\*     /\ NextPolicy
\*     /\ Assumption

\* Spec == Init /\ [][Next]_vars

\* \* p3
\* Property ==
\*     [](
\*         (S_battery = "critical" /\ S_critical_battery_notification = "not_yet_notified") => notify_critical_battery
\*     )

\**************************************************

\* Assumption == 
\*     \* a4.5
\*     /\ (S_flying # S_flying') => (take_off \/ land)

\* Init == 
\*     /\ TypeOK 
\*     /\ Policy

\* Next == 
\*     /\ NextTypeOK
\*     /\ NextPolicy
\*     /\ Assumption

\* Spec == 
\*     /\ Init 
\*     /\ [][Next]_vars
\*     \* a4.1
\*     /\ ~(<>[][execute_mission_task /\ S_pylon_inspection' # "complete"]_vars)
\*     \* a4.2
\*     /\ ~(<>[][take_off /\ S_flying' # "flying"]_vars)
\*     \* a4.8
\*     /\ <>[][S_battery = "ok"]_vars
\*     \* a4.10
\*     /\ <>[][S_communication = "stable"]_vars

\* \* p4
\* Property ==
\*     <>(S_pylon_inspection = "complete")

====
