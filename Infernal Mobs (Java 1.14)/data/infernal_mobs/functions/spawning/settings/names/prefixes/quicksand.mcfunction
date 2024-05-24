#******************* Spawning --> Settings --> Names --> Prefixes --> Quicksand *******************


#------- Creates a temporary variable for the quicksand prefix -------
# int tmp_random_prefix_quicksand = new int();
# mob.AddVariable( tmp_random_prefix_quicksand, -1 );
scoreboard objectives add _tmp.rndPre.qcsd dummy
scoreboard players set @s _tmp.rndPre.qcsd -1

#------- Defines the random prefix for the quicksand skill -------
# mob.tmp_random_prefix_quicksand = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_quicksand"]}
execute store result score @s _tmp.rndPre.qcsd run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_quicksand, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.qcsd %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_quicksand, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_quicksand):
#   case 0:     sign.text2 = "slowing " + sign.text2;   break;
#   case 1:     sign.text2 = "Quicksand " + sign.text2;     break;
execute if score @s _tmp.rndPre.qcsd matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"slowing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.qcsd matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"Quicksand ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the quicksand prefix -------
# deleteVariable( tmp_random_prefix_quicksand );
scoreboard objectives remove _tmp.rndPre.qcsd
