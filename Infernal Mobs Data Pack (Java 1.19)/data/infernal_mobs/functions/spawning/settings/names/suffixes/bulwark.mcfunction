#******************* Spawning --> Settings --> Names --> Suffixes --> Bulwark *******************


#------- Creates a temporary variable for the bulwark suffix -------
# int tmp_random_suffix_bulwark = new int();
# mob.AddVariable( tmp_random_suffix_bulwark, -1 );
scoreboard objectives add _tmp.random_suffix.bulwark dummy
scoreboard players set @s _tmp.random_suffix.bulwark -1

#------- Defines the random suffix for the bulwark skill -------
# mob.tmp_random_suffix_bulwark = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_bulwark"]}
execute store result score @s _tmp.random_suffix.bulwark run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_bulwark, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.bulwark %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_bulwark, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_bulwark):
#   case 0:     sign.text2 = " ofTurtling";   break;
#   case 1:     sign.text2 = " theDefender";     break;
#   case 2:     sign.text2 = " ofeffingArmor";    break;
execute if score @s _tmp.random_suffix.bulwark matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofTurtling","interpret":true}'
execute if score @s _tmp.random_suffix.bulwark matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theDefender","interpret":true}'
execute if score @s _tmp.random_suffix.bulwark matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofeffingArmor","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the bulwark suffix -------
# deleteVariable( tmp_random_suffix_bulwark );
scoreboard objectives remove _tmp.random_suffix.bulwark
