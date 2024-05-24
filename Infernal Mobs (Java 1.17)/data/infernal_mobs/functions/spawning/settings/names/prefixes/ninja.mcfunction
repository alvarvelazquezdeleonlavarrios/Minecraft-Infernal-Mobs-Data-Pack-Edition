#******************* Spawning --> Settings --> Names --> Prefixes --> Ninja *******************


#------- Creates a temporary variable for the ninja prefix -------
# int tmp_random_prefix_ninja = new int();
# mob.AddVariable( tmp_random_prefix_ninja, -1 );
scoreboard objectives add _tmp.rndPre.nij dummy
scoreboard players set @s _tmp.rndPre.nij -1

#------- Defines the random prefix for the ninja skill -------
# mob.tmp_random_prefix_ninja = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_ninja"]}
execute store result score @s _tmp.rndPre.nij run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ninja, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.nij %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ninja, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_ninja):
#   case 0:     sign.text2 = "totallyzen " + sign.text2;   break;
#   case 1:     sign.text2 = "innerlypeaceful " + sign.text2;     break;
#   case 2:     sign.text2 = "Ronin " + sign.text2;    break;
execute if score @s _tmp.rndPre.nij matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"totallyzen ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.nij matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"innerlypeaceful ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.nij matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"Ronin ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the ninja prefix -------
# deleteVariable( tmp_random_prefix_ninja );
scoreboard objectives remove _tmp.rndPre.nij
