#******************* Spawning --> Rare *******************


#------- Creates some temporary variables for setting this mob -------
# int tmp_skills_count = new int();
# int tmp_current_skill = new int();
scoreboard objectives add _tmp.skCnt dummy
scoreboard objectives add _tmp.crtSk dummy

#------- Adds the temporary variables that this mob will use during its settings -------
# mob.AddVariable( tmp_skills_count, 0 );
# mob.AddVariable( tmp_current_skill, 0 );
scoreboard players set @s _tmp.skCnt 0
scoreboard players set @s _tmp.crtSk 0

#------- Sets this mob as a Rare variant -------
# mob.setRare();
function infernal_mobs:spawning/settings/variants/set_rare

#------- Sets a random number of skills that this mob will have, in a range between 2 and 4 -------
# mob.tmp_skills_count = Random.Range(0,2) + 2;     // Range --> [2,4];
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","spawn_rare"]}
execute store result score @s _tmp.skCnt run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=spawn_rare, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.skCnt %= $Constants _const.3
scoreboard players operation @s _tmp.skCnt += $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=spawn_rare, limit=1, sort=nearest]

#------- Adds the random skills that this mob will be able to use -------
# mob.AddRandomSkills( mob.tmp_skills_count );
function infernal_mobs:spawning/settings/skills/set_random_skills

#------- Removes the temporary variables -------
# deleteVariable( tmp_skills_count );
# deleteVariable( tmp_current_skill );
scoreboard objectives remove _tmp.skCnt
scoreboard objectives remove _tmp.crtSk

#------- After adding the skills, sets the custom name for the mob's healthbar -------
# mob.setName();
function infernal_mobs:spawning/settings/names/set_name

#------- Generates the death loot table for this mob (Rare variant) -------
function infernal_mobs:spawning/settings/death_loot_table/generate_rare
