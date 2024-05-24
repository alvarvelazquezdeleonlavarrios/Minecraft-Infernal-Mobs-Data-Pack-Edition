#******************* Spawning --> Settings --> Names --> Prefixes --> Darkness *******************


#------- Creates a temporary variable for the darkness prefix -------
# int tmp_random_prefix_darkness = new int();
# mob.AddVariable( tmp_random_prefix_darkness, -1 );
scoreboard objectives add _tmp.rndPre.drk dummy
scoreboard players set @s _tmp.rndPre.drk -1

#------- Defines the random prefix for the darkness skill -------
# mob.tmp_random_prefix_darkness = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_darkness"]}
execute store result score @s _tmp.rndPre.drk run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_darkness, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.drk %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_darkness, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_darkness):
#   case 0:     sign.text2 = "dark " + sign.text2;   break;
#   case 1:     sign.text2 = "shadowkin " + sign.text2;     break;
#   case 2:     sign.text2 = "eclipsed " + sign.text2;    break;
execute if score @s _tmp.rndPre.drk matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"dark ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.drk matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"shadowkin ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.drk matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"eclipsed ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the darkness prefix -------
# deleteVariable( tmp_random_prefix_darkness );
scoreboard objectives remove _tmp.rndPre.drk
