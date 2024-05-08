#******************* Gameplay --> Death Detection --> Generate Loot --> Infernal *******************


#------- Forces to spawn once the death loot after the mob dies (infernal variant). -------
# aec_death_detector.spawnDeathLoot( infernal );
loot spawn ~ ~1 ~ loot infernal_mobs:infernal

#------- Summons the necesary experience orbs after killing the mob. -------
# aec_death_detector.generate_experience_orbs();
function infernal_mobs:gameplay/death_detection/generate_experience_orbs
