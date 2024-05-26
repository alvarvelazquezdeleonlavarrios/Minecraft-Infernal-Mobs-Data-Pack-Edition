#******************* Gameplay --> Natural Spawning --> Scanner *******************


#++++++++++++++++++++++++++++++++ Hostile Mobs List (for Java 1.19) ++++++++++++++++++++++++++++++++
#------- In this new second, checks for new default mobs that spawned naturally in the game. Procures check them once. -------
execute as @e[type=#infernal_mobs:hostile_mobs, tag=!Infernal_Mob, tag=!Common_Mob] at @s run function infernal_mobs:gameplay/natural_spawning/set_random_variant
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------- Resets the natural spawner timer count for 1 second (20 ticks). -------
# GameManager.natural_spawning_current_wait = 20;
scoreboard players set $GameManager _natural_spawning.current_wait_time 20
