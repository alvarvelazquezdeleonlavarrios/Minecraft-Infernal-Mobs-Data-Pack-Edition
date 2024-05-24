#******************* Spawning --> Settings --> Names --> Prefixes --> Unyielding *******************


#------- Creates a temporary variable for the unyielding prefix -------
# int tmp_random_prefix_unyielding = new int();
# mob.AddVariable( tmp_random_prefix_unyielding, -1 );
scoreboard objectives add _tmp.rndPre.uyd dummy
scoreboard players set @s _tmp.rndPre.uyd -1

#------- Defines the random prefix for the unyielding skill -------
# mob.tmp_random_prefix_unyielding = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_unyielding"]}
execute store result score @s _tmp.rndPre.uyd run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_unyielding, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.uyd %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_unyielding, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_unyielding):
#   case 0:     sign.text2 = "heavy " + sign.text2;   break;
#   case 1:     sign.text2 = "obese " + sign.text2;     break;
#   case 1:     sign.text2 = "tanky " + sign.text2;     break;
execute if score @s _tmp.rndPre.uyd matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"heavy ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.uyd matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"obese ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.uyd matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"tanky ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the unyielding prefix -------
# deleteVariable( tmp_random_prefix_unyielding );
scoreboard objectives remove _tmp.rndPre.uyd
