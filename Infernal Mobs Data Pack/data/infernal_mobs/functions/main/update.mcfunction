#******************* Main --> Update *******************


#------- The natural spawning system checks every second for possible candidates for being an infernal mob variant. Decreases the timer. -------
# if (GameManager.natural_spawning_current_wait <= 0):
#   naturalSpawningScan();
# GameManager.natural_spawning_current_wait--;
execute if score $GameManager _natural_spawning.current_wait_time matches ..0 run function infernal_mobs:gameplay/natural_spawning/scanner
scoreboard players remove $GameManager _natural_spawning.current_wait_time 1

#------- Gets the current game difficulty. Resets the attack damage value for each single infernal mob based on it. -------
# GameManager.game_difficulty = getDifficulty();
execute store result score $GameManager _game_difficulty.current_value run difficulty
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] run function infernal_mobs:gameplay/attack_damage/update

#------- If there is at least one infernal mob in the world, runs all its behaviours -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] run function infernal_mobs:gameplay/skills/update

#------- If there is at least one infernal mob in the world, updates its healthbar -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] at @s run function infernal_mobs:gameplay/healthbars/update

#------- If there is at least one infernal mob in the world, updates its particles depending on its variant -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=rare] at @s run function infernal_mobs:gameplay/particles/rare
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=ultra] at @s run function infernal_mobs:gameplay/particles/ultra
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=infernal] at @s run function infernal_mobs:gameplay/particles/infernal

#------- Checks all the time when a mob dies to remove its current healthbar from the players that could display it on screen -------
function infernal_mobs:gameplay/healthbars/reset
