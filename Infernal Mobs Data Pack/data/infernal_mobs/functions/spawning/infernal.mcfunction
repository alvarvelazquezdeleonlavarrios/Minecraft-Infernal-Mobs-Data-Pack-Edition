#******************* Spawning --> Infernal *******************


#------- Creates some temporary variables for setting this mob -------
# int tmp_skills_count = new int();
# int tmp_current_skill = new int();
scoreboard objectives add _tmp.skills_count dummy
scoreboard objectives add _tmp.current_skill dummy

#------- Adds the temporary variables that this mob will use during its settings -------
# mob.AddVariable( tmp_skills_count, 0 );
# mob.AddVariable( tmp_current_skill, 0 );
scoreboard players set @s _tmp.skills_count 0
scoreboard players set @s _tmp.current_skill 0

#------- Sets this mob as a infernal variant -------
# mob.setInfernal();
function infernal_mobs:spawning/settings/variants/set_infernal

#------- Sets a random number of skills that this mob will have, in a range between 9 and 12 -------
# mob.tmp_skills_count = Random.Range(0,3) + 9;     // Range --> [9,12];
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","spawn_infernal"]}
execute store result score @s _tmp.skills_count run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=spawn_infernal, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.skills_count %= $Constants _const.4
scoreboard players operation @s _tmp.skills_count += $Constants _const.9
kill @e[type=area_effect_cloud, tag=random_uuid, tag=spawn_infernal, limit=1, sort=nearest]

#------- Adds the random skills that this mob will be able to use -------
# mob.AddRandomSkills( mob.tmp_skills_count );
function infernal_mobs:spawning/settings/skills/set_random_skills

#------- After adding the skills, sets the custom name for the mob's healthbar -------
# mob.setName();
function infernal_mobs:spawning/settings/names/set_name

#------- Removes the temporary variables -------
# deleteVariable( tmp_skills_count );
# deleteVariable( tmp_current_skill );
scoreboard objectives remove _tmp.skills_count
scoreboard objectives remove _tmp.current_skill

#------- Creates an AEC that will work as a detector when this mob dies in the game. -------
# AEC aec_death_detector = new AEC( "infernal_mob_death_detector","infernal" );
# aec_death_detector.AddVariable( is_binded_to_mob , true );
# aec_death_detector.AddVariable( experience_orbs_amount , 13 );
summon area_effect_cloud ~ ~ ~ {Tags:["infernal_mob_death_detector", "infernal"], Duration:9999}
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aec_death_detector.is_binded_to_mob 1
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aec_death_detector.experience_orbs_amount 13
