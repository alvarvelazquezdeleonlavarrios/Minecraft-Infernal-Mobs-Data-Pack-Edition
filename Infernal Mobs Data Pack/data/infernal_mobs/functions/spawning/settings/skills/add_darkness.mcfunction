#******************* Spawning --> Settings --> Skills --> Add Darkness *******************


#------- Adds a new tag named "darkness" for this mob -------
# mob.tags.Add("darkness");
tag @s add darkness

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
