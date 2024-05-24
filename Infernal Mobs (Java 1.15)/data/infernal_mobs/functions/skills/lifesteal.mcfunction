#******************* Skills --> Lifesteal *******************


#------- When this mob hits a player, automatically increases a little the mob's health -------
# mob.lifesteal_current_health = mob.health;
# mob.lifesteal_current_health = mob.lifesteal_current_health + mob.lifesteal_attack_damage;
# mob.health = mob.lifesteal_current_health;
execute store result score @s _sk.lfst.crtHlt run data get entity @s Health
scoreboard players operation @s _sk.lfst.crtHlt += @s _sk.lfst.atkDmg
execute store result entity @s Health float 1 run scoreboard players get @s _sk.lfst.crtHlt
