#******************* Spawning --> Settings --> Names --> Prefixes --> Choke *******************


#------- Creates a temporary variable for the choke prefix -------
# int tmp_random_prefix_choke = new int();
# mob.AddVariable( tmp_random_prefix_choke, -1 );
scoreboard objectives add _tmp.random_prefix.choke dummy
scoreboard players set @s _tmp.random_prefix.choke -1

#------- Defines the random prefix for the choke skill -------
# mob.tmp_random_prefix_choke = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_choke"]}
execute store result score @s _tmp.random_prefix.choke run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_choke, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.choke %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_choke, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_choke):
#   case 0:     sign.text2 = "Sith Lord " + sign.text2;   break;
#   case 1:     sign.text2 = "Dark Lord " + sign.text2;     break;
#   case 2:     sign.text2 = "Darth " + sign.text2;    break;
execute if score @s _tmp.random_prefix.choke matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"Sith Lord "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.choke matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"Dark Lord "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.choke matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"Darth "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the choke prefix -------
# deleteVariable( tmp_random_prefix_choke );
scoreboard objectives remove _tmp.random_prefix.choke
