#******************* Spawning --> Settings --> Names --> Suffixes --> Ender *******************


#------- Creates a temporary variable for the ender suffix -------
# int tmp_random_suffix_ender = new int();
# mob.AddVariable( tmp_random_suffix_ender, -1 );
scoreboard objectives add _tmp.random_suffix.ender dummy
scoreboard players set @s _tmp.random_suffix.ender -1

#------- Defines the random suffix for the ender skill -------
# mob.tmp_random_suffix_ender = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_ender"]}
execute store result score @s _tmp.random_suffix.ender run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ender, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.ender %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_ender, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_ender):
#   case 0:     sign.text2 = " theEnderborn";   break;
#   case 1:     sign.text2 = " theTrickster";     break;
execute if score @s _tmp.random_suffix.ender matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theEnderborn"}'
execute if score @s _tmp.random_suffix.ender matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theTrickster"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the ender suffix -------
# deleteVariable( tmp_random_suffix_ender );
scoreboard objectives remove _tmp.random_suffix.ender
