#******************* Spawning --> Settings --> Healthbars --> Set Healthbar --> 38 *******************


#+++++++++++++++++++++++++++++++++ Overall Setting Logic ++++++++++++++++++++++++++++++++++++++
# mob.healthbar_current_id = bar_id;
# healthbars[bar_id].name = mob.customName;
# healthbars[bar_id].max = mob.health;
# healthbars[bar_id].value = mob.health;
#
# switch( mob.variant ):
#   case "rare":        healthbars[bar_id].color = purple;  break;
#   case "ultra":       healthbars[bar_id].color = pink;    break;
#   case "infernal":    healthbars[bar_id].color = red;     break;
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

scoreboard players set @s _healthbar.current_id 38
bossbar set _healthbar.38 name {"selector":"@s","interpret":true}
execute store result bossbar _healthbar.38 max run data get entity @s Health
execute store result bossbar _healthbar.38 value run data get entity @s Health
execute if entity @s[tag=rare] run bossbar set _healthbar.38 color purple
execute if entity @s[tag=ultra] run bossbar set _healthbar.38 color pink
execute if entity @s[tag=infernal] run bossbar set _healthbar.38 color red

#------- Indicates the finding algorithm that this available healthbar was found -------
# healthbars.already_found = true;
scoreboard players set $Healthbars _healthbar.already_found 1