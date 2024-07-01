#******************* Spawning --> Settings --> Names --> Prefixes --> Lifesteal *******************


#------- Creates a temporary variable for the lifesteal prefix -------
# int tmp_random_prefix_lifesteal = new int();
# mob.AddVariable( tmp_random_prefix_lifesteal, -1 );
scoreboard objectives add _tmp.random_prefix.lifesteal dummy
scoreboard players set @s _tmp.random_prefix.lifesteal -1

#------- Defines the random prefix for the lifesteal skill -------
# mob.tmp_random_prefix_lifesteal = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_lifesteal"]}
execute store result score @s _tmp.random_prefix.lifesteal run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_lifesteal, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.lifesteal %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_lifesteal, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_lifesteal):
#   case 0:     sign.text2 = "vampiric " + sign.text2;   break;
#   case 1:     sign.text2 = "transfusing " + sign.text2;     break;
#   case 2:     sign.text2 = "bloodsucking " + sign.text2;    break;
execute if score @s _tmp.random_prefix.lifesteal matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"vampiric "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.lifesteal matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"transfusing "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.lifesteal matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"bloodsucking "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the lifesteal prefix -------
# deleteVariable( tmp_random_prefix_lifesteal );
scoreboard objectives remove _tmp.random_prefix.lifesteal
