#******************* Spawning --> Settings --> Skills --> Set Random Skills *******************


#------- Defines the next skill that this mob will be able to use during the game -------
# mob.tmp_current_skill = Random.Range(0,26);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_skills"]}
execute store result score @s _tmp.current_skill run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_skills, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.current_skill %= $Constants _const.27
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_skills, limit=1, sort=nearest]


#+++++++++++++++++++++++++++++++++++++++++++ Skills List +++++++++++++++++++++++++++++++++++++++++++++++++
#------- If wasn't added previously, adds the "1UP" skill to this mob -------
# if (mob.tmp_current_skill == 0 && mob.tmp_skills_count >= 1 && mob.tags.Find("1up") == false):
#     mob.skills.Add( new Skill("1UP") );
execute if score @s _tmp.current_skill matches 0 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=1up] run function infernal_mobs:spawning/settings/skills/add_1up

#------- If wasn't added previously, adds the "Alchemist" skill to this mob -------
# if (mob.tmp_current_skill == 1 && mob.tmp_skills_count >= 1 && mob.tags.Find("alchemist") == false):
#     mob.skills.Add( new Skill("Alchemist") );
execute if score @s _tmp.current_skill matches 1 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=alchemist] run function infernal_mobs:spawning/settings/skills/add_alchemist

#------- If wasn't added previously, adds the "Berserk" skill to this mob -------
# if (mob.tmp_current_skill == 2 && mob.tmp_skills_count >= 1 && mob.tags.Find("berserk") == false && mob.type != #berserk_skill_not_compatible):
#     mob.skills.Add( new Skill("Berserk") );
execute if score @s _tmp.current_skill matches 2 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=berserk] unless entity @s[type=#infernal_mobs:berserk_skill_not_compatible] run function infernal_mobs:spawning/settings/skills/add_berserk

#------- If wasn't added previously, adds the "Blastoff" skill to this mob -------
# if (mob.tmp_current_skill == 3 && mob.tmp_skills_count >= 1 && mob.tags.Find("blastoff") == false):
#     mob.skills.Add( new Skill("Blastoff") );
execute if score @s _tmp.current_skill matches 3 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=blastoff] run function infernal_mobs:spawning/settings/skills/add_blastoff

#------- If wasn't added previously, adds the "Bulwark" skill to this mob -------
# if (mob.tmp_current_skill == 4 && mob.tmp_skills_count >= 1 && mob.tags.Find("bulwark") == false):
#     mob.skills.Add( new Skill("Bulwark") );
execute if score @s _tmp.current_skill matches 4 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=bulwark] run function infernal_mobs:spawning/settings/skills/add_bulwark

#------- If wasn't added previously, adds the "Cloacking" skill to this mob -------
# if (mob.tmp_current_skill == 5 && mob.tmp_skills_count >= 1 && mob.tags.Find("cloacking") == false):
#     mob.skills.Add( new Skill("Cloacking") );
execute if score @s _tmp.current_skill matches 5 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=cloacking] run function infernal_mobs:spawning/settings/skills/add_cloacking

#------- If wasn't added previously, adds the "Darkness" skill to this mob -------
# if (mob.tmp_current_skill == 6 && mob.tmp_skills_count >= 1 && mob.tags.Find("darkness") == false):
#     mob.skills.Add( new Skill("Darkness") );
execute if score @s _tmp.current_skill matches 6 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=darkness] run function infernal_mobs:spawning/settings/skills/add_darkness

#------- If wasn't added previously, adds the "Ender" skill to this mob -------
# if (mob.tmp_current_skill == 7 && mob.tmp_skills_count >= 1 && mob.tags.Find("ender") == false):
#     mob.skills.Add( new Skill("Ender") );
execute if score @s _tmp.current_skill matches 7 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=ender] run function infernal_mobs:spawning/settings/skills/add_ender

