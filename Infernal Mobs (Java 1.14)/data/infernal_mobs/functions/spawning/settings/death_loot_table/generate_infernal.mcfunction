#******************* Spawning --> Settings --> Death Loot Table --> Generate Infernal *******************


#------- Creates an AEC that will work as a detector when this mob dies in the game. -------
# AEC aec_death_detector = new AEC( "infernal_mob_death_detector","infernal" );
# aec_death_detector.AddVariable( is_binded_to_mob , true );
# aec_death_detector.AddVariable( experience_orbs_amount , 13 );
summon area_effect_cloud ~ ~ ~ {Tags:["infernal_mob_death_detector", "infernal"], Duration:9999}
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aecDthD.bndMob 1
execute as @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1] run scoreboard players set @s _aecDthD.xpOrbsA 13
