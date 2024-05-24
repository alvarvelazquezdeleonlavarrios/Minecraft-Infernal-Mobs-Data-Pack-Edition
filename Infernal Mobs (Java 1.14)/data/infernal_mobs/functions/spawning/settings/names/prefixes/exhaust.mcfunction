#******************* Spawning --> Settings --> Names --> Prefixes --> Exhaust *******************


#------- Creates a temporary variable for the exhaust prefix -------
# int tmp_random_prefix_exhaust = new int();
# mob.AddVariable( tmp_random_prefix_exhaust, -1 );
scoreboard objectives add _tmp.rndPre.exh dummy
scoreboard players set @s _tmp.rndPre.exh -1

#------- Defines the random prefix for the exhaust skill -------
# mob.tmp_random_prefix_exhaust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_exhaust"]}
execute store result score @s _tmp.rndPre.exh run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_exhaust, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndPre.exh %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_exhaust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_exhaust):
#   case 0:     sign.text2 = "exhausting " + sign.text2;   break;
#   case 1:     sign.text2 = "draining " + sign.text2;     break;
execute if score @s _tmp.rndPre.exh matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"exhausting ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.exh matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"draining ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the exhaust prefix -------
# deleteVariable( tmp_random_prefix_exhaust );
scoreboard objectives remove _tmp.rndPre.exh
