#******************* Spawning --> Settings --> Skills --> Add Rust *******************


#------- Adds a new tag named "rust" for this mob -------
# mob.tags.Add("rust");
tag @s add rust

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
