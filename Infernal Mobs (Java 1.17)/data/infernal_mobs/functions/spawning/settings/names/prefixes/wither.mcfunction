#******************* Spawning --> Settings --> Names --> Prefixes --> Wither *******************


#------- Creates a temporary variable for the wither prefix -------
# int tmp_random_prefix_wither = new int();
# mob.AddVariable( tmp_random_prefix_wither, -1 );
scoreboard objectives add _tmp.rndPre.wtr dummy
scoreboard players set @s _tmp.rndPre.wtr -1

#------- Defines the random prefix for the wither skill -------
# mob.tmp_random_prefix_wither = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_wither"]}
execute store result score @s _tmp.rndPre.wtr run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_wither, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.wtr %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_wither, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_wither):
#   case 0:     sign.text2 = "withering " + sign.text2;   break;
#   case 1:     sign.text2 = "destroyer " + sign.text2;     break;
execute if score @s _tmp.rndPre.wtr matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"withering ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.wtr matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"destroyer ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the wither prefix -------
# deleteVariable( tmp_random_prefix_wither );
scoreboard objectives remove _tmp.rndPre.wtr
