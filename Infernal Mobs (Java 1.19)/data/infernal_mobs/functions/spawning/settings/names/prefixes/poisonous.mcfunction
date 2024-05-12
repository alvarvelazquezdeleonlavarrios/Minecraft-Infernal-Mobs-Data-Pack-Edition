#******************* Spawning --> Settings --> Names --> Prefixes --> Poisonous *******************


#------- Creates a temporary variable for the poisonous prefix -------
# int tmp_random_prefix_poisonous = new int();
# mob.AddVariable( tmp_random_prefix_poisonous, -1 );
scoreboard objectives add _tmp.random_prefix.poisonous dummy
scoreboard players set @s _tmp.random_prefix.poisonous -1

#------- Defines the random prefix for the poisonous skill -------
# mob.tmp_random_prefix_poisonous = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_poisonous"]}
execute store result score @s _tmp.random_prefix.poisonous run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_poisonous, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.poisonous %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_poisonous, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_poisonous):
#   case 0:     sign.text2 = "poisonous " + sign.text2;   break;
#   case 1:     sign.text2 = "stinging " + sign.text2;     break;
#   case 2:     sign.text2 = "despoiling " + sign.text2;     break;
execute if score @s _tmp.random_prefix.poisonous matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"poisonous ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.poisonous matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"stinging ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.random_prefix.poisonous matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"despoiling ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.random_prefix.found 1

#------- Removes the temporary variable for the poisonous prefix -------
# deleteVariable( tmp_random_prefix_poisonous );
scoreboard objectives remove _tmp.random_prefix.poisonous
