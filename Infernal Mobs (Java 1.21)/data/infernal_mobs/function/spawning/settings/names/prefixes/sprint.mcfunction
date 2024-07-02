#******************* Spawning --> Settings --> Names --> Prefixes --> Sprint *******************


#------- Creates a temporary variable for the sprint prefix -------
# int tmp_random_prefix_sprint = new int();
# mob.AddVariable( tmp_random_prefix_sprint, -1 );
scoreboard objectives add _tmp.random_prefix.sprint dummy
scoreboard players set @s _tmp.random_prefix.sprint -1

#------- Defines the random prefix for the sprint skill -------
# mob.tmp_random_prefix_sprint = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_sprint"]}
execute store result score @s _tmp.random_prefix.sprint run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sprint, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.sprint %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sprint, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_sprint):
#   case 0:     sign.text2 = "sprinting " + sign.text2;   break;
#   case 1:     sign.text2 = "swift " + sign.text2;     break;
#   case 2:     sign.text2 = "charging " + sign.text2;    break;
execute if score @s _tmp.random_prefix.sprint matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"sprinting "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.sprint matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"swift "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.sprint matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"charging "},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the sprint prefix -------
# deleteVariable( tmp_random_prefix_sprint );
scoreboard objectives remove _tmp.random_prefix.sprint
