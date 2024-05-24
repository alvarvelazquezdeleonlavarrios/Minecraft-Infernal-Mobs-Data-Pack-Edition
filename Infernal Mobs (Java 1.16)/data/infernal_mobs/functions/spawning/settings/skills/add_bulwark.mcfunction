#******************* Spawning --> Settings --> Skills --> Add Bulwark *******************

#------- Adds a new tag named "bulwark" for this mob -------
# mob.tags.Add("bulwark");
tag @s add bulwark

#------- Duplicates the mob's "defense", setting its armor level to the 50% -------
# mob.armor = 15;
data merge entity @s {Attributes:[{Name:"minecraft:generic.armor",Base:15}]}

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
