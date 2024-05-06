#******************* Gameplay --> Death Detection --> Rebind AEC *******************


#------- Always tries the mob keep its corresponding AEC for death detection, according to its variant. -------
# switch( mob.variant ):
#   case "rare":    mob.getAECDeathDetector("rare").position = mob.position;    break;
#   case "ultra":    mob.getAECDeathDetector("ultra").position = mob.position;    break;
#   case "infernal":    mob.getAECDeathDetector("infernal").position = mob.position;    break;
execute if entity @s[tag=rare] run tp @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=rare, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] ~ ~ ~
execute if entity @s[tag=ultra] run tp @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=ultra, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] ~ ~ ~
execute if entity @s[tag=infernal] run tp @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] ~ ~ ~

# switch( mob.variant ):
#   case "rare":    mob.getAECDeathDetector("rare").is_binded_to_mob = true;    break;
#   case "ultra":    mob.getAECDeathDetector("ultra").is_binded_to_mob = true;    break;
#   case "infernal":    mob.getAECDeathDetector("infernal").is_binded_to_mob = true;    break;
execute if entity @s[tag=rare] run scoreboard players set @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=rare, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] _aec_death_detector.is_binded_to_mob 1
execute if entity @s[tag=ultra] run scoreboard players set @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=ultra, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] _aec_death_detector.is_binded_to_mob 1
execute if entity @s[tag=infernal] run scoreboard players set @e[type=area_effect_cloud, tag=infernal_mob_death_detector, tag=infernal, limit=1, sort=nearest, distance=..1, scores={_aec_death_detector.is_binded_to_mob=0}] _aec_death_detector.is_binded_to_mob 1
