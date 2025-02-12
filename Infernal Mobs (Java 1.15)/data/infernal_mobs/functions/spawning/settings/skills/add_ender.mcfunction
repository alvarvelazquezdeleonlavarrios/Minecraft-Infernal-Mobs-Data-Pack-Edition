#******************* Spawning --> Settings --> Skills --> Add Ender *******************


#------- Adds a new tag named "ender" for this mob -------
# mob.tags.Add("ender");
tag @s add ender

#------- Adds the variables that this mob will use for calling the ender skill functions -------
# mob.AddVariable( ender_max_time, 150);
# mob.AddVariable( ender_current_time, 0);
scoreboard players set @s _sk.end.mxT 150
scoreboard players set @s _sk.end.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.ender_current_time = Random.Range(0,149);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_ender"]}
execute store result score @s _sk.end.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_ender, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _sk.end.crtT %= @s _sk.end.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_ender, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
