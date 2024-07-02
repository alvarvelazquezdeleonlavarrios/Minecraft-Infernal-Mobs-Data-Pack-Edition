#******************* Spawning --> Settings --> Skills --> Add Quicksand *******************


#------- Adds a new tag named "quicksand" for this mob -------
# mob.tags.Add("quicksand");
tag @s add quicksand

#------- Adds the variables that this mob will use for calling the quicksand skill functions -------
# mob.AddVariable( quicksand_max_time, 1000);
# mob.AddVariable( quicksand_current_time, 0);
scoreboard players set @s _skills.quicksand.max_time 1000
scoreboard players set @s _skills.quicksand.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.quicksand_current_time = Random.Range(0,999);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_quicksand"]}
execute store result score @s _skills.quicksand.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_quicksand, limit=1] UUID[0] 1
scoreboard players operation @s _skills.quicksand.current_time %= @s _skills.quicksand.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_quicksand, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
