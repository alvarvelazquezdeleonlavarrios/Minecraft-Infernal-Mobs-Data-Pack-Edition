#******************* Main --> Start *******************


#------- Creates the game variables for the internal logic of the skills the entities will use. -------
scoreboard objectives add _skills.1up.already_healed dummy
scoreboard objectives add _skills.1up.health_20percent dummy
scoreboard objectives add _skills.1up.current_health dummy
scoreboard objectives add _skills.1up.max_health dummy
scoreboard objectives add _skills.alchemist.max_time dummy
scoreboard objectives add _skills.alchemist.current_time dummy
scoreboard objectives add _skills.berserk.current_health dummy
scoreboard objectives add _skills.berserk.current_attack_damage dummy
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
scoreboard objectives add _const.10000 dummy

#------- Creates the game variables for the logic that sets the healthbars to the mobs. -------
scoreboard objectives add _healthbar.current_search dummy
scoreboard objectives add _healthbar.already_found dummy
scoreboard objectives add _healthbar.current_id dummy

#------- Creates the game variables for the logic that spawns naturally the infernal mobs in the world. -------
scoreboard objectives add _natural_spawning.current_wait_time dummy
scoreboard objectives add _natural_spawning.variant_chance dummy

#------- Creates the game variables for the overall complex logic (entities health, game difficulty, mobs death detection, etc.). -------
scoreboard objectives add _game_difficulty.current_value dummy
scoreboard objectives add _aec_death_detector.is_binded_to_mob dummy
scoreboard objectives add _aec_death_detector.experience_orbs_amount dummy
scoreboard objectives add _health_points health
scoreboard objectives add _number_of_players.current.the_nether dummy
scoreboard objectives add _number_of_players.current.the_end dummy
scoreboard objectives add _number_of_players.previous.the_nether dummy
scoreboard objectives add _number_of_players.previous.the_end dummy



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
scoreboard players set $Constants _const.10000 10000

#------- Creates a fake player named "$Healthbars" to do the bossbar assignments to the current mobs in the game. -------
scoreboard players set $Healthbars _healthbar.current_search 1
scoreboard players set $Healthbars _healthbar.already_found 0

#------- Creates a fake player named "$GameManager" to do the overall automatic updates like the mobs' natural spawning, set the mobs' generic attack damage depending on the game difficulty, etc.. -------
scoreboard players set $GameManager _natural_spawning.current_wait_time 20
scoreboard players set $GameManager _game_difficulty.current_value 1
scoreboard players set $GameManager _number_of_players.current.the_nether 0
scoreboard players set $GameManager _number_of_players.previous.the_nether 0
scoreboard players set $GameManager _number_of_players.current.the_end 0
scoreboard players set $GameManager _number_of_players.previous.the_end 0



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
bossbar add _healthbar.31 ""
bossbar add _healthbar.32 ""
bossbar add _healthbar.33 ""
bossbar add _healthbar.34 ""
bossbar add _healthbar.35 ""
bossbar add _healthbar.36 ""
bossbar add _healthbar.37 ""
bossbar add _healthbar.38 ""
bossbar add _healthbar.39 ""
bossbar add _healthbar.40 ""
bossbar add _healthbar.41 ""
bossbar add _healthbar.42 ""
bossbar add _healthbar.43 ""
bossbar add _healthbar.44 ""
bossbar add _healthbar.45 ""
bossbar add _healthbar.46 ""
bossbar add _healthbar.47 ""
bossbar add _healthbar.48 ""
bossbar add _healthbar.49 ""
bossbar add _healthbar.50 ""



#------- Prints a message in the chat when this Data Pack is reloaded -------
tellraw @a {"text": "***************************************************************************","color":"#D43313"}
tellraw @a {"text": "--------------- Infernal Mobs Data Pack -------------","color":"#D62B2B"}
tellraw @a {"text": "----------------- For Java Edition 1.19 --------------","color":"#D67520"}
tellraw @a {"text": "------------------------- v.1.0 --------------------","color":"#D6AB1E"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color":"#B3B3B3"}
tellraw @a {"text": "***************************************************************************","color":"#D43313"}
