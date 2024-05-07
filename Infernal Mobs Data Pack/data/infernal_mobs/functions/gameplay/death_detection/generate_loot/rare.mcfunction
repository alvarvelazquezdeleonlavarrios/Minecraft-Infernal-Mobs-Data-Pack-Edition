#******************* Gameplay --> Death Detection --> Generate Loot --> Rare *******************


#------- Forces to spawn once the death loot after the mob dies (rare variant). -------
# aec_death_detector.spawnDeathLoot( rare );
loot spawn ~ ~1 ~ loot infernal_mobs:rare

#------- Summons the necesary experience orbs after killing the mob. -------
# aec_death_detector.generate_experience_orbs();
function infernal_mobs:gameplay/death_detection/generate_experience_orbs
