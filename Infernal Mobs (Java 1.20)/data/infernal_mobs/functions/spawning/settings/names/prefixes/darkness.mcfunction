#******************* Spawning --> Settings --> Names --> Prefixes --> Darkness *******************


#------- Creates a temporary variable for the darkness prefix -------
# int tmp_random_prefix_darkness = new int();
# mob.AddVariable( tmp_random_prefix_darkness, -1 );
scoreboard objectives add _tmp.random_prefix.darkness dummy
scoreboard players set @s _tmp.random_prefix.darkness -1

#------- Defines the random prefix for the darkness skill -------
# mob.tmp_random_prefix_darkness = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_darkness"]}
execute store result score @s _tmp.random_prefix.darkness run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_darkness, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.darkness %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_darkness, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_darkness):
#   case 0:     sign.text2 = "dark " + sign.text2;   break;
#   case 1:     sign.text2 = "shadowkin " + sign.text2;     break;
#   case 2:     sign.text2 = "eclipsed " + sign.text2;    break;
execute if score @s _tmp.random_prefix.darkness matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"dark ","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.darkness matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"shadowkin ","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.darkness matches 2 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"eclipsed ","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the darkness prefix -------
# deleteVariable( tmp_random_prefix_darkness );
scoreboard objectives remove _tmp.random_prefix.darkness
