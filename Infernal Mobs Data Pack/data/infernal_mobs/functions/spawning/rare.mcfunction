#******************* Spawning --> Rare *******************


#------- Adds static variables that this mob will use during all the game -------
# mob.AddVariable( healthbar_current_id, 0 );
scoreboard players set @s _healthbar.current_id 0

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

#------- Adds the new tags named "infernalMob" and "rare" for this mob, to identify it during the game -------
# mob.tags.Add("infernalMob");
# mob.tags.Add("rare");
tag @s add infernalMob
tag @s add rare

#------- Sets a random number of skills that this mob will have, in a range between 1 and 4 -------
# mob.tmp_skills_count = Random.Range(0,3) + 1;
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s _tmp.skills_count run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _tmp.skills_count %= $Constants _const.4
scoreboard players operation @s _tmp.skills_count += $Constants _const.1
kill @e[type=area_effect_cloud,tag=random_uuid, limit=1, sort=nearest]

#------- Adds the random skills that this move will be able to use -------
# mob.AddRandomSkills();
function infernal_mobs:spawning/settings/skills/set_random_skills

#------- Removes the temporary variables -------
# deleteVariable( tmp_skills_count );
# deleteVariable( tmp_current_skill );
scoreboard objectives remove _tmp.skills_count
scoreboard objectives remove _tmp.current_skill
