#******************* Spawning --> Settings --> Names --> Prefixes --> Rust *******************


#------- Creates a temporary variable for the rust prefix -------
# int tmp_random_prefix_rust = new int();
# mob.AddVariable( tmp_random_prefix_rust, -1 );
scoreboard objectives add _tmp.random_prefix.rust dummy
scoreboard players set @s _tmp.random_prefix.rust -1

#------- Defines the random prefix for the rust skill -------
# mob.tmp_random_prefix_rust = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_rust"]}
execute store result score @s _tmp.random_prefix.rust run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_rust, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.rust %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_rust, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_rust):
#   case 0:     sign.text2 = "rusting " + sign.text2;   break;
#   case 1:     sign.text2 = "decaying " + sign.text2;     break;
execute if score @s _tmp.random_prefix.rust matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"rusting "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.rust matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"decaying "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the rust prefix -------
# deleteVariable( tmp_random_prefix_rust );
scoreboard objectives remove _tmp.random_prefix.rust
