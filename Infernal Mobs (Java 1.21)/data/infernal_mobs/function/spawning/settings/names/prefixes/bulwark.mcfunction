#******************* Spawning --> Settings --> Names --> Prefixes --> Bulwark *******************


#------- Creates a temporary variable for the bulwark prefix -------
# int tmp_random_prefix_bulwark = new int();
# mob.AddVariable( tmp_random_prefix_bulwark, -1 );
scoreboard objectives add _tmp.random_prefix.bulwark dummy
scoreboard players set @s _tmp.random_prefix.bulwark -1

#------- Defines the random prefix for the bulwark skill -------
# mob.tmp_random_prefix_bulwark = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_bulwark"]}
execute store result score @s _tmp.random_prefix.bulwark run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_bulwark, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.bulwark %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_bulwark, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_bulwark):
#   case 0:     sign.text2 = "turtling " + sign.text2;   break;
#   case 1:     sign.text2 = "defensive " + sign.text2;     break;
#   case 2:     sign.text2 = "armoured " + sign.text2;    break;
execute if score @s _tmp.random_prefix.bulwark matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"turtling "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.bulwark matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"defensive "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.bulwark matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"armoured "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the bulwark prefix -------
# deleteVariable( tmp_random_prefix_bulwark );
scoreboard objectives remove _tmp.random_prefix.bulwark
