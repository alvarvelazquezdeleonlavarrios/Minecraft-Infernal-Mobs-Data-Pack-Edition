#******************* Skills --> Regen *******************


#------- If the mob isn't on fire, automatically increases the mob's health -------
# if (mob.onFire == false):
#   mob.regen_current_health = mob.health;
#   mob.regen_current_health = mob.regen_current_health + 2;
#   mob.health = mob.regen_current_health;
execute if entity @s[nbt={Fire:-1s}] run execute store result score @s _skills.regen.current_health run data get entity @s Health
execute if entity @s[nbt={Fire:-1s}] run scoreboard players operation @s _skills.regen.current_health += $Constants _const.2
execute if entity @s[nbt={Fire:-1s}] run execute store result entity @s Health float 1 run scoreboard players get @s _skills.regen.current_health
