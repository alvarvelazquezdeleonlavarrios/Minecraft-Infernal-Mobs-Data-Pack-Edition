#******************* Gameplay --> Natural Spawning --> Scanner *******************


#++++++++++++++++++++++++++++++++ Hostile Mobs List ++++++++++++++++++++++++++++++++
#------- In the new second, checks for new default mobs that spawned naturally in the game. Avoids to check they more than once. -------
execute as @e[type=zombie, tag=!Infernal_Mob, tag=!Common_Mob] at @s run function infernal_mobs:gameplay/natural_spawning/set_random_variant
execute as @e[type=spider, tag=!Infernal_Mob, tag=!Common_Mob] at @s run function infernal_mobs:gameplay/natural_spawning/set_random_variant



#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------- Resets the natural spawner timer count for 1 second (20 ticks). -------
scoreboard players set $GameManager _natural_spawning.current_wait_time 20
