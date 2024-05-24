#******************* Spawning --> Settings --> Names --> Prefixes --> Regen *******************


#------- Creates a temporary variable for the regen prefix -------
# int tmp_random_prefix_regen = new int();
# mob.AddVariable( tmp_random_prefix_regen, -1 );
scoreboard objectives add _tmp.rndPre.rgn dummy
scoreboard players set @s _tmp.rndPre.rgn -1

#------- Defines the random prefix for the regen skill -------
# mob.tmp_random_prefix_regen = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_regen"]}
execute store result score @s _tmp.rndPre.rgn run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_regen, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.rgn %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_regen, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_regen):
#   case 0:     sign.text2 = "regenerating " + sign.text2;   break;
#   case 1:     sign.text2 = "healing " + sign.text2;     break;
#   case 2:     sign.text2 = "nighunkillable " + sign.text2;    break;
execute if score @s _tmp.rndPre.rgn matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"regenerating ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.rgn matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"healing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.rgn matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"nighunkillable ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the regen prefix -------
# deleteVariable( tmp_random_prefix_regen );
scoreboard objectives remove _tmp.rndPre.rgn
