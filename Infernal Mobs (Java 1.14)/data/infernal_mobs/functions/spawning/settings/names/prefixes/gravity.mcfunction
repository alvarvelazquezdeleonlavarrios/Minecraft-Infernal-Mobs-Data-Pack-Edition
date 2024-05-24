#******************* Spawning --> Settings --> Names --> Prefixes --> Gravity *******************


#------- Creates a temporary variable for the gravity prefix -------
# int tmp_random_prefix_gravity = new int();
# mob.AddVariable( tmp_random_prefix_gravity, -1 );
scoreboard objectives add _tmp.rndPre.grvt dummy
scoreboard players set @s _tmp.rndPre.grvt -1

#------- Defines the random prefix for the gravity skill -------
# mob.tmp_random_prefix_gravity = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_gravity"]}
execute store result score @s _tmp.rndPre.grvt run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_gravity, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.grvt %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_gravity, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_gravity):
#   case 0:     sign.text2 = "repulsing " + sign.text2;   break;
#   case 1:     sign.text2 = "sproing " + sign.text2;     break;
execute if score @s _tmp.rndPre.grvt matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"repulsing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.grvt matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"sproing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the gravity prefix -------
# deleteVariable( tmp_random_prefix_gravity );
scoreboard objectives remove _tmp.rndPre.grvt
