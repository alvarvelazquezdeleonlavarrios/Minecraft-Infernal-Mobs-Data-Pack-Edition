#******************* Spawning --> Settings --> Names --> Suffixes --> Cloacking *******************


#------- Creates a temporary variable for the cloacking suffix -------
# int tmp_random_suffix_cloacking = new int();
# mob.AddVariable( tmp_random_suffix_cloacking, -1 );
scoreboard objectives add _tmp.random_suffix.cloacking dummy
scoreboard players set @s _tmp.random_suffix.cloacking -1

#------- Defines the random suffix for the cloacking skill -------
# mob.tmp_random_suffix_cloacking = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_cloacking"]}
execute store result score @s _tmp.random_suffix.cloacking run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_cloacking, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.cloacking %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_cloacking, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_cloacking):
#   case 0:     sign.text2 = " ofStalking";   break;
#   case 1:     sign.text2 = " theUnseen";     break;
#   case 2:     sign.text2 = " thePredator";    break;
execute if score @s _tmp.random_suffix.cloacking matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofStalking","interpret":true}'
execute if score @s _tmp.random_suffix.cloacking matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theUnseen","interpret":true}'
execute if score @s _tmp.random_suffix.cloacking matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" thePredator","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the cloacking suffix -------
# deleteVariable( tmp_random_suffix_cloacking );
scoreboard objectives remove _tmp.random_suffix.cloacking
