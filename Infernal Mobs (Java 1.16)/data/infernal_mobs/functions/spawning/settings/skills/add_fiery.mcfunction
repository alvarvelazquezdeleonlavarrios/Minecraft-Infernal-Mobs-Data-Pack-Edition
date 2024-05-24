#******************* Spawning --> Settings --> Skills --> Add Fiery *******************


#------- Adds a new tag named "fiery" for this mob -------
# mob.tags.Add("fiery");
tag @s add fiery

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
