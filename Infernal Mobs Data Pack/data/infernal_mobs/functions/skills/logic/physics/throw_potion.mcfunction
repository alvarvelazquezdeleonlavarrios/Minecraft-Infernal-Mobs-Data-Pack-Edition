#******************* Skills --> Logic --> Physics --> Throw Potion *******************


#------- Creates temporary variables to calculate the motion vector -------
scoreboard objectives add _tmp.entity.pos.x dummy
scoreboard objectives add _tmp.entity.pos.y dummy
scoreboard objectives add _tmp.entity.pos.z dummy
scoreboard objectives add _tmp.player.pos.x dummy
scoreboard objectives add _tmp.player.pos.y dummy
scoreboard objectives add _tmp.player.pos.z dummy
scoreboard objectives add _tmp.force.y dummy

#------- Adds the temporary variables to this potion -------
scoreboard players set @s _tmp.entity.pos.x 0
scoreboard players set @s _tmp.entity.pos.y 0
scoreboard players set @s _tmp.entity.pos.z 0
scoreboard players set @s _tmp.player.pos.x 0
scoreboard players set @s _tmp.player.pos.y 0
scoreboard players set @s _tmp.player.pos.z 0
scoreboard players set @s _tmp.force.y 7500000

#------- Gets the potion's position (x1, y1, z1) -------
execute store result score @s _tmp.entity.pos.x run data get entity @s Pos[0] 1000000
execute store result score @s _tmp.entity.pos.y run data get entity @s Pos[1] 1000000
execute store result score @s _tmp.entity.pos.z run data get entity @s Pos[2] 1000000

#------- Gets the nearest player's position (x2, y2, z2) -------
execute store result score @s _tmp.player.pos.x run data get entity @p[gamemode=survival] Pos[0] 1000000
execute store result score @s _tmp.player.pos.y run data get entity @p[gamemode=survival] Pos[1] 1000000
execute store result score @s _tmp.player.pos.z run data get entity @p[gamemode=survival] Pos[2] 1000000

#------- Makes the substraction of the two positions: P2 = P2 - P1. Generates the potion's motion vector -------
scoreboard players operation @s _tmp.player.pos.x -= @s _tmp.entity.pos.x
scoreboard players operation @s _tmp.player.pos.y -= @s _tmp.entity.pos.y
scoreboard players operation @s _tmp.player.pos.z -= @s _tmp.entity.pos.z

#------- Adds some force to the Y axis to throw the potion into the air -------
scoreboard players operation @s _tmp.player.pos.y += @s _tmp.force.y

#------- Sets the motion vector to the potion -------
execute store result entity @s Motion[0] double 0.000000055 run scoreboard players get @s _tmp.player.pos.x
execute store result entity @s Motion[1] double 0.000000055 run scoreboard players get @s _tmp.player.pos.y
execute store result entity @s Motion[2] double 0.000000055 run scoreboard players get @s _tmp.player.pos.z

#------- Removes the temporary variables -------
scoreboard objectives remove _tmp.entity.pos.x
scoreboard objectives remove _tmp.entity.pos.y
scoreboard objectives remove _tmp.entity.pos.z
scoreboard objectives remove _tmp.player.pos.x
scoreboard objectives remove _tmp.player.pos.y
scoreboard objectives remove _tmp.player.pos.z
scoreboard objectives remove _tmp.force.y

#------- Plays a sound of throwing potion -------
playsound entity.splash_potion.throw block @a[distance=..26] ~ ~ ~ 1.0 1.0 0.1
