#******************* Spawning --> Settings --> Names --> Suffixes --> Exhaust *******************


#------- Creates a temporary variable for the exhaust suffix -------
# int tmp_random_suffix_exhaust = new int();
# mob.AddVariable( tmp_random_suffix_exhaust, -1 );
scoreboard objectives add _tmp.rndSuf.exh dummy
scoreboard players set @s _tmp.rndSuf.exh -1

#------- Defines the random suffix for the exhaust skill -------
# mob.tmp_random_suffix_exhaust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_exhaust"]}
execute store result score @s _tmp.rndSuf.exh run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_exhaust, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.exh %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_exhaust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_exhaust):
#   case 0:     sign.text2 = " ofFatigue";   break;
#   case 1:     sign.text2 = " theDrainer";     break;
execute if score @s _tmp.rndSuf.exh matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofFatigue","interpret":true}'
execute if score @s _tmp.rndSuf.exh matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theDrainer","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the exhaust suffix -------
# deleteVariable( tmp_random_suffix_exhaust );
scoreboard objectives remove _tmp.rndSuf.exh
