#******************* Skills --> Logic --> Physics --> Throw Potion *******************


#------- Creates temporary variables to calculate the motion vector -------
scoreboard objectives add _tmp.ent.pos.x dummy
scoreboard objectives add _tmp.ent.pos.y dummy
scoreboard objectives add _tmp.ent.pos.z dummy
scoreboard objectives add _tmp.ply.pos.x dummy
scoreboard objectives add _tmp.ply.pos.y dummy
scoreboard objectives add _tmp.ply.pos.z dummy
scoreboard objectives add _tmp.force.y dummy

#------- Adds the temporary variables to this potion -------
scoreboard players set @s _tmp.ent.pos.x 0
scoreboard players set @s _tmp.ent.pos.y 0
scoreboard players set @s _tmp.ent.pos.z 0
scoreboard players set @s _tmp.ply.pos.x 0
scoreboard players set @s _tmp.ply.pos.y 0
scoreboard players set @s _tmp.ply.pos.z 0
scoreboard players set @s _tmp.force.y 7500000

#------- Gets the potion's position (x1, y1, z1) -------
execute store result score @s _tmp.ent.pos.x run data get entity @s Pos[0] 1000000
execute store result score @s _tmp.ent.pos.y run data get entity @s Pos[1] 1000000
execute store result score @s _tmp.ent.pos.z run data get entity @s Pos[2] 1000000

#------- Forces to set the potion's vector position at a "lower height". This allows to try throwing it at player's head -------
scoreboard players remove @s _tmp.ent.pos.y 600000

#------- Gets the nearest player's position (x2, y2, z2) -------
execute store result score @s _tmp.ply.pos.x run data get entity @p[gamemode=survival, distance=..40] Pos[0] 1000000
execute store result score @s _tmp.ply.pos.y run data get entity @p[gamemode=survival, distance=..40] Pos[1] 1000000
execute store result score @s _tmp.ply.pos.z run data get entity @p[gamemode=survival, distance=..40] Pos[2] 1000000

#------- Makes the substraction of the two positions: P2 = P2 - P1. Generates the potion's motion vector -------
scoreboard players operation @s _tmp.ply.pos.x -= @s _tmp.ent.pos.x
scoreboard players operation @s _tmp.ply.pos.y -= @s _tmp.ent.pos.y
scoreboard players operation @s _tmp.ply.pos.z -= @s _tmp.ent.pos.z

#------- Adds some force to the Y axis to throw the potion into the air -------
scoreboard players operation @s _tmp.ply.pos.y += @s _tmp.force.y

#------- Sets the motion vector to the potion -------
execute store result entity @s Motion[0] double 0.000000055 run scoreboard players get @s _tmp.ply.pos.x
execute store result entity @s Motion[1] double 0.000000055 run scoreboard players get @s _tmp.ply.pos.y
execute store result entity @s Motion[2] double 0.000000055 run scoreboard players get @s _tmp.ply.pos.z

#------- Removes the temporary variables -------
scoreboard objectives remove _tmp.ent.pos.x
scoreboard objectives remove _tmp.ent.pos.y
scoreboard objectives remove _tmp.ent.pos.z
scoreboard objectives remove _tmp.ply.pos.x
scoreboard objectives remove _tmp.ply.pos.y
scoreboard objectives remove _tmp.ply.pos.z
scoreboard objectives remove _tmp.force.y

#------- Plays a sound of throwing potion -------
playsound entity.witch.throw block @a ~ ~ ~ 1.0 1.0 0.1
