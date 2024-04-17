#******************* Main --> Start *******************


#------- Creates the game variables for the internal logic of the entities that will use them -------
scoreboard objectives add _skills.1up.already_healed dummy
scoreboard objectives add _skills.1up.health_20percent dummy
scoreboard objectives add _skills.1up.current_health dummy
scoreboard objectives add _skills.1up.max_health dummy
scoreboard objectives add _skills.alchimist.max_time dummy
scoreboard objectives add _skills.alchimist.current_time dummy
scoreboard objectives add _skills.berserk.current_health dummy
scoreboard objectives add _skills.blastoff.max_time dummy
scoreboard objectives add _skills.blastoff.current_time dummy

scoreboard objectives add _math.sqrt.input dummy
scoreboard objectives add _math.sqrt.value dummy
scoreboard objectives add _math.sqrt.result_power_2 dummy
scoreboard objectives add _math.sqrt.result dummy

scoreboard objectives add _const.1 dummy
scoreboard objectives add _const.2 dummy
scoreboard objectives add _const.3 dummy
scoreboard objectives add _const.4 dummy
scoreboard objectives add _const.5 dummy
scoreboard objectives add _const.8 dummy
scoreboard objectives add _const.10 dummy
scoreboard objectives add _const.27 dummy
scoreboard objectives add _const.100 dummy

scoreboard objectives add _healthbar.current_search dummy
scoreboard objectives add _healthbar.already_found dummy
scoreboard objectives add _healthbar.current_id dummy


#------- Creates a fake player named "$Constants" that will contain the value of the constants created previously, and that will be used for the internal logic -------
scoreboard players set $Constants _const.1 1
scoreboard players set $Constants _const.2 2
scoreboard players set $Constants _const.3 3
scoreboard players set $Constants _const.4 4
scoreboard players set $Constants _const.5 5
scoreboard players set $Constants _const.8 8
scoreboard players set $Constants _const.10 10
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
bossbar add _healthbar.5 ""
bossbar add _healthbar.6 ""
bossbar add _healthbar.7 ""
bossbar add _healthbar.8 ""
bossbar add _healthbar.9 ""
bossbar add _healthbar.10 ""
bossbar add _healthbar.11 ""
bossbar add _healthbar.12 ""
bossbar add _healthbar.13 ""
bossbar add _healthbar.14 ""
bossbar add _healthbar.15 ""
bossbar add _healthbar.16 ""
bossbar add _healthbar.17 ""
bossbar add _healthbar.18 ""
bossbar add _healthbar.19 ""
bossbar add _healthbar.20 ""
bossbar add _healthbar.21 ""
bossbar add _healthbar.22 ""
bossbar add _healthbar.23 ""
bossbar add _healthbar.24 ""
bossbar add _healthbar.25 ""
bossbar add _healthbar.26 ""
bossbar add _healthbar.27 ""
bossbar add _healthbar.28 ""
bossbar add _healthbar.29 ""
bossbar add _healthbar.30 ""


#------- Prints a message in the chat when this Data Pack is loaded -------
tellraw @a {"text": "***************************************************************************","color":"#1A3AA3"}
tellraw @a {"text": "--------------- Infernal Mobs Data Pack -------------"}
tellraw @a {"text": "-------------------- Version: 1.0 -------------------"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color":"#B8B8B8"}
tellraw @a {"text": "***************************************************************************","color":"#1A3AA3"}
