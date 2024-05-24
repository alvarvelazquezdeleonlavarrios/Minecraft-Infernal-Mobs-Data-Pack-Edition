#******************* Spawning --> Settings --> Skills --> Add Sticky *******************


#------- Adds a new tag named "sticky" for this mob -------
# mob.tags.Add("sticky");
tag @s add sticky

#------- Adds the variables that this mob will use for calling the sticky skill functions -------
# mob.AddVariable( sticky_max_time, 180);
# mob.AddVariable( sticky_current_time, 0);
scoreboard players set @s _sk.sticky.mxT 180
scoreboard players set @s _sk.sticky.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.sticky_current_time = Random.Range(0,179);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_sticky"]}
execute store result score @s _sk.sticky.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_sticky, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _sk.sticky.crtT %= @s _sk.sticky.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_sticky, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
