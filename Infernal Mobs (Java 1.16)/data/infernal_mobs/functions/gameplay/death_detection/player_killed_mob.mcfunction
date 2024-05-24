#******************* Gameplay --> Death Detection --> Player Killed Mob *******************


#------- When the player gets the advancement "Player Killed Mob", gets the AEC Death Detector from the mob that was killed by the player. Then, the AEC checks on its position if the mob is not existing anymore. -------
# if (aec_death_detector.getMob() == null):
#   aec_death_detector.generateLoot( aec_death_detector.variant );
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, scores={_aecDthD.bndMob=1}] at @s unless entity @e[tag=Infernal_Mob, limit=1, sort=nearest, distance=..0.3] run function infernal_mobs:gameplay/death_detection/generate_loot


#------- Removes the advancement to the player, making they able to receive it later when kills another mob -------
# player.advancements.Remove("Player Killed Mob");
advancement revoke @s only infernal_mobs:gameplay/player_killed_mob
