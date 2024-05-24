#******************* Spawning --> Settings --> Names --> Prefixes --> Ender *******************


#------- Creates a temporary variable for the ender prefix -------
# int tmp_random_prefix_ender = new int();
# mob.AddVariable( tmp_random_prefix_ender, -1 );
scoreboard objectives add _tmp.rndPre.end dummy
scoreboard players set @s _tmp.rndPre.end -1

#------- Defines the random prefix for the ender skill -------
# mob.tmp_random_prefix_ender = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_ender"]}
execute store result score @s _tmp.rndPre.end run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ender, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.end %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_ender, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_ender):
#   case 0:     sign.text2 = "enderborn " + sign.text2;   break;
#   case 1:     sign.text2 = "tricky " + sign.text2;     break;
execute if score @s _tmp.rndPre.end matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"enderborn ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.end matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"tricky ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the ender prefix -------
# deleteVariable( tmp_random_prefix_ender );
scoreboard objectives remove _tmp.rndPre.end
