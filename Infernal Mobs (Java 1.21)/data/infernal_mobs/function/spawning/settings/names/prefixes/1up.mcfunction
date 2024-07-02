#******************* Spawning --> Settings --> Names --> Prefixes --> 1UP *******************


#------- Creates a temporary variable for the 1UP prefix -------
# int tmp_random_prefix_1up = new int();
# mob.AddVariable( tmp_random_prefix_1up, -1 );
scoreboard objectives add _tmp.random_prefix.1up dummy
scoreboard players set @s _tmp.random_prefix.1up -1

#------- Defines the random prefix for the 1UP skill -------
# mob.tmp_random_prefix_1up = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_1up"]}
execute store result score @s _tmp.random_prefix.1up run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_1up, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.1up %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_1up, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_1up):
#   case 0:     sign.text2 = "recurring " + sign.text2;   break;
#   case 1:     sign.text2 = "undying " + sign.text2;     break;
#   case 2:     sign.text2 = "twinlived " + sign.text2;    break;
execute if score @s _tmp.random_prefix.1up matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"recurring "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.1up matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"undying "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.1up matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"twinlived "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the 1UP prefix -------
# deleteVariable( tmp_random_prefix_1up );
scoreboard objectives remove _tmp.random_prefix.1up
