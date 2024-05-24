#******************* Spawning --> Settings --> Skills --> Add Ninja *******************


#------- Adds a new tag named "ninja" for this mob -------
# mob.tags.Add("ninja");
tag @s add ninja

#------- Adds the variables that this mob will use for calling the ninja skill functions -------
# mob.AddVariable( ninja_max_time, 150);
# mob.AddVariable( ninja_current_time, 0);
scoreboard players set @s _sk.ninja.mxT 150
scoreboard players set @s _sk.ninja.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.ninja_current_time = Random.Range(0,149);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_ninja"]}
execute store result score @s _sk.ninja.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_ninja, limit=1] UUID[0] 1
scoreboard players operation @s _sk.ninja.crtT %= @s _sk.ninja.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_ninja, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
