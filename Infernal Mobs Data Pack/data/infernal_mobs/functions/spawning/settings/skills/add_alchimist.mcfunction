#******************* Spawning --> Settings --> Skills --> Add Alchimist *******************


#------- Adds a new tag named "alchimist" for this mob -------
# mob.tags.Add("alchimist");
tag @s add alchimist

#------- Adds the variables that this mob will use for calling the alchimist skill functions -------
# mob.AddVariable( alchimist_max_time, 100);
# mob.AddVariable( alchimist_current_time, 0);
scoreboard players set @s _skills.alchimist.max_time 100
scoreboard players set @s _skills.alchimist.current_time 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.alchimist_current_time = Random.Range(0,199);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s _skills.alchimist.current_time run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _skills.alchimist.current_time %= @s _skills.alchimist.max_time
kill @e[type=area_effect_cloud,tag=random_uuid, limit=1, sort=nearest]

#------- Decrements the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
