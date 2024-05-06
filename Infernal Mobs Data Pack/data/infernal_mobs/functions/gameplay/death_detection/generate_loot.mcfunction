#******************* Gameplay --> Death Detection --> Generate Loot *******************


#------- Defines the items and xp orbs that will spawn after the player kills the mob, according to its variant. -------
# switch ( aec_death_detector.variant ):
#   case "rare":    aec_death_detector.spawnRareLoot();     break;
#   case "ultra":    aec_death_detector.spawnUltraLoot();   break;
#   case "infernal":    aec_death_detector.spawnInfernalLoot();     break;
execute if entity @s[tag=rare] run function infernal_mobs:gameplay/death_detection/generate_loot/rare
execute if entity @s[tag=ultra] run function infernal_mobs:gameplay/death_detection/generate_loot/ultra
execute if entity @s[tag=infernal] run function infernal_mobs:gameplay/death_detection/generate_loot/infernal
