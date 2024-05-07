#******************* Gameplay --> Death Detection --> Generate Experience Orbs *******************


#------- Summons the necesary experience orbs after killing the mob. -------
# if (aec_death_detector.experience_orbs_amount >= 1):
#   aec_death_detector.summonExperienceOrb(2);
execute if score @s _aec_death_detector.experience_orbs_amount matches 1.. run summon experience_orb ~ ~ ~ {Value:10}

#------- Decreases the experience orbs amount. -------
# aec_death_detector.experience_orbs_amount--;
scoreboard players remove @s _aec_death_detector.experience_orbs_amount 1

#------- Recursively summons the missing experience orbs for the mob. -------
# if (aec_death_detector.experience_orbs_amount >= 1):
#   aec_death_detector.generate_experience_orbs();
execute if score @s _aec_death_detector.experience_orbs_amount matches 1.. run function infernal_mobs:gameplay/death_detection/generate_experience_orbs
