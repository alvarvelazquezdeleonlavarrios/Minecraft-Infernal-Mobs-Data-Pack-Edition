#******************* Spawning --> Settings --> Names --> Suffixes --> Ender *******************


#------- Creates a temporary variable for the ender suffix -------
# int tmp_random_suffix_ender = new int();
# mob.AddVariable( tmp_random_suffix_ender, -1 );
scoreboard objectives add _tmp.rndSuf.end dummy
scoreboard players set @s _tmp.rndSuf.end -1

#------- Defines the random suffix for the ender skill -------
# mob.tmp_random_suffix_ender = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_ender"]}
execute store result score @s _tmp.rndSuf.end run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ender, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.end %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ender, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_ender):
#   case 0:     sign.text2 = " theEnderborn";   break;
#   case 1:     sign.text2 = " theTrickster";     break;
execute if score @s _tmp.rndSuf.end matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" theEnderborn","interpret":true}'
execute if score @s _tmp.rndSuf.end matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theTrickster","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the ender suffix -------
# deleteVariable( tmp_random_suffix_ender );
scoreboard objectives remove _tmp.rndSuf.end
