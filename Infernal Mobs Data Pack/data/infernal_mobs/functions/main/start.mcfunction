#******************* Main --> Start *******************


#------- Creates the game variables for the internal logic of the skills the entities will use. -------
scoreboard objectives add _skills.1up.already_healed dummy
scoreboard objectives add _skills.1up.health_20percent dummy
scoreboard objectives add _skills.1up.current_health dummy
scoreboard objectives add _skills.1up.max_health dummy
scoreboard objectives add _skills.alchemist.max_time dummy
scoreboard objectives add _skills.alchemist.current_time dummy
scoreboard objectives add _skills.berserk.current_health dummy
scoreboard objectives add _skills.blastoff.max_time dummy
scoreboard objectives add _skills.blastoff.current_time dummy
scoreboard objectives add _skills.cloacking.max_time dummy
scoreboard objectives add _skills.cloacking.current_time dummy
scoreboard objectives add _skills.ender.max_time dummy
scoreboard objectives add _skills.ender.current_time dummy
scoreboard objectives add _skills.ghastly.max_time dummy
scoreboard objectives add _skills.ghastly.current_time dummy
scoreboard objectives add _skills.gravity.max_time dummy
scoreboard objectives add _skills.gravity.current_time dummy
scoreboard objectives add _skills.lifesteal.current_health dummy
scoreboard objectives add _skills.lifesteal.attack_damage dummy
scoreboard objectives add _skills.ninja.max_time dummy
scoreboard objectives add _skills.ninja.current_time dummy
scoreboard objectives add _skills.quicksand.max_time dummy
scoreboard objectives add _skills.quicksand.current_time dummy
scoreboard objectives add _skills.regen.max_time dummy
scoreboard objectives add _skills.regen.current_time dummy
scoreboard objectives add _skills.regen.current_health dummy
scoreboard objectives add _skills.sticky.max_time dummy
scoreboard objectives add _skills.sticky.current_time dummy
scoreboard objectives add _skills.storm.max_time dummy
scoreboard objectives add _skills.storm.current_time dummy
scoreboard objectives add _skills.vengeance.max_time dummy
scoreboard objectives add _skills.vengeance.current_time dummy
scoreboard objectives add _skills.webber.max_time dummy
scoreboard objectives add _skills.webber.current_time dummy

#------- Creates some constants with fixed values for reseting and math operations. -------
scoreboard objectives add _const.1 dummy
scoreboard objectives add _const.2 dummy
scoreboard objectives add _const.3 dummy
scoreboard objectives add _const.4 dummy
scoreboard objectives add _const.5 dummy
scoreboard objectives add _const.6 dummy
scoreboard objectives add _const.7 dummy
scoreboard objectives add _const.8 dummy
scoreboard objectives add _const.9 dummy
scoreboard objectives add _const.10 dummy
scoreboard objectives add _const.16 dummy
scoreboard objectives add _const.24 dummy
scoreboard objectives add _const.27 dummy
scoreboard objectives add _const.100 dummy

#------- Creates the game variables for the logic that sets the healthbars to the mobs. -------
scoreboard objectives add _healthbar.current_search dummy
scoreboard objectives add _healthbar.already_found dummy
scoreboard objectives add _healthbar.current_id dummy

#------- Stores and updates automatically the health for each entity (including players) during the game. -------
scoreboard objectives add _health_points health

#------- Creates a fake player named "$Constants" that will contain the value of the constants created previously. -------
scoreboard players set $Constants _const.1 1
scoreboard players set $Constants _const.2 2
scoreboard players set $Constants _const.3 3
scoreboard players set $Constants _const.4 4
scoreboard players set $Constants _const.5 5
scoreboard players set $Constants _const.6 6
scoreboard players set $Constants _const.7 7
scoreboard players set $Constants _const.8 8
scoreboard players set $Constants _const.9 9
scoreboard players set $Constants _const.10 10
scoreboard players set $Constants _const.16 16
scoreboard players set $Constants _const.24 24
scoreboard players set $Constants _const.27 27
scoreboard players set $Constants _const.100 100

#------- Creates a fake player named "$Healthbars" to do the bossbar assignments to the current mobs in the game. -------
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
