#******************* Spawning --> Settings --> Skills --> Add Ender *******************


#------- Adds a new tag named "ender" for this mob -------
# mob.tags.Add("ender");
tag @s add ender

#------- Adds the variables that this mob will use for calling the ender skill functions -------
# mob.AddVariable( ender_max_time, 150);
# mob.AddVariable( ender_current_time, 0);
scoreboard players set @s _skills.ender.max_time 150
scoreboard players set @s _skills.ender.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.ender_current_time = Random.Range(0,149);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_ender"]}
execute store result score @s _skills.ender.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_ender, limit=1] UUID[0] 1
scoreboard players operation @s _skills.ender.current_time %= @s _skills.ender.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_ender, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