#------- If wasn't added previously, adds the "Exhaust" skill to this mob -------
# if (mob.tmp_current_skill == 8 && mob.tmp_skills_count >= 1 && mob.tags.Find("exhaust") == false):
#     mob.skills.Add( new Skill("Exhaust") );
execute if score @s _tmp.current_skill matches 8 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=exhaust] run function infernal_mobs:spawning/settings/skills/add_exhaust

#------- If wasn't added previously, adds the "Fiery" skill to this mob -------
# if (mob.tmp_current_skill == 9 && mob.tmp_skills_count >= 1 && mob.tags.Find("fiery") == false):
#     mob.skills.Add( new Skill("Fiery") );
execute if score @s _tmp.current_skill matches 9 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=fiery] run function infernal_mobs:spawning/settings/skills/add_fiery

#------- If wasn't added previously, adds the "Ghastly" skill to this mob -------
# if (mob.tmp_current_skill == 10 && mob.tmp_skills_count >= 1 && mob.tags.Find("ghastly") == false):
#     mob.skills.Add( new Skill("Ghastly") );
execute if score @s _tmp.current_skill matches 10 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=ghastly] run function infernal_mobs:spawning/settings/skills/add_ghastly

#------- If wasn't added previously, adds the "Gravity" skill to this mob -------
# if (mob.tmp_current_skill == 11 && mob.tmp_skills_count >= 1 && mob.tags.Find("gravity") == false):
#     mob.skills.Add( new Skill("Gravity") );
execute if score @s _tmp.current_skill matches 11 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=gravity] run function infernal_mobs:spawning/settings/skills/add_gravity

#------- If wasn't added previously, adds the "Lifesteal" skill to this mob -------
# if (mob.tmp_current_skill == 12 && mob.tmp_skills_count >= 1 && mob.tags.Find("lifesteal") == false):
#     mob.skills.Add( new Skill("Lifesteal") );
execute if score @s _tmp.current_skill matches 12 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=lifesteal] run function infernal_mobs:spawning/settings/skills/add_lifesteal

#------- If wasn't added previously, adds the "Ninja" skill to this mob -------
# if (mob.tmp_current_skill == 13 && mob.tmp_skills_count >= 1 && mob.tags.Find("ninja") == false):
#     mob.skills.Add( new Skill("Ninja") );
execute if score @s _tmp.current_skill matches 13 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=ninja] run function infernal_mobs:spawning/settings/skills/add_ninja

#------- If wasn't added previously, adds the "Poisonous" skill to this mob -------
# if (mob.tmp_current_skill == 14 && mob.tmp_skills_count >= 1 && mob.tags.Find("poisonous") == false):
#     mob.skills.Add( new Skill("Poisonous") );
execute if score @s _tmp.current_skill matches 14 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=poisonous] run function infernal_mobs:spawning/settings/skills/add_poisonous

#------- If wasn't added previously, adds the "Quicksand" skill to this mob -------
# if (mob.tmp_current_skill == 15 && mob.tmp_skills_count >= 1 && mob.tags.Find("quicksand") == false):
#     mob.skills.Add( new Skill("Quicksand") );
execute if score @s _tmp.current_skill matches 15 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=quicksand] run function infernal_mobs:spawning/settings/skills/add_quicksand

#------- If wasn't added previously, adds the "Regen" skill to this mob -------
# if (mob.tmp_current_skill == 16 && mob.tmp_skills_count >= 1 && mob.tags.Find("regen") == false):
#     mob.skills.Add( new Skill("Regen") );
execute if score @s _tmp.current_skill matches 16 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=regen] run function infernal_mobs:spawning/settings/skills/add_regen

#------- If wasn't added previously, adds the "Rust" skill to this mob -------
# if (mob.tmp_current_skill == 17 && mob.tmp_skills_count >= 1 && mob.tags.Find("rust") == false):
#     mob.skills.Add( new Skill("Rust") );
execute if score @s _tmp.current_skill matches 17 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=rust] run function infernal_mobs:spawning/settings/skills/add_rust

