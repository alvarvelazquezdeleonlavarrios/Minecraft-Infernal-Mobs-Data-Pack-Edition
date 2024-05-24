#******************* Spawning --> Settings --> Healthbars --> Set Healthbar --> 11 *******************


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

scoreboard players set @s _hb.crtId 11
bossbar set _healthbar.11 name {"selector":"@s","interpret":true}
execute store result bossbar _healthbar.11 max run data get entity @s Health
execute store result bossbar _healthbar.11 value run data get entity @s Health
execute if entity @s[tag=rare] run bossbar set _healthbar.11 color purple
execute if entity @s[tag=ultra] run bossbar set _healthbar.11 color pink
execute if entity @s[tag=infernal] run bossbar set _healthbar.11 color red

#------- Indicates the finding algorithm that this available healthbar was found -------
# healthbars.already_found = true;
scoreboard players set $Healthbars _hb.alrFound 1
