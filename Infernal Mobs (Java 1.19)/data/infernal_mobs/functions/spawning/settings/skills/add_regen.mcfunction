#******************* Spawning --> Settings --> Skills --> Add Regen *******************


#------- Adds a new tag named "regen" for this mob -------
# mob.tags.Add("regen");
tag @s add regen

#------- Adds the variables that this mob will use for calling the regen skill functions -------
# mob.AddVariable( regen_max_time, 50);
# mob.AddVariable( regen_current_time, 0);
# mob.AddVariable( regen_current_health, 0);
scoreboard players set @s _skills.regen.max_time 50
scoreboard players set @s _skills.regen.current_time 0
scoreboard players set @s _skills.regen.current_health 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.regen_current_time = Random.Range(0,49);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_regen"]}
execute store result score @s _skills.regen.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_regen, limit=1] UUID[0] 1
scoreboard players operation @s _skills.regen.current_time %= @s _skills.regen.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_regen, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
