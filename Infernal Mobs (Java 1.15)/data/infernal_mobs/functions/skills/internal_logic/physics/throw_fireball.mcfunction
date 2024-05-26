#******************* Skills --> Logic --> Physics --> Throw Fireball *******************


#------- Creates temporary variables to calculate the motion vector -------
scoreboard objectives add _tmp.ent.pos.x dummy
scoreboard objectives add _tmp.ent.pos.y dummy
scoreboard objectives add _tmp.ent.pos.z dummy
scoreboard objectives add _tmp.ply.pos.x dummy
scoreboard objectives add _tmp.ply.pos.y dummy
scoreboard objectives add _tmp.ply.pos.z dummy

#------- Adds the temporary variables to this fireball -------
scoreboard players set @s _tmp.ent.pos.x 0
scoreboard players set @s _tmp.ent.pos.y 0
scoreboard players set @s _tmp.ent.pos.z 0
scoreboard players set @s _tmp.ply.pos.x 0
scoreboard players set @s _tmp.ply.pos.y 0
scoreboard players set @s _tmp.ply.pos.z 0

#------- Gets the fireball's position (x1, y1, z1) -------
execute store result score @s _tmp.ent.pos.x run data get entity @s Pos[0] 100
execute store result score @s _tmp.ent.pos.y run data get entity @s Pos[1] 100
execute store result score @s _tmp.ent.pos.z run data get entity @s Pos[2] 100

#------- Gets the nearest player's position (x2, y2, z2) -------
execute store result score @s _tmp.ply.pos.x run data get entity @p[gamemode=survival, distance=3..40] Pos[0] 100
execute store result score @s _tmp.ply.pos.y run data get entity @p[gamemode=survival, distance=3..40] Pos[1] 100
execute store result score @s _tmp.ply.pos.z run data get entity @p[gamemode=survival, distance=3..40] Pos[2] 100

#------- Forces to set the player's vector position at a "higher height". This allows to try throwing it at player's torso -------
scoreboard players add @s _tmp.ply.pos.y 80

#------- Makes the substraction of the two positions: P2 = P2 - P1. Generates the potion's motion vector -------
scoreboard players operation @s _tmp.ply.pos.x -= @s _tmp.ent.pos.x
scoreboard players operation @s _tmp.ply.pos.y -= @s _tmp.ent.pos.y
scoreboard players operation @s _tmp.ply.pos.z -= @s _tmp.ent.pos.z

#------- Sets the motion vector to the fireball -------
execute store result entity @s Motion[0] double 0.0012 run scoreboard players get @s _tmp.ply.pos.x
execute store result entity @s Motion[1] double 0.0012 run scoreboard players get @s _tmp.ply.pos.y
execute store result entity @s Motion[2] double 0.0012 run scoreboard players get @s _tmp.ply.pos.z

#------- Sets the acceleration vector to the fireball -------
execute store result entity @s power[0] double 0.00012 run scoreboard players get @s _tmp.ply.pos.x
execute store result entity @s power[1] double 0.00012 run scoreboard players get @s _tmp.ply.pos.y
execute store result entity @s power[2] double 0.00012 run scoreboard players get @s _tmp.ply.pos.z

#------- Removes the temporary variables -------
scoreboard objectives remove _tmp.ent.pos.x
scoreboard objectives remove _tmp.ent.pos.y
scoreboard objectives remove _tmp.ent.pos.z
scoreboard objectives remove _tmp.ply.pos.x
scoreboard objectives remove _tmp.ply.pos.y
scoreboard objectives remove _tmp.ply.pos.z
