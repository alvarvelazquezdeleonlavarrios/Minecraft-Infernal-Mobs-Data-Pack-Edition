#******************* Main --> Update *******************


#------- If there is at least one infernal mob in the world, runs all its behaviours -------
execute if entity @e[tag=infernalMob] as @e[tag=infernalMob] run function infernal_mobs:gameplay/update_mobs_skills

#------- If there is at least one infernal mob in the world, updates its healthbar -------
execute if entity @e[tag=infernalMob] as @e[tag=infernalMob] at @s run function infernal_mobs:gameplay/update_mobs_healthbars

#------- Checks all the time when a mob dies to remove its current healthbar from the players that could display it on screen -------
function infernal_mobs:gameplay/reset_healthbars
