#******************* Spawning --> Settings --> Skills --> Add Ghastly *******************


#------- Adds a new tag named "ghastly" for this mob -------
# mob.tags.Add("ghastly");
tag @s add ghastly

#------- Adds the variables that this mob will use for calling the ghastly skill functions -------
# mob.AddVariable( ghastly_max_time, 140);
# mob.AddVariable( ghastly_current_time, 0);
scoreboard players set @s _skills.ghastly.max_time 140
scoreboard players set @s _skills.ghastly.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.ghastly_current_time = Random.Range(0,139);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_ghastly"]}
execute store result score @s _skills.ghastly.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_ghastly, limit=1] UUID[0] 1
scoreboard players operation @s _skills.ghastly.current_time %= @s _skills.ghastly.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_ghastly, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1