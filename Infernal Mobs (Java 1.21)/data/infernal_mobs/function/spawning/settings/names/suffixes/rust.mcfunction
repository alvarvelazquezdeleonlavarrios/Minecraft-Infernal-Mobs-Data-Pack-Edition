#******************* Spawning --> Settings --> Names --> Suffixes --> Rust *******************


#------- Creates a temporary variable for the rust suffix -------
# int tmp_random_suffix_rust = new int();
# mob.AddVariable( tmp_random_suffix_rust, -1 );
scoreboard objectives add _tmp.random_suffix.rust dummy
scoreboard players set @s _tmp.random_suffix.rust -1

#------- Defines the random suffix for the rust skill -------
# mob.tmp_random_suffix_rust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_rust"]}
execute store result score @s _tmp.random_suffix.rust run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_rust, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.rust %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_rust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_rust):
#   case 0:     sign.text2 = " ofDecay";   break;
#   case 1:     sign.text2 = " theEquipmentHaunter";     break;
execute if score @s _tmp.random_suffix.rust matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofDecay"}'
execute if score @s _tmp.random_suffix.rust matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theEquipmentHaunter"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the rust suffix -------
# deleteVariable( tmp_random_suffix_rust );
scoreboard objectives remove _tmp.random_suffix.rust
