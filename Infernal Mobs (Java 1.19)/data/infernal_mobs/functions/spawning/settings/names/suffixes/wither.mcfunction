#******************* Spawning --> Settings --> Names --> Suffixes --> Wither *******************


#------- Creates a temporary variable for the wither suffix -------
# int tmp_random_suffix_wither = new int();
# mob.AddVariable( tmp_random_suffix_wither, -1 );
scoreboard objectives add _tmp.random_suffix.wither dummy
scoreboard players set @s _tmp.random_suffix.wither -1

#------- Defines the random suffix for the wither skill -------
# mob.tmp_random_suffix_wither = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_wither"]}
execute store result score @s _tmp.random_suffix.wither run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_wither, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.wither %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_wither, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_wither):
#   case 0:     sign.text2 = " ofDarkSkulls";   break;
#   case 1:     sign.text2 = " Doomskull";     break;
execute if score @s _tmp.random_suffix.wither matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofDarkSkulls","interpret":true}'
execute if score @s _tmp.random_suffix.wither matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" Doomskull","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the wither suffix -------
# deleteVariable( tmp_random_suffix_wither );
scoreboard objectives remove _tmp.random_suffix.wither