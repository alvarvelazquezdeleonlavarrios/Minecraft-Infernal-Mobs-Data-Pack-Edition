#******************* Spawning --> Settings --> Names --> Suffixes --> Sticky *******************


#------- Creates a temporary variable for the sticky suffix -------
# int tmp_random_suffix_sticky = new int();
# mob.AddVariable( tmp_random_suffix_sticky, -1 );
scoreboard objectives add _tmp.random_suffix.sticky dummy
scoreboard players set @s _tmp.random_suffix.sticky -1

#------- Defines the random suffix for the sticky skill -------
# mob.tmp_random_suffix_sticky = Random.Range(0,3);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_sticky"]}
execute store result score @s _tmp.random_suffix.sticky run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sticky, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.sticky %= $Constants _const.4
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sticky, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_sticky):
#   case 0:     sign.text2 = " ofSnagging";   break;
#   case 1:     sign.text2 = " theQuickFingered";     break;
#   case 2:     sign.text2 = " ofPettyTheft";    break;
#   case 3:     sign.text2 = " yoink";    break;
execute if score @s _tmp.random_suffix.sticky matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofSnagging","interpret":true}'
execute if score @s _tmp.random_suffix.sticky matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theQuickFingered","interpret":true}'
execute if score @s _tmp.random_suffix.sticky matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofPettyTheft","interpret":true}'
execute if score @s _tmp.random_suffix.sticky matches 3 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" yoink","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the sticky suffix -------
# deleteVariable( tmp_random_suffix_sticky );
scoreboard objectives remove _tmp.random_suffix.sticky
