#******************* Spawning --> Settings --> Names --> Suffixes --> Choke *******************


#------- Creates a temporary variable for the choke suffix -------
# int tmp_random_suffix_choke = new int();
# mob.AddVariable( tmp_random_suffix_choke, -1 );
scoreboard objectives add _tmp.random_suffix.choke dummy
scoreboard players set @s _tmp.random_suffix.choke -1

#------- Defines the random suffix for the choke skill -------
# mob.tmp_random_suffix_choke = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_choke"]}
execute store result score @s _tmp.random_suffix.choke run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_choke, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.choke %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_choke, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_choke):
#   case 0:     sign.text2 = " ofBreathlessness";   break;
#   case 1:     sign.text2 = " theAnaerobic";     break;
#   case 2:     sign.text2 = " ofDeprivation";    break;
execute if score @s _tmp.random_suffix.choke matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofBreathlessness","interpret":true}'
execute if score @s _tmp.random_suffix.choke matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theAnaerobic","interpret":true}'
execute if score @s _tmp.random_suffix.choke matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofDeprivation","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the choke suffix -------
# deleteVariable( tmp_random_suffix_choke );
scoreboard objectives remove _tmp.random_suffix.choke
