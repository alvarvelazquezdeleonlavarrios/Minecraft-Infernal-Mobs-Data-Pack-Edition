#******************* Spawning --> Settings --> Names --> Suffixes --> Blastoff *******************


#------- Creates a temporary variable for the blastoff suffix -------
# int tmp_random_suffix_blastoff = new int();
# mob.AddVariable( tmp_random_suffix_blastoff, -1 );
scoreboard objectives add _tmp.random_suffix.blastoff dummy
scoreboard players set @s _tmp.random_suffix.blastoff -1

#------- Defines the random suffix for the blastoff skill -------
# mob.tmp_random_suffix_blastoff = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_blastoff"]}
execute store result score @s _tmp.random_suffix.blastoff run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_blastoff, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.blastoff %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_blastoff, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_blastoff):
#   case 0:     sign.text2 = " ofMissionControl";   break;
#   case 1:     sign.text2 = " theNASA";     break;
#   case 2:     sign.text2 = " ofWEE";    break;
execute if score @s _tmp.random_suffix.blastoff matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofMissionControl","interpret":true}'
execute if score @s _tmp.random_suffix.blastoff matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theNASA","interpret":true}'
execute if score @s _tmp.random_suffix.blastoff matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofWEE","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the blastoff suffix -------
# deleteVariable( tmp_random_suffix_blastoff );
scoreboard objectives remove _tmp.random_suffix.blastoff
