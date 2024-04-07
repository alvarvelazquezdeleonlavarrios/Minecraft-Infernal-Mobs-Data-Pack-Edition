#******************* Gameplay --> Update Mobs Healthbars *******************


#------- If this mob is using the healthbar #1, updates the current value -------
execute if entity @s[scores={_healthbar.current_id=1}] run execute store result bossbar _healthbar.1 value run data get entity @s Health

execute if entity @s[scores={_healthbar.current_id=1}] if entity @a[distance=..8] run bossbar set _healthbar.1 players @a[distance=..8]
execute if entity @s[scores={_healthbar.current_id=1}] unless entity @a[distance=..8] run bossbar set _healthbar.1 players @a[tag=nobody]
