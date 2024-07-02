#******************* Spawning --> Settings --> Skills --> Add Wither *******************


#------- Adds a new tag named "wither" for this mob -------
# mob.tags.Add("wither");
tag @s add wither

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
