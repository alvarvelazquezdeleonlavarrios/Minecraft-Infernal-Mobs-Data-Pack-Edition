#******************* Spawning --> Settings --> Names --> Prefixes --> Lifesteal *******************


#------- Creates a temporary variable for the lifesteal prefix -------
# int tmp_random_prefix_lifesteal = new int();
# mob.AddVariable( tmp_random_prefix_lifesteal, -1 );
scoreboard objectives add _tmp.rndPre.lfst dummy
scoreboard players set @s _tmp.rndPre.lfst -1

#------- Defines the random prefix for the lifesteal skill -------
# mob.tmp_random_prefix_lifesteal = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_lifesteal"]}
execute store result score @s _tmp.rndPre.lfst run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_lifesteal, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.lfst %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_lifesteal, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_lifesteal):
#   case 0:     sign.text2 = "vampiric " + sign.text2;   break;
#   case 1:     sign.text2 = "transfusing " + sign.text2;     break;
#   case 2:     sign.text2 = "bloodsucking " + sign.text2;    break;
execute if score @s _tmp.rndPre.lfst matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"vampiric ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.lfst matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"transfusing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.lfst matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"bloodsucking ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the lifesteal prefix -------
# deleteVariable( tmp_random_prefix_lifesteal );
scoreboard objectives remove _tmp.rndPre.lfst
