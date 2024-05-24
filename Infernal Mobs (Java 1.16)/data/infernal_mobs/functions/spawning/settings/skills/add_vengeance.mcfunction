#******************* Spawning --> Settings --> Skills --> Add Vengeance *******************


#------- Adds a new tag named "vengeance" for this mob -------
# mob.tags.Add("vengeance");
tag @s add vengeance

#------- Adds the variables that this mob will use for calling the vengeance skill functions -------
# mob.AddVariable( vengeance_max_time, 90);
# mob.AddVariable( vengeance_current_time, 0);
scoreboard players set @s _sk.vngc.mxT 90
scoreboard players set @s _sk.vngc.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.vengeance_current_time = Random.Range(0,89);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_vengeance"]}
execute store result score @s _sk.vngc.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_vengeance, limit=1] UUID[0] 1
scoreboard players operation @s _sk.vngc.crtT %= @s _sk.vngc.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_vengeance, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
