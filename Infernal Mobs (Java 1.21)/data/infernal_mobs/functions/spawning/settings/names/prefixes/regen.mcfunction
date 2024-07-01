#******************* Spawning --> Settings --> Names --> Prefixes --> Regen *******************


#------- Creates a temporary variable for the regen prefix -------
# int tmp_random_prefix_regen = new int();
# mob.AddVariable( tmp_random_prefix_regen, -1 );
scoreboard objectives add _tmp.random_prefix.regen dummy
scoreboard players set @s _tmp.random_prefix.regen -1

#------- Defines the random prefix for the regen skill -------
# mob.tmp_random_prefix_regen = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_regen"]}
execute store result score @s _tmp.random_prefix.regen run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_regen, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.regen %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_regen, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_regen):
#   case 0:     sign.text2 = "regenerating " + sign.text2;   break;
#   case 1:     sign.text2 = "healing " + sign.text2;     break;
#   case 2:     sign.text2 = "nighunkillable " + sign.text2;    break;
execute if score @s _tmp.random_prefix.regen matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"regenerating "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.regen matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"healing "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.regen matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"nighunkillable "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the regen prefix -------
# deleteVariable( tmp_random_prefix_regen );
scoreboard objectives remove _tmp.random_prefix.regen
