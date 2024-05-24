#******************* Spawning --> Settings --> Skills --> Add Gravity *******************


#------- Adds a new tag named "gravity" for this mob -------
# mob.tags.Add("gravity");
tag @s add gravity

#------- Adds the variables that this mob will use for calling the gravity skill functions -------
# mob.AddVariable( gravity_max_time, 100);
# mob.AddVariable( gravity_current_time, 0);
scoreboard players set @s _sk.grvt.mxT 100
scoreboard players set @s _sk.grvt.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.gravity_current_time = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_gravity"]}
execute store result score @s _sk.grvt.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_gravity, limit=1] UUID[0] 1
scoreboard players operation @s _sk.grvt.crtT %= @s _sk.grvt.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_gravity, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
