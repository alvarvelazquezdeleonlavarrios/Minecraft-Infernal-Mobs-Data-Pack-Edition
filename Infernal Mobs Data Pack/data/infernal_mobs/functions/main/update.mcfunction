#******************* Main --> Update *******************


#------- If there is at least one infernal mob in the world, runs all its behaviours -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] run function infernal_mobs:gameplay/update_mobs_skills

#------- If there is at least one infernal mob in the world, updates its healthbar -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] at @s run function infernal_mobs:gameplay/update_mobs_healthbars

#------- If there is at least one infernal mob in the world, updates its particles depending on its variant -------
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=rare] at @s run function infernal_mobs:gameplay/update_mobs_particles/rare
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=ultra] at @s run function infernal_mobs:gameplay/update_mobs_particles/ultra
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=infernal] at @s run function infernal_mobs:gameplay/update_mobs_particles/infernal

#------- Checks all the time when a mob dies to remove its current healthbar from the players that could display it on screen -------
function infernal_mobs:gameplay/reset_healthbars
