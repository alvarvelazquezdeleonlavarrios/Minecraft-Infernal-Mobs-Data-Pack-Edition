#******************* Spawning --> Settings --> Names --> Suffixes --> Exhaust *******************


#------- Creates a temporary variable for the exhaust suffix -------
# int tmp_random_suffix_exhaust = new int();
# mob.AddVariable( tmp_random_suffix_exhaust, -1 );
scoreboard objectives add _tmp.random_suffix.exhaust dummy
scoreboard players set @s _tmp.random_suffix.exhaust -1

#------- Defines the random suffix for the exhaust skill -------
# mob.tmp_random_suffix_exhaust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_exhaust"]}
execute store result score @s _tmp.random_suffix.exhaust run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_exhaust, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.exhaust %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_exhaust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_exhaust):
#   case 0:     sign.text2 = " ofFatigue";   break;
#   case 1:     sign.text2 = " theDrainer";     break;
execute if score @s _tmp.random_suffix.exhaust matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" ofFatigue"}'
execute if score @s _tmp.random_suffix.exhaust matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":" theDrainer"}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the exhaust suffix -------
# deleteVariable( tmp_random_suffix_exhaust );
scoreboard objectives remove _tmp.random_suffix.exhaust
