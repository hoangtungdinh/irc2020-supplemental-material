## Introduction

This repository contains the supplemental material for the publication *"Verifying autonomous decision making against environment assumptions: An experience report"* submitted to IRC 2020.

The folder `simplified-policy` contains the simplified policy and its specifications in each model checker's language.

The folder `complete-policy` contains the complete policy and its specifications in each model checker's language. Since the complete policy is large, it has been compressed. Please decompress the zip file to obtain the policy in a readable json format.

All the properties and their corresponding assumptions can be found below.

## Properties and assumptions

**Property 1**: The UAV must always land at one of the predefined landing zones.

**Assumption 1.1**: At the beginning, the UAV must be landed at a landing zone.

**Assumption 1.2**: The UAV can only change its location while it is flying.

**Assumption 1.3**: The UAV must have full control over its flying state, that is, it can only change its flying state by executing the `take_off` or `land` actions.

---

**Property 2**: The UAV must never fly without permission.

**Assumption 2.1**: At the beginning, the UAV must be landed.

**Assumption 2.2**: The UAV is the only one who can decide whether it will take off or not (by executing the `take_off` action).

**Assumption 2.3**: Once the start permission has been given, it should never be taken back.

---

**Property 3**: Always notify the human operator when (1) the battery is low, (2) the UAV is being blocked, (3) the communication link is degraded or (4) the obstacle detection component is failed. 

**Assumption 3.1**: The UAV always knows whether it is currently at a landing zone when the mission has been configured.

**Assumption 3.2**: The communication link never gets lost.

---

**Property 4**: In a normal circumstance, the UAV should eventually complete the inspection.

**Assumption 4.1**:  If the UAV keeps executing the action `execute_mission_task` and its trajectory is not blocked, eventually it will complete the inspection.

**Assumption 4.2**:  If the UAV keeps executing the action `take_off`, eventually it will be flying.

**Assumption 4.3**:  If the UAV keeps executing the action `land`, eventually it will be landed.

**Assumption 4.4**:  If the UAV keeps executing the action `configure_mission`, that is, reading a configuration file, the mission will eventually be configured.

**Assumption 4.5**:  The flying state can only be changed by the UAV executing `take_off` or `land` actions.

**Assumption 4.6**:  Once the start permission has been given, it should never be taken back.

**Assumption 4.7**:  The UAV always knows whether it is currently at a landing zone when the mission has been configured.

**Assumption 4.8**:  Eventually, the UAV always has enough battery.

**Assumption 4.9**:  Eventually, the UAV is always not being blocked.

**Assumption 4.10**:  Eventually, the UAV always have stable communication.

**Assumption 4.11**:  Eventually, the obstacle detection component is always stable.

**Assumption 4.12**:  The human operator must never request the UAV to abort the mission.

**Assumption 4.13**:  Eventually, the human operator will stop requesting to manually control the UAV infinitely.

**Assumption 4.14**:  Eventually, the human operator gives the UAV the permission to start the mission.

**Assumption 4.15**:  Once the misison has been configured, it will keep having the configuration.
