#******************* Spawning --> Settings --> Names --> Suffixes --> Rust *******************


#------- Creates a temporary variable for the rust suffix -------
# int tmp_random_suffix_rust = new int();
# mob.AddVariable( tmp_random_suffix_rust, -1 );
scoreboard objectives add _tmp.rndSuf.rust dummy
scoreboard players set @s _tmp.rndSuf.rust -1

#------- Defines the random suffix for the rust skill -------
# mob.tmp_random_suffix_rust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_rust"]}
execute store result score @s _tmp.rndSuf.rust run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_rust, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.rust %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_rust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_rust):
#   case 0:     sign.text2 = " ofDecay";   break;
#   case 1:     sign.text2 = " theEquipmentHaunter";     break;
execute if score @s _tmp.rndSuf.rust matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofDecay","interpret":true}'
execute if score @s _tmp.rndSuf.rust matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theEquipmentHaunter","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the rust suffix -------
# deleteVariable( tmp_random_suffix_rust );
scoreboard objectives remove _tmp.rndSuf.rust
