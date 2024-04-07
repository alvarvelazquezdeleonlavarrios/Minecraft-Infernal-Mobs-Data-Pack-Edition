#******************* Gameplay --> Reset Healthbars *******************


#------- If the healthbar #1 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 name ""

#------- If the healthbar #2 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 name ""

#------- If the healthbar #3 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 name ""

#------- If the healthbar #4 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=4}] run bossbar set _healthbar.4 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=4}] run bossbar set _healthbar.4 name ""
