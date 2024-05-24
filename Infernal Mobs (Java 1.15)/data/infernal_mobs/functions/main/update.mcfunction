#******************* Main --> Update *******************


#+++++++++++++++++++++++++++++++++++ The Nether Infernal Mobs Management ++++++++++++++++++++++++++++++++++
#------- Counts the total number of players in The Nether dimension for the current moment. -------
# GameManager.number_of_players_in_the_nether = 0;
# GameManager.number_of_players_in_the_nether = Players.Count("The Nether");
scoreboard players set $GameManager _numPly.crt.neth 0
execute store result score $GameManager _numPly.crt.neth if entity @a[predicate=infernal_mobs:in_the_nether]

#------- If the player was killed and is the first player entering the Nether, kills the infernal mobs that could be generated previously -------
# if (GameManager.previous_number_of_players_in_the_nether == 0 && GameManager.number_of_players_in_the_nether == 1):
#   GameManager.killUnlinkedMobsNether( 1.5f );
execute if score $GameManager _numPly.prv.neth matches 0 if score $GameManager _numPly.crt.neth matches 1 run schedule function infernal_mobs:gameplay/healthbars/kill_unlinked_mobs/nether 30 replace

#------- Counts the total number of players in The Nether dimension for the last moment. -------
# GameManager.previous_number_of_players_in_the_nether = 0;
# GameManager.previous_number_of_players_in_the_nether = Players.Count("The Nether");
scoreboard players set $GameManager _numPly.prv.neth 0
execute store result score $GameManager _numPly.prv.neth if entity @a[predicate=infernal_mobs:in_the_nether]
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ The End Infernal Mobs Management ++++++++++++++++++++++++++++++++++
#------- Counts the total number of players in The End dimension. -------
# GameManager.number_of_players_in_the_end = 0;
# GameManager.number_of_players_in_the_end = Players.Count("The End");
scoreboard players set $GameManager _numPly.crt.end 0
execute store result score $GameManager _numPly.crt.end if entity @a[predicate=infernal_mobs:in_the_end]

#------- If the player was killed and is the first player entering the End, kills the infernal mobs that could be generated previously -------
# if (GameManager.previous_number_of_players_in_the_end == 0 && GameManager.number_of_players_in_the_end == 1):
#   GameManager.killUnlinkedMobsEnd( 1.5f );
execute if score $GameManager _numPly.prv.end matches 0 if score $GameManager _numPly.crt.end matches 1 run schedule function infernal_mobs:gameplay/healthbars/kill_unlinked_mobs/end 30 replace

#------- Counts the total number of players in The End dimension for the last moment. -------
# GameManager.previous_number_of_players_in_the_end = 0;
# GameManager.previous_number_of_players_in_the_end = Players.Count("The End");
scoreboard players set $GameManager _numPly.prv.end 0
execute store result score $GameManager _numPly.prv.end if entity @a[predicate=infernal_mobs:in_the_end]
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ Mobs's Death Detection System ++++++++++++++++++++++++++++++++++
#------- Makes the AECs stay every moment in the game so that they never disapear naturally. Also indicates them they're not anymore linked to a mob. -------
# aec_death_detector.duration = 9999;
# aec_death_detector.is_binded_to_mob = false;
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] run data merge entity @s {Duration:9999}
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] run scoreboard players set @s _aecDthD.bndMob 0

#------- For every infernal mob, always tries to keep their corresponding AEC for death detection, re-linking they to the mob. -------
# mob.rebindAEC( mob.getAECDeathDetector() );
execute if entity @e[tag=Infernal_Mob] as @e[tag=Infernal_Mob] at @s run function infernal_mobs:gameplay/death_detection/rebind_aec

#------- For those AEC that are no longer linked to its mob (they died), automatically disapear. -------
# if (aec_death_detector.is_binded_to_mob == false):
#   Kill(aec_death_detector);
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector] if entity @s[scores={_aecDthD.bndMob=0}] run kill @s
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ Mobs' Natural Spawning System ++++++++++++++++++++++++++++++++++
#------- The natural spawning system checks every second for possible candidates for being an infernal mob variant. Decreases the timer. -------
# if (GameManager.natural_spawning_current_wait <= 0):
#   naturalSpawningScan();
# GameManager.natural_spawning_current_wait--;
execute if score $GameManager _ntrlSpwn.crtWT matches ..0 run function infernal_mobs:gameplay/natural_spawning/scanner
scoreboard players remove $GameManager _ntrlSpwn.crtWT 1
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#+++++++++++++++++++++++++++++++++++ Mobs' Attributes and Behaviours System ++++++++++++++++++++++++++++++++++
#------- Gets the current game difficulty. Resets the attack damage value for each single infernal mob based on it. -------
# GameManager.current_game_difficulty = getDifficulty();
# mob.updateAttackDamage( GameManager.current_game_difficulty );
execute store result score $GameManager _gameDif.crtVal run difficulty
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
