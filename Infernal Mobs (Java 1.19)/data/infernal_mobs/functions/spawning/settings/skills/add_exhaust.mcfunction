#******************* Spawning --> Settings --> Skills --> Add Exhaust *******************


#------- Adds a new tag named "exhaust" for this mob -------
# mob.tags.Add("exhaust");
tag @s add exhaust

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
