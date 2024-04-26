#******************* Skills --> 1UP *******************


#------- Gets this mob's current health everytime -------
# mob.1up_current_health = mob.health;
execute store result score @s _skills.1up.current_health run data get entity @s Health 1

#------- If the mob's current health is less than its 20%, restores its entire health -------
# if (mob.health < mob.health * 0.2):
#   mob.health = mob.max_health;
execute if score @s _skills.1up.current_health < @s _skills.1up.health_20percent run execute store result entity @s Health float 1 run scoreboard players get @s _skills.1up.max_health

#------- Sound and particle effects that indicate this mob restored its complete health -------
# if (mob.health < mob.health * 0.2):
#   playsound( "entity.player.levelup" );
#   particle( "composter" );
execute if score @s _skills.1up.current_health < @s _skills.1up.health_20percent run playsound entity.player.levelup block @a ~ ~ ~ 1.0 1.0 0.1
execute if score @s _skills.1up.current_health < @s _skills.1up.health_20percent run particle composter ~ ~0.5 ~ 1.6 1.6 1.6 1 38 normal

#------- Indicates that this mob has already used the 1UP skill -------
# if (mob.health < mob.health * 0.2):
#   mob.1up_already_healed = true;
execute if score @s _skills.1up.current_health < @s _skills.1up.health_20percent run scoreboard players set @s _skills.1up.already_healed 1
