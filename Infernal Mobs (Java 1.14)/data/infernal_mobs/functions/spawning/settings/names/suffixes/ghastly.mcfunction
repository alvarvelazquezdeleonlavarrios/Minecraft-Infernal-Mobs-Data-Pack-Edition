#******************* Spawning --> Settings --> Names --> Suffixes --> Ghastly *******************


#------- Creates a temporary variable for the ghastly suffix -------
# int tmp_random_suffix_ghastly = new int();
# mob.AddVariable( tmp_random_suffix_ghastly, -1 );
scoreboard objectives add _tmp.rndSuf.ghtl dummy
scoreboard players set @s _tmp.rndSuf.ghtl -1

#------- Defines the random suffix for the ghastly skill -------
# mob.tmp_random_suffix_ghastly = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_ghastly"]}
execute store result score @s _tmp.rndSuf.ghtl run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ghastly, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.ghtl %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ghastly, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_ghastly):
#   case 0:     sign.text2 = " OMFGFIREBALLS";   break;
#   case 1:     sign.text2 = " theBomber";     break;
#   case 2:     sign.text2 = " ofBallsofFire";    break;
execute if score @s _tmp.rndSuf.ghtl matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" OMFGFIREBALLS","interpret":true}'
execute if score @s _tmp.rndSuf.ghtl matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theBomber","interpret":true}'
execute if score @s _tmp.rndSuf.ghtl matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofBallsofFire","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the ghastly suffix -------
# deleteVariable( tmp_random_suffix_ghastly );
scoreboard objectives remove _tmp.rndSuf.ghtl
