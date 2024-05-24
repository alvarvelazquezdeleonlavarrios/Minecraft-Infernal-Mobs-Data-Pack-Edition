#******************* Spawning --> Settings --> Names --> Prefixes --> Sprint *******************


#------- Creates a temporary variable for the sprint prefix -------
# int tmp_random_prefix_sprint = new int();
# mob.AddVariable( tmp_random_prefix_sprint, -1 );
scoreboard objectives add _tmp.rndPre.sprt dummy
scoreboard players set @s _tmp.rndPre.sprt -1

#------- Defines the random prefix for the sprint skill -------
# mob.tmp_random_prefix_sprint = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_sprint"]}
execute store result score @s _tmp.rndPre.sprt run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sprint, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.sprt %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sprint, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_sprint):
#   case 0:     sign.text2 = "sprinting " + sign.text2;   break;
#   case 1:     sign.text2 = "swift " + sign.text2;     break;
#   case 2:     sign.text2 = "charging " + sign.text2;    break;
execute if score @s _tmp.rndPre.sprt matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"sprinting ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.sprt matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"swift ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.sprt matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"charging ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the sprint prefix -------
# deleteVariable( tmp_random_prefix_sprint );
scoreboard objectives remove _tmp.rndPre.sprt
