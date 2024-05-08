#******************* Spawning --> Settings --> Names --> Prefixes --> Berserk *******************


#------- Creates a temporary variable for the berserk prefix -------
# int tmp_random_prefix_berserk = new int();
# mob.AddVariable( tmp_random_prefix_berserk, -1 );
scoreboard objectives add _tmp.random_prefix.berserk dummy
scoreboard players set @s _tmp.random_prefix.berserk -1

#------- Defines the random prefix for the berserk skill -------
# mob.tmp_random_prefix_berserk = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_berserk"]}
execute store result score @s _tmp.random_prefix.berserk run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_berserk, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.berserk %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_berserk, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_berserk):
#   case 0:     sign.text2 = "reckless " + sign.text2;   break;
#   case 1:     sign.text2 = "raging " + sign.text2;     break;
#   case 2:     sign.text2 = "smashing " + sign.text2;    break;
execute if score @s _tmp.random_prefix.berserk matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"reckless ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.berserk matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"raging ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.berserk matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"smashing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the berserk prefix -------
# deleteVariable( tmp_random_prefix_berserk );
scoreboard objectives remove _tmp.random_prefix.berserk
