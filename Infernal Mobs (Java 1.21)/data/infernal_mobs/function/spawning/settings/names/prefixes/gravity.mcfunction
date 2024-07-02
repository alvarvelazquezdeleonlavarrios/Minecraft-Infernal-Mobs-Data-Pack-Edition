#******************* Spawning --> Settings --> Names --> Prefixes --> Gravity *******************


#------- Creates a temporary variable for the gravity prefix -------
# int tmp_random_prefix_gravity = new int();
# mob.AddVariable( tmp_random_prefix_gravity, -1 );
scoreboard objectives add _tmp.random_prefix.gravity dummy
scoreboard players set @s _tmp.random_prefix.gravity -1

#------- Defines the random prefix for the gravity skill -------
# mob.tmp_random_prefix_gravity = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_gravity"]}
execute store result score @s _tmp.random_prefix.gravity run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_gravity, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.gravity %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_gravity, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_gravity):
#   case 0:     sign.text2 = "repulsing " + sign.text2;   break;
#   case 1:     sign.text2 = "sproing " + sign.text2;     break;
execute if score @s _tmp.random_prefix.gravity matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"repulsing "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.gravity matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"sproing "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the gravity prefix -------
# deleteVariable( tmp_random_prefix_gravity );
scoreboard objectives remove _tmp.random_prefix.gravity
