#******************* Spawning --> Settings --> Names --> Suffixes --> Unyielding *******************


#------- Creates a temporary variable for the unyielding suffix -------
# int tmp_random_suffix_unyielding = new int();
# mob.AddVariable( tmp_random_suffix_unyielding, -1 );
scoreboard objectives add _tmp.rndSuf.uyd dummy
scoreboard players set @s _tmp.rndSuf.uyd -1

#------- Defines the random suffix for the unyielding skill -------
# mob.tmp_random_suffix_unyielding = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_unyielding"]}
execute store result score @s _tmp.rndSuf.uyd run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_unyielding, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.uyd %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_unyielding, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_unyielding):
#   case 0:     sign.text2 = " ofHeavyMetal";   break;
#   case 1:     sign.text2 = " theAnvilOne";     break;
#   case 2:     sign.text2 = " lordOfTanks";     break;
execute if score @s _tmp.rndSuf.uyd matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofHeavyMetal","interpret":true}'
execute if score @s _tmp.rndSuf.uyd matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theAnvilOne","interpret":true}'
execute if score @s _tmp.rndSuf.uyd matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" lordOfTanks","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the unyielding suffix -------
# deleteVariable( tmp_random_suffix_unyielding );
scoreboard objectives remove _tmp.rndSuf.uyd
