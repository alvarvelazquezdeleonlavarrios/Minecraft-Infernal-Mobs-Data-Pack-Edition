#******************* Spawning --> Settings --> Names --> Suffixes --> Gravity *******************


#------- Creates a temporary variable for the gravity suffix -------
# int tmp_random_suffix_gravity = new int();
# mob.AddVariable( tmp_random_suffix_gravity, -1 );
scoreboard objectives add _tmp.random_suffix.gravity dummy
scoreboard players set @s _tmp.random_suffix.gravity -1

#------- Defines the random suffix for the gravity skill -------
# mob.tmp_random_suffix_gravity = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_gravity"]}
execute store result score @s _tmp.random_suffix.gravity run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_gravity, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.gravity %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_gravity, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_gravity):
#   case 0:     sign.text2 = " ofRepulsion";   break;
#   case 1:     sign.text2 = " theFlipper";     break;
execute if score @s _tmp.random_suffix.gravity matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofRepulsion"}'
execute if score @s _tmp.random_suffix.gravity matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theFlipper"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the gravity suffix -------
# deleteVariable( tmp_random_suffix_gravity );
scoreboard objectives remove _tmp.random_suffix.gravity
