#******************* Spawning --> Elite *******************


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

#------- Adds the new tags named "infernalMob" and "elite" for this mob, to identify it during the game -------
# mob.tags.Add("infernal_mob");
# mob.tags.Add("elite");
tag @s add infernalMob
tag @s add elite

#------- Sets a random number of skills that this mob will have, in a range between 1 and 4 -------
# mob.tmp_skills_count = Random.Range(0,3) + 1;
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s _tmp.skills_count run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _tmp.skills_count %= $Constants _const.4
scoreboard players operation @s _tmp.skills_count += $Constants _const.1
kill @e[type=area_effect_cloud,tag=random_uuid, limit=1, sort=nearest]


# mob.initializeBossBar(); --> Crear sign en la posición del mob


#------- Adds the random skills that this move will be able to use -------
# mob.AddRandomSkills();
function infernal_mobs:spawning/settings/add_random_skills

#------- Creates a custom bossbar for this kind of mob -------
# mob.AddBossBar();


#------- Removes the temporary variables -------
# deleteVariable( tmp_skills_count );
# deleteVariable( tmp_current_skill );
scoreboard objectives remove _tmp.skills_count
scoreboard objectives remove _tmp.current_skill
