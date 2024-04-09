#******************* Gameplay --> Update Mobs Healthbars *******************


#------- If this mob is using the healthbar #1, updates its attributes and visibility for players -------
execute if entity @s[scores={_healthbar.current_id=1}] run execute store result bossbar _healthbar.1 value run data get entity @s Health
execute if entity @s[scores={_healthbar.current_id=1}] run function infernal_mobs:gameplay/update_healthbars_visibility
