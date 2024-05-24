#******************* Spawning --> Settings --> Names --> Suffixes --> Regen *******************


#------- Creates a temporary variable for the regen suffix -------
# int tmp_random_suffix_regen = new int();
# mob.AddVariable( tmp_random_suffix_regen, -1 );
scoreboard objectives add _tmp.rndSuf.rgn dummy
scoreboard players set @s _tmp.rndSuf.rgn -1

#------- Defines the random suffix for the regen skill -------
# mob.tmp_random_suffix_regen = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_regen"]}
execute store result score @s _tmp.rndSuf.rgn run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_regen, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.rgn %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_regen, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_regen):
#   case 0:     sign.text2 = " ofWTFIMBA";   break;
#   case 1:     sign.text2 = " theCancerous";     break;
#   case 2:     sign.text2 = " ofFirstAid";    break;
execute if score @s _tmp.rndSuf.rgn matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofWTFIMBA","interpret":true}'
execute if score @s _tmp.rndSuf.rgn matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theCancerous","interpret":true}'
execute if score @s _tmp.rndSuf.rgn matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofFirstAid","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the regen suffix -------
# deleteVariable( tmp_random_suffix_regen );
scoreboard objectives remove _tmp.rndSuf.rgn
