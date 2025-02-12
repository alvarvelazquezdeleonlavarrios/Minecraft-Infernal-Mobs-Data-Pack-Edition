#******************* Spawning --> Settings --> Names --> Prefixes --> Blastoff *******************


#------- Creates a temporary variable for the blastoff prefix -------
# int tmp_random_prefix_blastoff = new int();
# mob.AddVariable( tmp_random_prefix_blastoff, -1 );
scoreboard objectives add _tmp.random_prefix.blastoff dummy
scoreboard players set @s _tmp.random_prefix.blastoff -1

#------- Defines the random prefix for the blastoff skill -------
# mob.tmp_random_prefix_blastoff = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_blastoff"]}
execute store result score @s _tmp.random_prefix.blastoff run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_blastoff, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.blastoff %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_blastoff, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_blastoff):
#   case 0:     sign.text2 = "thumping " + sign.text2;   break;
#   case 1:     sign.text2 = "trolling " + sign.text2;     break;
#   case 2:     sign.text2 = "byebye " + sign.text2;    break;
execute if score @s _tmp.random_prefix.blastoff matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"thumping "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.blastoff matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"trolling "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.blastoff matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"byebye "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the blastoff prefix -------
# deleteVariable( tmp_random_prefix_blastoff );
scoreboard objectives remove _tmp.random_prefix.blastoff
