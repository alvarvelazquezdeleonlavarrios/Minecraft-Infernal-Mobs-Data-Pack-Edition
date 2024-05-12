#******************* Spawning --> Settings --> Names --> Suffixes --> 1UP *******************


#------- Creates a temporary variable for the 1UP suffix -------
# int tmp_random_suffix_1up = new int();
# mob.AddVariable( tmp_random_suffix_1up, -1 );
scoreboard objectives add _tmp.random_suffix.1up dummy
scoreboard players set @s _tmp.random_suffix.1up -1

#------- Defines the random suffix for the 1UP skill -------
# mob.tmp_random_suffix_1up = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_1up"]}
execute store result score @s _tmp.random_suffix.1up run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_1up, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.1up %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_1up, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_1up):
#   case 0:     sign.text2 = " ofRecurrence";   break;
#   case 1:     sign.text2 = " theUndying";     break;
#   case 2:     sign.text2 = " oftwinLives";    break;
execute if score @s _tmp.random_suffix.1up matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofRecurrence","interpret":true}'
execute if score @s _tmp.random_suffix.1up matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theUndying","interpret":true}'
execute if score @s _tmp.random_suffix.1up matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" oftwinLives","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the 1UP suffix -------
# deleteVariable( tmp_random_suffix_1up );
scoreboard objectives remove _tmp.random_suffix.1up
