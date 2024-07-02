#******************* Spawning --> Settings --> Names --> Suffixes --> Quicksand *******************


#------- Creates a temporary variable for the quicksand suffix -------
# int tmp_random_suffix_quicksand = new int();
# mob.AddVariable( tmp_random_suffix_quicksand, -1 );
scoreboard objectives add _tmp.random_suffix.quicksand dummy
scoreboard players set @s _tmp.random_suffix.quicksand -1

#------- Defines the random suffix for the quicksand skill -------
# mob.tmp_random_suffix_quicksand = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_quicksand"]}
execute store result score @s _tmp.random_suffix.quicksand run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_quicksand, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.quicksand %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_quicksand, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_quicksand):
#   case 0:     sign.text2 = " ofYouCantRun";   break;
#   case 1:     sign.text2 = " theSlowingB";     break;
execute if score @s _tmp.random_suffix.quicksand matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofYouCantRun"}'
execute if score @s _tmp.random_suffix.quicksand matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theSlowingB"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the quicksand suffix -------
# deleteVariable( tmp_random_suffix_quicksand );
scoreboard objectives remove _tmp.random_suffix.quicksand