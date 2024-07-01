#******************* Spawning --> Settings --> Names --> Prefixes --> Storm *******************


#------- Creates a temporary variable for the storm prefix -------
# int tmp_random_prefix_storm = new int();
# mob.AddVariable( tmp_random_prefix_storm, -1 );
scoreboard objectives add _tmp.random_prefix.storm dummy
scoreboard players set @s _tmp.random_prefix.storm -1

#------- Defines the random prefix for the storm skill -------
# mob.tmp_random_prefix_storm = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_storm"]}
execute store result score @s _tmp.random_prefix.storm run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_storm, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.storm %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_storm, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_storm):
#   case 0:     sign.text2 = "striking " + sign.text2;   break;
#   case 1:     sign.text2 = "thundering " + sign.text2;     break;
#   case 2:     sign.text2 = "electrified " + sign.text2;     break;
execute if score @s _tmp.random_prefix.storm matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"striking "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.storm matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"thundering "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.storm matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"electrified "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the storm prefix -------
# deleteVariable( tmp_random_prefix_storm );
scoreboard objectives remove _tmp.random_prefix.storm
