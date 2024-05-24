#******************* Skills --> Lifesteal *******************


#------- When this mob hits a player, automatically increases a little the mob's health -------
# mob.lifesteal_current_health = mob.health;
# mob.lifesteal_current_health = mob.lifesteal_current_health + mob.lifesteal_attack_damage;
# mob.health = mob.lifesteal_current_health;
execute store result score @s _skills.lifesteal.current_health run data get entity @s Health
scoreboard players operation @s _skills.lifesteal.current_health += @s _skills.lifesteal.attack_damage
execute store result entity @s Health float 1 run scoreboard players get @s _skills.lifesteal.current_health
