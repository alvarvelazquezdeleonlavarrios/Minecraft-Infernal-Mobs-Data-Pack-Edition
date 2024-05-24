#******************* Spawning --> Settings --> Names --> Prefixes --> 1UP *******************


#------- Creates a temporary variable for the 1UP prefix -------
# int tmp_random_prefix_1up = new int();
# mob.AddVariable( tmp_random_prefix_1up, -1 );
scoreboard objectives add _tmp.rndPre.1up dummy
scoreboard players set @s _tmp.rndPre.1up -1

#------- Defines the random prefix for the 1UP skill -------
# mob.tmp_random_prefix_1up = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_1up"]}
execute store result score @s _tmp.rndPre.1up run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_1up, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.1up %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_1up, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_1up):
#   case 0:     sign.text2 = "recurring " + sign.text2;   break;
#   case 1:     sign.text2 = "undying " + sign.text2;     break;
#   case 2:     sign.text2 = "twinlived " + sign.text2;    break;
execute if score @s _tmp.rndPre.1up matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"recurring ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.1up matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"undying ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.1up matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"twinlived ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the 1UP prefix -------
# deleteVariable( tmp_random_prefix_1up );
scoreboard objectives remove _tmp.rndPre.1up
