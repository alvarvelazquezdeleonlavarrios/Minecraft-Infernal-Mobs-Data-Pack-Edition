#******************* Spawning --> Settings --> Skills --> Add Poisonous *******************


#------- Adds a new tag named "poisonous" for this mob -------
# mob.tags.Add("poisonous");
tag @s add poisonous

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
