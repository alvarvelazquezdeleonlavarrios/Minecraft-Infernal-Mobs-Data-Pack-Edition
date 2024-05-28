#******************* Spawning --> Settings --> Names --> Suffixes --> Poisonous *******************


#------- Creates a temporary variable for the poisonous suffix -------
# int tmp_random_suffix_poisonous = new int();
# mob.AddVariable( tmp_random_suffix_poisonous, -1 );
scoreboard objectives add _tmp.random_suffix.poisonous dummy
scoreboard players set @s _tmp.random_suffix.poisonous -1

#------- Defines the random suffix for the poisonous skill -------
# mob.tmp_random_suffix_poisonous = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_poisonous"]}
execute store result score @s _tmp.random_suffix.poisonous run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_poisonous, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.poisonous %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_poisonous, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_poisonous):
#   case 0:     sign.text2 = " ofVenom";   break;
#   case 1:     sign.text2 = " thedeadlyChalice";     break;
execute if score @s _tmp.random_suffix.poisonous matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofVenom","interpret":true}'
execute if score @s _tmp.random_suffix.poisonous matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" thedeadlyChalice","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the poisonous suffix -------
# deleteVariable( tmp_random_suffix_poisonous );
scoreboard objectives remove _tmp.random_suffix.poisonous