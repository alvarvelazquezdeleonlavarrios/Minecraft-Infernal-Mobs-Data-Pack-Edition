#******************* Spawning --> Settings --> Skills --> Add Choke *******************


#------- Adds a new tag named "choke" for this mob -------
# mob.tags.Add("choke");
tag @s add choke

#------- Adds the variables that this mob will use for calling the choke skill functions -------
# mob.AddVariable( choke_max_time, 500);
# mob.AddVariable( choke_current_time, 0);
# mob.AddVariable( choke_current_drown_time, 30);
scoreboard players set @s _skills.choke.max_time 500
scoreboard players set @s _skills.choke.current_time 0
scoreboard players set @s _skills.choke.current_drown_time 30

#------- Sets a random, value for the current time left for executing the skill -------
# mob.choke_current_time = Random.Range(0,499);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_choke"]}
execute store result score @s _skills.choke.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_choke, limit=1] UUID[0] 1
scoreboard players operation @s _skills.choke.current_time %= @s _skills.choke.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_choke, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
