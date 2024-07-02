#******************* Spawning --> Settings --> Names --> Prefixes --> Cloacking *******************


#------- Creates a temporary variable for the cloacking prefix -------
# int tmp_random_prefix_cloacking = new int();
# mob.AddVariable( tmp_random_prefix_cloacking, -1 );
scoreboard objectives add _tmp.random_prefix.cloacking dummy
scoreboard players set @s _tmp.random_prefix.cloacking -1

#------- Defines the random prefix for the cloacking skill -------
# mob.tmp_random_prefix_cloacking = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_cloacking"]}
execute store result score @s _tmp.random_prefix.cloacking run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_cloacking, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.cloacking %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_cloacking, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_cloacking):
#   case 0:     sign.text2 = "stalking " + sign.text2;   break;
#   case 1:     sign.text2 = "unseen " + sign.text2;     break;
#   case 2:     sign.text2 = "hunting " + sign.text2;    break;
execute if score @s _tmp.random_prefix.cloacking matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"stalking "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.cloacking matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"unseen "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.cloacking matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"hunting "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the cloacking prefix -------
# deleteVariable( tmp_random_prefix_cloacking );
scoreboard objectives remove _tmp.random_prefix.cloacking