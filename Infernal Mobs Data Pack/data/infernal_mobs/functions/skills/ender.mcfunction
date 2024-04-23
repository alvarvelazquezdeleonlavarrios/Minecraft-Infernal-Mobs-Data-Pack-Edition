#******************* Skills --> Ender *******************


#------- Plays a sound before this mob is teleported behind the player -------
# playsound( "entity.enderman.teleport" );
playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0.1

#------- Teleports this mob behind the nearest survival player -------
# if (player.gamemode == survival && player.distance <= 40):
#   mob.teleport( player.position, player.rotation );
execute at @p[gamemode=survival, distance=..40] rotated as @p[gamemode=survival, distance=..40] run tp @s ^ ^ ^-1.25

#------- Deals a minimum damage to the survival player when mob teleports -------
# if (player.gamemode == survival && player.distance <= 40):
#   player.health--;
effect give @p[gamemode=survival, distance=..40] instant_damage 1 0 false

#------- Plays a sound indicating that this mob was finally teleported behind the player -------
# playsound( "entity.enderman.teleport" );
playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0.1

#------- After teleporting this mob, resets the timer to its initial value -------
# mob.ender_current_time = mob.ender_max_time;
scoreboard players operation @s _skills.ender.current_time = @s _skills.ender.max_time
