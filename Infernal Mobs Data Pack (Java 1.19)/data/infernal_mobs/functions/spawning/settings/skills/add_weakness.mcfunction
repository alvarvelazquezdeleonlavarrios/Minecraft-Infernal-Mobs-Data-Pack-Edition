#******************* Spawning --> Settings --> Skills --> Add Weakness *******************


#------- Adds a new tag named "weakness" for this mob -------
# mob.tags.Add("weakness");
tag @s add weakness

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
