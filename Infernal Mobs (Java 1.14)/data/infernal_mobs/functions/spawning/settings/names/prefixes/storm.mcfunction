#******************* Spawning --> Settings --> Names --> Prefixes --> Storm *******************


#------- Creates a temporary variable for the storm prefix -------
# int tmp_random_prefix_storm = new int();
# mob.AddVariable( tmp_random_prefix_storm, -1 );
scoreboard objectives add _tmp.rndPre.stm dummy
scoreboard players set @s _tmp.rndPre.stm -1

#------- Defines the random prefix for the storm skill -------
# mob.tmp_random_prefix_storm = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_storm"]}
execute store result score @s _tmp.rndPre.stm run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_storm, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.stm %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_storm, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_storm):
#   case 0:     sign.text2 = "striking " + sign.text2;   break;
#   case 1:     sign.text2 = "thundering " + sign.text2;     break;
#   case 2:     sign.text2 = "electrified " + sign.text2;     break;
execute if score @s _tmp.rndPre.stm matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"striking ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.stm matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"thundering ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.stm matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"electrified ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the storm prefix -------
# deleteVariable( tmp_random_prefix_storm );
scoreboard objectives remove _tmp.rndPre.stm
