#******************* Gameplay --> Attack Damage --> Update *******************


#------- Sets the default attack damage value for any infernal mob variant on Easy difficulty. -------
# if (GameManager.game_difficulty == 1):
#   mob.setAttackDamage( easy );
execute if score $GameManager _gameDif.crtVal matches 1 run function infernal_mobs:gameplay/attack_damage/update_by_difficulty/easy

#------- Sets the default attack damage value for any infernal mob variant on Normal difficulty. -------
# if (GameManager.game_difficulty == 2):
#   mob.setAttackDamage( normal );
execute if score $GameManager _gameDif.crtVal matches 2 run function infernal_mobs:gameplay/attack_damage/update_by_difficulty/normal

#------- Sets the default attack damage value for any infernal mob variant on Hard difficulty. -------
# if (GameManager.game_difficulty == 3):
#   mob.setAttackDamage( hard );
execute if score $GameManager _gameDif.crtVal matches 3 run function infernal_mobs:gameplay/attack_damage/update_by_difficulty/hard
