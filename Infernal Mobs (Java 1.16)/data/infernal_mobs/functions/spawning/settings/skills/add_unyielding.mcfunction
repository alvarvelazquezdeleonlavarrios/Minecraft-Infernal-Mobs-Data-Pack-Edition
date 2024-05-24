#******************* Spawning --> Settings --> Skills --> Add Unyielding *******************

#------- Adds a new tag named "unyielding" for this mob -------
# mob.tags.Add("unyielding");
tag @s add unyielding

#------- Sets this mob practically invulnerable to knockback attacks -------
# mob.knockback_resistance = 1;
data merge entity @s {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1}]}

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
