#******************* Skills --> Ninja *******************


#------- Plays a sound before this mob is teleported behind the player -------
# playsound( "entity.generic.explode" );
# particle( "explosion" );
playsound entity.generic.explode block @a ~ ~ ~ 1.0 1.0 0.1
particle explosion ~ ~0.5 ~ 3.5 3.5 3.5 1 25 normal @a

#------- Teleports this mob behind the nearest survival player -------
# if (player.gamemode == survival && player.distance <= 40):
#   mob.teleport( player.position, player.rotation );
execute at @p[gamemode=survival, distance=..40] rotated as @p[gamemode=survival, distance=..40] run tp @s ^ ^ ^-1.25

#------- Plays a sound indicating that this mob was finally teleported behind the player -------
# playsound( "entity.generic.explode" );
# particle( "explosion" );
execute at @p[gamemode=survival, distance=..40] run playsound entity.generic.explode block @a ~ ~ ~ 1.0 1.0 0.1
execute at @p[gamemode=survival, distance=..40] run particle explosion ~ ~0.5 ~ 3.5 3.5 3.5 1 25 normal @a

#------- After teleporting this mob, resets the timer to its initial value -------
# mob.ninja_current_time = mob.ninja_max_time;
scoreboard players operation @s _skills.ninja.current_time = @s _skills.ninja.max_time
