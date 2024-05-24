#******************* Spawning --> Settings --> Names --> Suffixes --> Webber *******************


#------- Creates a temporary variable for the webber suffix -------
# int tmp_random_suffix_webber = new int();
# mob.AddVariable( tmp_random_suffix_webber, -1 );
scoreboard objectives add _tmp.rndSuf.wbr dummy
scoreboard players set @s _tmp.rndSuf.wbr -1

#------- Defines the random suffix for the webber skill -------
# mob.tmp_random_suffix_webber = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_webber"]}
execute store result score @s _tmp.rndSuf.wbr run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_webber, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.wbr %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_webber, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_webber):
#   case 0:     sign.text2 = " ofTraps";   break;
#   case 1:     sign.text2 = " theMutated";     break;
#   case 2:     sign.text2 = " theSpider";    break;
execute if score @s _tmp.rndSuf.wbr matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofTraps","interpret":true}'
execute if score @s _tmp.rndSuf.wbr matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theMutated","interpret":true}'
execute if score @s _tmp.rndSuf.wbr matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" theSpider","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the webber suffix -------
# deleteVariable( tmp_random_suffix_webber );
scoreboard objectives remove _tmp.rndSuf.wbr
