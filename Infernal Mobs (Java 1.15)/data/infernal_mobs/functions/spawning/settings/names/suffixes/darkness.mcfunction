#******************* Spawning --> Settings --> Names --> Suffixes --> Darkness *******************


#------- Creates a temporary variable for the darkness suffix -------
# int tmp_random_suffix_darkness = new int();
# mob.AddVariable( tmp_random_suffix_darkness, -1 );
scoreboard objectives add _tmp.rndSuf.drk dummy
scoreboard players set @s _tmp.rndSuf.drk -1

#------- Defines the random suffix for the darkness skill -------
# mob.tmp_random_suffix_darkness = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_darkness"]}
execute store result score @s _tmp.rndSuf.drk run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_darkness, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.drk %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_darkness, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_darkness):
#   case 0:     sign.text2 = " ofDarkness";   break;
#   case 1:     sign.text2 = " theShadow";     break;
#   case 2:     sign.text2 = " theEclipse";    break;
execute if score @s _tmp.rndSuf.drk matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofDarkness","interpret":true}'
execute if score @s _tmp.rndSuf.drk matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theShadow","interpret":true}'
execute if score @s _tmp.rndSuf.drk matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" theEclipse","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the darkness suffix -------
# deleteVariable( tmp_random_suffix_darkness );
scoreboard objectives remove _tmp.rndSuf.drk