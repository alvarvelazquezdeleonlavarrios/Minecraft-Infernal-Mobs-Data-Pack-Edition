#******************* Spawning --> Settings --> Names --> Suffixes --> Webber *******************


#------- Creates a temporary variable for the webber suffix -------
# int tmp_random_suffix_webber = new int();
# mob.AddVariable( tmp_random_suffix_webber, -1 );
scoreboard objectives add _tmp.random_suffix.webber dummy
scoreboard players set @s _tmp.random_suffix.webber -1

#------- Defines the random suffix for the webber skill -------
# mob.tmp_random_suffix_webber = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_webber"]}
execute store result score @s _tmp.random_suffix.webber run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_webber, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.webber %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_webber, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_webber):
#   case 0:     sign.text2 = " ofTraps";   break;
#   case 1:     sign.text2 = " theMutated";     break;
#   case 2:     sign.text2 = " theSpider";    break;
execute if score @s _tmp.random_suffix.webber matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofTraps"}'
execute if score @s _tmp.random_suffix.webber matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theMutated"}'
execute if score @s _tmp.random_suffix.webber matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theSpider"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the webber suffix -------
# deleteVariable( tmp_random_suffix_webber );
scoreboard objectives remove _tmp.random_suffix.webber
