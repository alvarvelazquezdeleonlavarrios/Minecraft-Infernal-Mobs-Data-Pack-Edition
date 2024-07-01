#******************* Spawning --> Settings --> Names --> Suffixes --> Fiery *******************


#------- Creates a temporary variable for the fiery suffix -------
# int tmp_random_suffix_fiery = new int();
# mob.AddVariable( tmp_random_suffix_fiery, -1 );
scoreboard objectives add _tmp.random_suffix.fiery dummy
scoreboard players set @s _tmp.random_suffix.fiery -1

#------- Defines the random suffix for the fiery skill -------
# mob.tmp_random_suffix_fiery = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_fiery"]}
execute store result score @s _tmp.random_suffix.fiery run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_fiery, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.fiery %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_fiery, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_fiery):
#   case 0:     sign.text2 = " ofConflagration";   break;
#   case 1:     sign.text2 = " thePhoenix";     break;
#   case 2:     sign.text2 = " ofCrispyness";    break;
execute if score @s _tmp.random_suffix.fiery matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofConflagration"}'
execute if score @s _tmp.random_suffix.fiery matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" thePhoenix"}'
execute if score @s _tmp.random_suffix.fiery matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofCrispyness"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the fiery suffix -------
# deleteVariable( tmp_random_suffix_fiery );
scoreboard objectives remove _tmp.random_suffix.fiery
