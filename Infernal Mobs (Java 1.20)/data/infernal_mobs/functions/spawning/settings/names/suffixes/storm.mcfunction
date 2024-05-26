#******************* Spawning --> Settings --> Names --> Suffixes --> Storm *******************


#------- Creates a temporary variable for the storm suffix -------
# int tmp_random_suffix_storm = new int();
# mob.AddVariable( tmp_random_suffix_storm, -1 );
scoreboard objectives add _tmp.random_suffix.storm dummy
scoreboard players set @s _tmp.random_suffix.storm -1

#------- Defines the random suffix for the storm skill -------
# mob.tmp_random_suffix_storm = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_storm"]}
execute store result score @s _tmp.random_suffix.storm run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_storm, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.storm %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_storm, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_storm):
#   case 0:     sign.text2 = " ofLightning";   break;
#   case 1:     sign.text2 = " theRaiden";     break;
execute if score @s _tmp.random_suffix.storm matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofLightning","interpret":true}'
execute if score @s _tmp.random_suffix.storm matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theRaiden","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the storm suffix -------
# deleteVariable( tmp_random_suffix_storm );
scoreboard objectives remove _tmp.random_suffix.storm
