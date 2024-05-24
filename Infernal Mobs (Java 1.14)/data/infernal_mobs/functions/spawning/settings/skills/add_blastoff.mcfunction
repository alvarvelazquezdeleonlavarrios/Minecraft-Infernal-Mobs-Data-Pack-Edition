#******************* Spawning --> Settings --> Skills --> Add Blastoff *******************


#------- Adds a new tag named "blastoff" for this mob -------
# mob.tags.Add("blastoff");
tag @s add blastoff

#------- Adds the variables that this mob will use for calling the blastoff skill functions -------
# mob.AddVariable( blastoff_max_time, 100);
# mob.AddVariable( blastoff_current_time, 0);
scoreboard players set @s _sk.blst.mxT 100
scoreboard players set @s _sk.blst.crtT 0

#------- Sets a random, value for the current time left for executing the skill -------
# mob.blastoff_current_time = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","add_blastoff"]}
execute store result score @s _sk.blst.crtT run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=add_blastoff, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _sk.blst.crtT %= @s _sk.blst.mxT
kill @e[type=area_effect_cloud, tag=random_uuid, tag=add_blastoff, limit=1, sort=nearest]

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
