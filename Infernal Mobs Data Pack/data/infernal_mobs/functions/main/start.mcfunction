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

scoreboard objectives add _healthbar.current_search dummy
scoreboard objectives add _healthbar.already_found dummy
scoreboard objectives add _healthbar.current_id dummy


#------- Creates a fake player named "$Constants" that will contain the value of the constants created previously, and that will be used for the internal logic -------
scoreboard players set $Constants _const.1 1
scoreboard players set $Constants _const.4 4
scoreboard players set $Constants _const.27 27
scoreboard players set $Constants _const.100 100

#------- Creates a fake player named "$Math" to do the mathematical operations for some skills -------
scoreboard players set $Math _math.sqrt.input 0
scoreboard players set $Math _math.sqrt.value 0
scoreboard players set $Math _math.sqrt.result_power_2 0
scoreboard players set $Math _math.sqrt.result 0

#------- Creates a fake player named "$Healthbars" to do the bossbar assignments to the current mobs in the game -------
scoreboard players set $Healthbars _healthbar.current_search 1
scoreboard players set $Healthbars _healthbar.already_found 0

#------- Creates a fixed number of bossbars for the mobs' health -------
bossbar add _healthbar.1 ""
bossbar add _healthbar.2 ""
bossbar add _healthbar.3 ""
bossbar add _healthbar.4 ""
#bossbar add _healthbar.5 ""
#bossbar add _healthbar.6 ""
#bossbar add _healthbar.7 ""
#bossbar add _healthbar.8 ""
#bossbar add _healthbar.9 ""
#bossbar add _healthbar.10 ""


#------- Prints a message in the chat when this Data Pack is loaded -------
tellraw @a {"text": "***************************************************************************","color": "#1A3AA3"}
tellraw @a {"text": "--------------- Infernal Mobs Data Pack -------------"}
tellraw @a {"text": "-------------------- Version: 1.0 -------------------"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color": "#B8B8B8"}
tellraw @a {"text": "***************************************************************************","color": "#1A3AA3"}
