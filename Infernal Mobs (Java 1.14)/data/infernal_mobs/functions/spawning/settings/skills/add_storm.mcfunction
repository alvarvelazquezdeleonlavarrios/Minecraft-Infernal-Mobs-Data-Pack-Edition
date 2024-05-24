#******************* Spawning --> Settings --> Skills --> Add Storm *******************


#------- Adds a new tag named "storm" for this mob -------
# mob.tags.Add("storm");
tag @s add storm

#------- Adds the variables that this mob will use for calling the storm skill functions -------
# mob.AddVariable( storm_max_time, 240);
# mob.AddVariable( storm_current_time, 0);
scoreboard players set @s _sk.storm.mxT 240
scoreboard players set @s _sk.storm.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.storm_current_time = Random.Range(0,239);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_storm"]}
execute store result score @s _sk.storm.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_storm, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _sk.storm.crtT %= @s _sk.storm.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_storm, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
