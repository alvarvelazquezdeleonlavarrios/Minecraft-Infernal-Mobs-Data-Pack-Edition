#******************* Main --> Start *******************


#------- Creates the game variables for the internal logic of the entities that will use them -------
scoreboard objectives add _skills.alchimist.max_time dummy
scoreboard objectives add _skills.alchimist.current_time dummy

scoreboard objectives add _math.sqrt.input dummy
scoreboard objectives add _math.sqrt.value dummy
scoreboard objectives add _math.sqrt.result_power_2 dummy
scoreboard objectives add _math.sqrt.result dummy

scoreboard objectives add _const.1 dummy
scoreboard objectives add _const.4 dummy
scoreboard objectives add _const.27 dummy
scoreboard objectives add _const.100 dummy

#------- Creates a fake player named "$Constants" that will contain the value of the constants created previously, and that will be used for the internal logic -------
scoreboard players set $Constants _const.1 1
scoreboard players set $Constants _const.4 4
scoreboard players set $Constants _const.27 27
scoreboard players set $Constants _const.100 100

#------- Creates a fake player named "$Math" to do the mathematical operations for some skills
scoreboard players set $Math _math.sqrt.input 0
scoreboard players set $Math _math.sqrt.value 0
scoreboard players set $Math _math.sqrt.result_power_2 0
scoreboard players set $Math _math.sqrt.result 0

#------- Prints a message in the chat when this DataPack is loaded -------
tellraw @a {"text": "*********************************************************************","color": "#1A3AA3"}
tellraw @a {"text": "--------------------- Infernal Mobs DataPack ------------------------"}
tellraw @a {"text": "-------------------------- Version: 1.0 -----------------------------"}
tellraw @a {"text": "--------- Developed by: Alvar Velázquez de León Lavarrios -----------","color": "#B8B8B8"}
tellraw @a {"text": "*********************************************************************","color": "#1A3AA3"}
