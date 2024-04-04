#******************* Main --> Update *******************


#------- If there is at least one infernal mob in the world, runs all its behaviours -------
execute if entity @e[tag=infernalMob] as @e[tag=infernalMob] run function infernal_mobs:mobs/update_skills
