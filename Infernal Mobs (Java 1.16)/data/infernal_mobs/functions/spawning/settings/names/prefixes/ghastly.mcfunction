#******************* Spawning --> Settings --> Names --> Prefixes --> Ghastly *******************


#------- Creates a temporary variable for the ghastly prefix -------
# int tmp_random_prefix_ghastly = new int();
# mob.AddVariable( tmp_random_prefix_ghastly, -1 );
scoreboard objectives add _tmp.rndPre.ghtl dummy
scoreboard players set @s _tmp.rndPre.ghtl -1

#------- Defines the random prefix for the ghastly skill -------
# mob.tmp_random_prefix_ghastly = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_ghastly"]}
execute store result score @s _tmp.rndPre.ghtl run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ghastly, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.ghtl %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ghastly, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_ghastly):
#   case 0:     sign.text2 = "bombing " + sign.text2;   break;
#   case 1:     sign.text2 = "fireballsy " + sign.text2;     break;
execute if score @s _tmp.rndPre.ghtl matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"bombing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.ghtl matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"fireballsy ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the ghastly prefix -------
# deleteVariable( tmp_random_prefix_ghastly );
scoreboard objectives remove _tmp.rndPre.ghtl
