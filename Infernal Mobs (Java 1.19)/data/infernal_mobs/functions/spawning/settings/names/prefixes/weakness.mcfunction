#******************* Spawning --> Settings --> Names --> Prefixes --> Weakness *******************


#------- Creates a temporary variable for the weakness prefix -------
# int tmp_random_prefix_weakness = new int();
# mob.AddVariable( tmp_random_prefix_weakness, -1 );
scoreboard objectives add _tmp.random_prefix.weakness dummy
scoreboard players set @s _tmp.random_prefix.weakness -1

#------- Defines the random prefix for the weakness skill -------
# mob.tmp_random_prefix_weakness = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_weakness"]}
execute store result score @s _tmp.random_prefix.weakness run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_weakness, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.weakness %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_weakness, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_weakness):
#   case 0:     sign.text2 = "apathetic " + sign.text2;   break;
#   case 1:     sign.text2 = "deceiving " + sign.text2;     break;
execute if score @s _tmp.random_prefix.weakness matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"apathetic ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.weakness matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"deceiving ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the weakness prefix -------
# deleteVariable( tmp_random_prefix_weakness );
scoreboard objectives remove _tmp.random_prefix.weakness