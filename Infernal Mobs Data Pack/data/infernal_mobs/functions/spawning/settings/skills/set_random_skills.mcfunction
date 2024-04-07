#******************* Spawning --> Settings --> Skills --> Set Random Skills *******************


#------- Defines the next skill that this mob will be able to use during the game -------
# mob.tmp_current_skill = Random.Range(0,26);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s _tmp.current_skill run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _tmp.current_skill %= $Constants _const.27
kill @e[type=area_effect_cloud,tag=random_uuid, limit=1, sort=nearest]


#------- If wasn't added previously, adds the "Alchimist" skill to this mob -------
# if (mob.tmp_current_skill == 0 && mob.tmp_skills_count >= 1 && mob.tags.Find("alchimist") == false):
#     mob.skills.Add( new Skill("Alchimist") );
execute if score @s _tmp.current_skill matches 0 if score @s _tmp.skills_count matches 1.. if entity @s[tag=!alchimist] run function infernal_mobs:spawning/settings/skills/add_alchimist





#------- Recursively, adds the left skills to this mob -------
# if (mob.tmp_skills_count >= 1):
#     mob.SetRandomSkills();
execute if score @s _tmp.skills_count matches 1.. run function infernal_mobs:spawning/settings/skills/set_random_skills
