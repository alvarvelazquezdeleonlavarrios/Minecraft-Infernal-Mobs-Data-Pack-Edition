#******************* Spawning --> Settings --> Names --> Suffixes --> Ninja *******************


#------- Creates a temporary variable for the ninja suffix -------
# int tmp_random_suffix_ninja = new int();
# mob.AddVariable( tmp_random_suffix_ninja, -1 );
scoreboard objectives add _tmp.rndSuf.nij dummy
scoreboard players set @s _tmp.rndSuf.nij -1

#------- Defines the random suffix for the ninja skill -------
# mob.tmp_random_suffix_ninja = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_ninja"]}
execute store result score @s _tmp.rndSuf.nij run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ninja, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.nij %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ninja, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_ninja):
#   case 0:     sign.text2 = " theZenMaster";   break;
#   case 1:     sign.text2 = " ofEquilibrium";     break;
#   case 2:     sign.text2 = " ofInnerPeace";    break;
execute if score @s _tmp.rndSuf.nij matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" theZenMaster","interpret":true}'
execute if score @s _tmp.rndSuf.nij matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" ofEquilibrium","interpret":true}'
execute if score @s _tmp.rndSuf.nij matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofInnerPeace","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the ninja suffix -------
# deleteVariable( tmp_random_suffix_ninja );
scoreboard objectives remove _tmp.rndSuf.nij