#------- If wasn't added previously, adds the "Sapper" skill to this mob -------
# if (mob.tmp_current_skill == 18 && mob.tmp_skills_count >= 1 && mob.tags.Find("sapper") == false):
#     mob.skills.Add( new Skill("Sapper") );
execute if score @s _tmp.current_skill matches 18 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=sapper] run function infernal_mobs:spawning/settings/skills/add_sapper

#------- If wasn't added previously, adds the "Sprint" skill to this mob -------
# if (mob.tmp_current_skill == 19 && mob.tmp_skills_count >= 1 && mob.tags.Find("sprint") == false):
#     mob.skills.Add( new Skill("Sprint") );
execute if score @s _tmp.current_skill matches 19 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=sprint] run function infernal_mobs:spawning/settings/skills/add_sprint

#------- If wasn't added previously, adds the "Sticky" skill to this mob -------
# if (mob.tmp_current_skill == 20 && mob.tmp_skills_count >= 1 && mob.tags.Find("sticky") == false):
#     mob.skills.Add( new Skill("Sticky") );
execute if score @s _tmp.current_skill matches 20 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=sticky] run function infernal_mobs:spawning/settings/skills/add_sticky

#------- If wasn't added previously, adds the "Storm" skill to this mob -------
# if (mob.tmp_current_skill == 21 && mob.tmp_skills_count >= 1 && mob.tags.Find("storm") == false):
#     mob.skills.Add( new Skill("Storm") );
execute if score @s _tmp.current_skill matches 21 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=storm] run function infernal_mobs:spawning/settings/skills/add_storm

#------- If wasn't added previously, adds the "Unyielding" skill to this mob -------
# if (mob.tmp_current_skill == 22 && mob.tmp_skills_count >= 1 && mob.tags.Find("unyielding") == false):
#     mob.skills.Add( new Skill("Unyielding") );
execute if score @s _tmp.current_skill matches 22 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=unyielding] run function infernal_mobs:spawning/settings/skills/add_unyielding

#------- If wasn't added previously, adds the "Vengeance" skill to this mob -------
# if (mob.tmp_current_skill == 23 && mob.tmp_skills_count >= 1 && mob.tags.Find("vengeance") == false):
#     mob.skills.Add( new Skill("Vengeance") );
execute if score @s _tmp.current_skill matches 23 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=vengeance] run function infernal_mobs:spawning/settings/skills/add_vengeance

#------- If wasn't added previously, adds the "Weakness" skill to this mob -------
# if (mob.tmp_current_skill == 24 && mob.tmp_skills_count >= 1 && mob.tags.Find("weakness") == false):
#     mob.skills.Add( new Skill("Weakness") );
execute if score @s _tmp.current_skill matches 24 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=weakness] run function infernal_mobs:spawning/settings/skills/add_weakness

#------- If wasn't added previously, adds the "Webber" skill to this mob -------
# if (mob.tmp_current_skill == 25 && mob.tmp_skills_count >= 1 && mob.tags.Find("webber") == false):
#     mob.skills.Add( new Skill("Webber") );
execute if score @s _tmp.current_skill matches 25 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=webber] run function infernal_mobs:spawning/settings/skills/add_webber

#------- If wasn't added previously, adds the "Wither" skill to this mob -------
# if (mob.tmp_current_skill == 26 && mob.tmp_skills_count >= 1 && mob.tags.Find("wither") == false):
#     mob.skills.Add( new Skill("Wither") );
execute if score @s _tmp.current_skill matches 26 if score @s _tmp.skills_count matches 1.. unless entity @s[tag=wither] run function infernal_mobs:spawning/settings/skills/add_wither
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Recursively, adds the left skills for this mob -------
# if (mob.tmp_skills_count >= 1):
#     mob.SetRandomSkills();
execute if score @s _tmp.skills_count matches 1.. run function infernal_mobs:spawning/settings/skills/set_random_skills
