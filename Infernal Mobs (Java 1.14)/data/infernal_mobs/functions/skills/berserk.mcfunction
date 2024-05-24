#******************* Skills --> Berserk *******************


#------- When this mob hits a player, automatically decreases a little the mob's health -------
# mob.berserk_current_health = mob.health;
# mob.berserk_current_health = mob.berserk_current_health - 2;
# mob.health = mob.berserk_current_health;
execute store result score @s _sk.brsk.crtHlt run data get entity @s Health
scoreboard players operation @s _sk.brsk.crtHlt -= $Constants _const.2
execute store result entity @s Health float 1 run scoreboard players get @s _sk.brsk.crtHlt
