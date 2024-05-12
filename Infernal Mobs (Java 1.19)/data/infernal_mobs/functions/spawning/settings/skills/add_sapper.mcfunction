#******************* Spawning --> Settings --> Skills --> Add Sapper *******************


#------- Adds a new tag named "sapper" for this mob -------
# mob.tags.Add("sapper");
tag @s add sapper

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
