#******************* Main --> Update *******************


#------- If there is at least one infernal mob in the world, runs all its behaviours -------
execute if entity @e[tag=infernalMob] as @e[tag=infernalMob] run function infernal_mobs:mobs/update_skills


execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 players $Healthbars
execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 name ""
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 players $Healthbars
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 name ""
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 players $Healthbars
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 name ""
execute unless entity @e[scores={_healthbar.current_id=4}] run bossbar set _healthbar.4 players $Healthbars
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.4 name ""
