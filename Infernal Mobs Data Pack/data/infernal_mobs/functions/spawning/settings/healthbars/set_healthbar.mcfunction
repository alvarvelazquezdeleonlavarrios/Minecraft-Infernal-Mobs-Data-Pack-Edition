#******************* Spawning --> Settings --> Healthbars --> Set Healthbar *******************


execute if score $Healthbars _healthbar.current_search matches 1 run bossbar set _healthbar.1 name {"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 1 run bossbar set _healthbar.1 players @a


execute if score $Healthbars _healthbar.current_search matches 2 run bossbar set _healthbar.2 name {"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 2 run bossbar set _healthbar.2 players @a


execute if score $Healthbars _healthbar.current_search matches 3 run bossbar set _healthbar.3 name {"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 3 run bossbar set _healthbar.3 players @a


execute if score $Healthbars _healthbar.current_search matches 4 run bossbar set _healthbar.4 name {"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 4 run bossbar set _healthbar.4 players @a


#------- Resets the mob's name to its default value -------
# mob.customName = "";
data modify entity @s CustomName set value ""

#------- Indicates the finding algorithm that an available healthbar was found -------
# healthbars.already_found = true;
scoreboard players set $Healthbars _healthbar.already_found 1
