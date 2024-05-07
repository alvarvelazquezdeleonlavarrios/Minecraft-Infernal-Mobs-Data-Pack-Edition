#******************* Gameplay --> Death Detection --> Generate Loot --> Ultra *******************


#------- Forces to spawn once the death loot after the mob dies (ultra variant). -------
# aec_death_detector.spawnDeathLoot( ultra );
loot spawn ~ ~1 ~ loot infernal_mobs:ultra

#------- Summons the necesary experience orbs after killing the mob. -------
# aec_death_detector.generate_experience_orbs();
function infernal_mobs:gameplay/death_detection/generate_experience_orbs
