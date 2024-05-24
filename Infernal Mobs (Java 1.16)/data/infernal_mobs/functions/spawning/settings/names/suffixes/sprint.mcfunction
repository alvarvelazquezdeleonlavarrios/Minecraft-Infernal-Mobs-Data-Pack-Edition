#******************* Spawning --> Settings --> Names --> Suffixes --> Sprint *******************


#------- Creates a temporary variable for the sprint suffix -------
# int tmp_random_suffix_sprint = new int();
# mob.AddVariable( tmp_random_suffix_sprint, -1 );
scoreboard objectives add _tmp.rndSuf.sprt dummy
scoreboard players set @s _tmp.rndSuf.sprt -1

#------- Defines the random suffix for the sprint skill -------
# mob.tmp_random_suffix_sprint = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_sprint"]}
execute store result score @s _tmp.rndSuf.sprt run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sprint, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.sprt %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sprint, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_sprint):
#   case 0:     sign.text2 = " ofBolting";   break;
#   case 1:     sign.text2 = " theSwiftOne";     break;
#   case 2:     sign.text2 = " ofbeinginyourFace";    break;
execute if score @s _tmp.rndSuf.sprt matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofBolting","interpret":true}'
execute if score @s _tmp.rndSuf.sprt matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theSwiftOne","interpret":true}'
execute if score @s _tmp.rndSuf.sprt matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofbeinginyourFace","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the sprint suffix -------
# deleteVariable( tmp_random_suffix_sprint );
scoreboard objectives remove _tmp.rndSuf.sprt
