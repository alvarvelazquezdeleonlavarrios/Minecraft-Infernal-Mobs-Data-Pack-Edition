#******************* Spawning --> Settings --> Death Loot Table --> Generate Ultra *******************


#------- Creates an AEC that will work as a detector when this mob dies in the game. -------
# AEC aec_death_detector = new AEC( "infernal_mob_death_detector","ultra" );
# aec_death_detector.AddVariable( is_binded_to_mob , true );
# aec_death_detector.AddVariable( experience_orbs_amount , 9 );
summon area_effect_cloud ~ ~ ~ {Tags:["infernal_mob_death_detector", "ultra"], Duration:9999}
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=ultra, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aec_death_detector.is_binded_to_mob 1
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=ultra, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aec_death_detector.experience_orbs_amount 9
