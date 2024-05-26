#******************* Spawning --> Settings --> Names --> Prefixes --> Fiery *******************


#------- Creates a temporary variable for the fiery prefix -------
# int tmp_random_prefix_fiery = new int();
# mob.AddVariable( tmp_random_prefix_fiery, -1 );
scoreboard objectives add _tmp.random_prefix.fiery dummy
scoreboard players set @s _tmp.random_prefix.fiery -1

#------- Defines the random prefix for the fiery skill -------
# mob.tmp_random_prefix_fiery = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_fiery"]}
execute store result score @s _tmp.random_prefix.fiery run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_fiery, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.fiery %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_fiery, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_fiery):
#   case 0:     sign.text2 = "burning " + sign.text2;   break;
#   case 1:     sign.text2 = "toasting " + sign.text2;     break;
execute if score @s _tmp.random_prefix.fiery matches 0 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"burning ","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.fiery matches 1 run data modify block ~ ~ ~ front_text.messages[1] set value '[{"text":"toasting ","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the fiery prefix -------
# deleteVariable( tmp_random_prefix_fiery );
scoreboard objectives remove _tmp.random_prefix.fiery
