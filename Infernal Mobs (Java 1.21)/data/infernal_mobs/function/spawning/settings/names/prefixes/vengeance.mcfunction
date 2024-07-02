#******************* Spawning --> Settings --> Names --> Prefixes --> Vengeance *******************


#------- Creates a temporary variable for the vengeance prefix -------
# int tmp_random_prefix_vengeance = new int();
# mob.AddVariable( tmp_random_prefix_vengeance, -1 );
scoreboard objectives add _tmp.random_prefix.vengeance dummy
scoreboard players set @s _tmp.random_prefix.vengeance -1

#------- Defines the random prefix for the vengeance skill -------
# mob.tmp_random_prefix_vengeance = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_vengeance"]}
execute store result score @s _tmp.random_prefix.vengeance run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_vengeance, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.vengeance %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_vengeance, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_vengeance):
#   case 0:     sign.text2 = "thorned " + sign.text2;   break;
#   case 1:     sign.text2 = "thorny " + sign.text2;     break;
#   case 2:     sign.text2 = "spiky " + sign.text2;    break;
execute if score @s _tmp.random_prefix.vengeance matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"thorned "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.vengeance matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"thorny "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.vengeance matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"spiky "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the vengeance prefix -------
# deleteVariable( tmp_random_prefix_vengeance );
scoreboard objectives remove _tmp.random_prefix.vengeance
