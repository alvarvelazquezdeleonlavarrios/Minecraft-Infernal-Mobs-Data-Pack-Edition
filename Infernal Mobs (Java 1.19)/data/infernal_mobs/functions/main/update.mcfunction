#******************* Main --> Update *******************


#+++++++++++++++++++++++++++++++++++ Mobs's Death Detection System ++++++++++++++++++++++++++++++++++
#------- Makes the AECs stay every moment in the game so that they never disapear naturally. Also indicates them they're not anymore linked to a mob. -------
# aec_death_detector.duration = 9999;
# aec_death_detector.is_binded_to_mob = false;
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] run data merge entity @s {Duration:9999}
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] run scoreboard players set @s _aec_death_detector.is_binded_to_mob 0

#------- For every infernal mob, always tries to keep their corresponding AEC for death detection, re-linking they to the mob. -------
# mob.rebindAEC( mob.getAECDeathDetector() );
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] at @s run function infernal_mobs:gameplay/death_detection/rebind_aec

#------- For those AEC that are no longer linked to its mob (they died), automatically disapear. -------
# if (aec_death_detector.is_binded_to_mob == false):
#   Kill(aec_death_detector);
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] if entity @s[scores={_aec_death_detector.is_binded_to_mob=0}] run kill @s
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ Mobs' Natural Spawning System ++++++++++++++++++++++++++++++++++
#------- The natural spawning system checks every second for possible candidates for being an infernal mob variant. Decreases the timer. -------
# if (GameManager.natural_spawning_current_wait <= 0):
#   naturalSpawningScan();
# GameManager.natural_spawning_current_wait--;
execute if score $GameManager _natural_spawning.current_wait_time matches ..0 run function infernal_mobs:gameplay/natural_spawning/scanner
scoreboard players remove $GameManager _natural_spawning.current_wait_time 1
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ Mobs' Attributes and Behaviours System ++++++++++++++++++++++++++++++++++
#------- Gets the current game difficulty. Resets the attack damage value for each single infernal mob based on it. -------
# GameManager.current_game_difficulty = getDifficulty();
# mob.updateAttackDamage( GameManager.current_game_difficulty );
execute store result score $GameManager _game_difficulty.current_value run difficulty
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] run function infernal_mobs:gameplay/attack_damage/update

#------- If there is at least one infernal mob in the world, runs all its behaviours -------
# mob.updateSkills();
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] run function infernal_mobs:gameplay/skills/update

#------- If there is at least one infernal mob in the world, updates its healthbar -------
# mob.updateHealthbar();
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] at @s run function infernal_mobs:gameplay/healthbars/update

#------- If there is at least one infernal mob in the world, updates its particles depending on its variant -------
# mob.updateParticles( mob.variant );
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=rare] at @s run function infernal_mobs:gameplay/particles/rare
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=ultra] at @s run function infernal_mobs:gameplay/particles/ultra
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob, tag=infernal] at @s run function infernal_mobs:gameplay/particles/infernal

#------- Checks all the time when a mob dies to remove its current healthbar from the players that could display it on screen -------
# Healthbars.reset();
function infernal_mobs:gameplay/healthbars/reset
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
