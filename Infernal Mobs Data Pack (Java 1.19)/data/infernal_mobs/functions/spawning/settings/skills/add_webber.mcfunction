#******************* Spawning --> Settings --> Skills --> Add Webber *******************


#------- Adds a new tag named "webber" for this mob -------
# mob.tags.Add("webber");
tag @s add webber

#------- Adds the variables that this mob will use for calling the webber skill functions -------
# mob.AddVariable( webber_max_time, 200);
# mob.AddVariable( webber_current_time, 0);
scoreboard players set @s _skills.webber.max_time 200
scoreboard players set @s _skills.webber.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.webber_current_time = Random.Range(0,199);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_webber"]}
execute store result score @s _skills.webber.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_webber, limit=1] UUID[0] 1
scoreboard players operation @s _skills.webber.current_time %= @s _skills.webber.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_webber, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
