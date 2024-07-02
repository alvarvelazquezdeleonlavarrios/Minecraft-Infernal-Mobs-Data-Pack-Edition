#******************* Spawning --> Settings --> Names --> Suffixes --> Unyielding *******************


#------- Creates a temporary variable for the unyielding suffix -------
# int tmp_random_suffix_unyielding = new int();
# mob.AddVariable( tmp_random_suffix_unyielding, -1 );
scoreboard objectives add _tmp.random_suffix.unyielding dummy
scoreboard players set @s _tmp.random_suffix.unyielding -1

#------- Defines the random suffix for the unyielding skill -------
# mob.tmp_random_suffix_unyielding = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_unyielding"]}
execute store result score @s _tmp.random_suffix.unyielding run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_unyielding, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.unyielding %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_unyielding, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_unyielding):
#   case 0:     sign.text2 = " ofHeavyMetal";   break;
#   case 1:     sign.text2 = " theAnvilOne";     break;
#   case 2:     sign.text2 = " lordOfTanks";     break;
execute if score @s _tmp.random_suffix.unyielding matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofHeavyMetal"}'
execute if score @s _tmp.random_suffix.unyielding matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theAnvilOne"}'
execute if score @s _tmp.random_suffix.unyielding matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" lordOfTanks"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the unyielding suffix -------
# deleteVariable( tmp_random_suffix_unyielding );
scoreboard objectives remove _tmp.random_suffix.unyielding
