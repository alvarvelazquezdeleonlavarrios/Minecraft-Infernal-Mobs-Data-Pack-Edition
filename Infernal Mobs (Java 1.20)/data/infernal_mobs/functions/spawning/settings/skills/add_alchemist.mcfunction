#******************* Spawning --> Settings --> Skills --> Add Alchemist *******************


#------- Adds a new tag named "alchemist" for this mob -------
# mob.tags.Add("alchemist");
tag @s add alchemist

#------- Adds the variables that this mob will use for calling the alchemist skill functions -------
# mob.AddVariable( alchemist_max_time, 100);
# mob.AddVariable( alchemist_current_time, 0);
scoreboard players set @s _skills.alchemist.max_time 100
scoreboard players set @s _skills.alchemist.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.alchemist_current_time = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_alchemist"]}
execute store result score @s _skills.alchemist.current_time run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_alchemist, limit=1] UUID[0] 1
scoreboard players operation @s _skills.alchemist.current_time %= @s _skills.alchemist.max_time
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_alchemist, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
