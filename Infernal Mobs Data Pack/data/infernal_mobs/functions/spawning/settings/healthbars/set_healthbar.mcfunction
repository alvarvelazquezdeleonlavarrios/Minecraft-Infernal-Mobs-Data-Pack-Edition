#******************* Spawning --> Settings --> Healthbars --> Set Healthbar *******************


#------- If healthbar #1 is available, sets its attributes taking the mob's information -------
# if (current_search == 1):
#   mob.healthbar_current_id = 1;
#   healthbars[1].name = mob.customName;
#   healthbars[1].max = mob.health;
#   healthbars[1].value = mob.health;
execute if score $Healthbars _healthbar.current_search matches 1 run scoreboard players set @s _healthbar.current_id 1
execute if score $Healthbars _healthbar.current_search matches 1 run bossbar set _healthbar.1 name {"selector":"@s","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 1 run execute store result bossbar _healthbar.1 max run data get entity @s Health
execute if score $Healthbars _healthbar.current_search matches 1 run execute store result bossbar _healthbar.1 value run data get entity @s Health



#------- If healthbar #2 is available, sets its attributes taking the mob's information -------
execute if score $Healthbars _healthbar.current_search matches 2 run scoreboard players set @s _healthbar.current_id 2
execute if score $Healthbars _healthbar.current_search matches 2 run bossbar set _healthbar.2 name {"selector":"@s","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 2 run execute store result bossbar _healthbar.2 max run data get entity @s Health
execute if score $Healthbars _healthbar.current_search matches 2 run execute store result bossbar _healthbar.2 value run data get entity @s Health


#------- If healthbar #3 is available, sets its attributes taking the mob's information -------
execute if score $Healthbars _healthbar.current_search matches 3 run scoreboard players set @s _healthbar.current_id 3
execute if score $Healthbars _healthbar.current_search matches 3 run bossbar set _healthbar.3 name {"selector":"@s","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 3 run execute store result bossbar _healthbar.3 max run data get entity @s Health
execute if score $Healthbars _healthbar.current_search matches 3 run execute store result bossbar _healthbar.3 value run data get entity @s Health


#------- If healthbar #4 is available, sets its attributes taking the mob's information -------
execute if score $Healthbars _healthbar.current_search matches 4 run scoreboard players set @s _healthbar.current_id 4
execute if score $Healthbars _healthbar.current_search matches 4 run bossbar set _healthbar.4 name {"selector":"@s","interpret":true}
execute if score $Healthbars _healthbar.current_search matches 4 run execute store result bossbar _healthbar.4 max run data get entity @s Health
execute if score $Healthbars _healthbar.current_search matches 4 run execute store result bossbar _healthbar.4 value run data get entity @s Health


#------- Indicates the finding algorithm that an available healthbar was found -------
# healthbars.already_found = true;
scoreboard players set $Healthbars _healthbar.already_found 1
