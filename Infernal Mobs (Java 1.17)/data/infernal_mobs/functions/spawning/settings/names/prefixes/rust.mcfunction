#******************* Spawning --> Settings --> Names --> Prefixes --> Rust *******************


#------- Creates a temporary variable for the rust prefix -------
# int tmp_random_prefix_rust = new int();
# mob.AddVariable( tmp_random_prefix_rust, -1 );
scoreboard objectives add _tmp.rndPre.rust dummy
scoreboard players set @s _tmp.rndPre.rust -1

#------- Defines the random prefix for the rust skill -------
# mob.tmp_random_prefix_rust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_rust"]}
execute store result score @s _tmp.rndPre.rust run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_rust, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.rust %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_rust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_rust):
#   case 0:     sign.text2 = "rusting " + sign.text2;   break;
#   case 1:     sign.text2 = "decaying " + sign.text2;     break;
execute if score @s _tmp.rndPre.rust matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"rusting ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.rust matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"decaying ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the rust prefix -------
# deleteVariable( tmp_random_prefix_rust );
scoreboard objectives remove _tmp.rndPre.rust
