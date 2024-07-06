#******************* Main --> Start *******************


#------- Creates the game variables for the internal logic of the skills the entities will use. -------
scoreboard objectives add _sk.1up.alrHld dummy
scoreboard objectives add _sk.1up.h20P dummy
scoreboard objectives add _sk.1up.crtHlt dummy
scoreboard objectives add _sk.1up.mxHlt dummy
scoreboard objectives add _sk.alch.mxT dummy
scoreboard objectives add _sk.alch.crtT dummy
scoreboard objectives add _sk.brsk.crtHlt dummy
scoreboard objectives add _sk.brsk.crtAtk dummy
scoreboard objectives add _sk.blst.mxT dummy
scoreboard objectives add _sk.blst.crtT dummy
scoreboard objectives add _sk.clck.mxT dummy
scoreboard objectives add _sk.clck.crtT dummy
scoreboard objectives add _sk.end.mxT dummy
scoreboard objectives add _sk.end.crtT dummy
scoreboard objectives add _sk.ghtl.mxT dummy
scoreboard objectives add _sk.ghtl.crtT dummy
scoreboard objectives add _sk.grvt.mxT dummy
scoreboard objectives add _sk.grvt.crtT dummy
scoreboard objectives add _sk.lfst.crtHlt dummy
scoreboard objectives add _sk.lfst.atkDmg dummy
scoreboard objectives add _sk.ninja.mxT dummy
scoreboard objectives add _sk.ninja.crtT dummy
scoreboard objectives add _sk.qucksnd.mxT dummy
scoreboard objectives add _sk.qucksnd.crtT dummy
scoreboard objectives add _sk.regen.mxT dummy
scoreboard objectives add _sk.regen.crtT dummy
scoreboard objectives add _sk.regen.crtHlt dummy
scoreboard objectives add _sk.sticky.mxT dummy
scoreboard objectives add _sk.sticky.crtT dummy
scoreboard objectives add _sk.storm.mxT dummy
scoreboard objectives add _sk.storm.crtT dummy
scoreboard objectives add _sk.vngc.mxT dummy
scoreboard objectives add _sk.vngc.crtT dummy
scoreboard objectives add _sk.webber.mxT dummy
scoreboard objectives add _sk.webber.crtT dummy

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
scoreboard objectives add _const.26 dummy
scoreboard objectives add _const.100 dummy
scoreboard objectives add _const.10000 dummy

#------- Creates the game variables for the logic that sets the healthbars to the mobs. -------
scoreboard objectives add _hb.crtSearch dummy
scoreboard objectives add _hb.alrFound dummy
scoreboard objectives add _hb.crtId dummy

#------- Creates the game variables for the logic that spawns naturally the infernal mobs in the world. -------
scoreboard objectives add _ntrlSpwn.crtWT dummy
scoreboard objectives add _ntrlSpwn.vrtChc dummy

#------- Creates the game variables for the overall complex logic (entities health, game difficulty, mobs death detection, etc.). -------
scoreboard objectives add _gameDif.crtVal dummy
scoreboard objectives add _aecDthD.bndMob dummy
scoreboard objectives add _aecDthD.xpOrbsA dummy
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
scoreboard players set $Constants _const.26 26
scoreboard players set $Constants _const.100 100
scoreboard players set $Constants _const.10000 10000

#------- Creates a fake player named "$Healthbars" to do the bossbar assignments to the current mobs in the game. -------
scoreboard players set $Healthbars _hb.crtSearch 1
scoreboard players set $Healthbars _hb.alrFound 0

#------- Creates a fake player named "$GameManager" to do the overall automatic updates like the mobs' natural spawning, set the mobs' generic attack damage depending on the game difficulty, etc.. -------
scoreboard players set $GameManager _ntrlSpwn.crtWT 20
scoreboard players set $GameManager _gameDif.crtVal 1
scoreboard players set $GameManager _numPly.crt.neth 0
scoreboard players set $GameManager _numPly.prv.neth 0
scoreboard players set $GameManager _numPly.crt.end 0
scoreboard players set $GameManager _numPly.prv.end 0



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
tellraw @a {"text": "***************************************************************************","color":"dark_red"}
tellraw @a {"text": "----------- Infernal Mobs: Data Pack Edition -----------","color":"dark_red"}
tellraw @a {"text": "---------- For Minecraft: Java Edition v.1.14 -----------","color":"red"}
tellraw @a {"text": "------------------------- v.1.0 --------------------","color":"yellow"}
tellraw @a {"text": "--- Developed by: Alvar Velázquez de León Lavarrios ---","color":"white"}
tellraw @a {"text": "***************************************************************************","color":"dark_red"}
