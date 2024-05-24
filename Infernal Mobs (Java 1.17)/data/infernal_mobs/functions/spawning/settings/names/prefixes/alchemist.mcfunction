#******************* Spawning --> Settings --> Names --> Prefixes --> Alchemist *******************


#------- Creates a temporary variable for the alchemist prefix -------
# int tmp_random_prefix_alchemist = new int();
# mob.AddVariable( tmp_random_prefix_alchemist, -1 );
scoreboard objectives add _tmp.rndPre.alch dummy
scoreboard players set @s _tmp.rndPre.alch -1

#------- Defines the random prefix for the alchemist skill -------
# mob.tmp_random_prefix_alchemist = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_alchemist"]}
execute store result score @s _tmp.rndPre.alch run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_alchemist, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.alch %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_alchemist, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_alchemist):
#   case 0:     sign.text2 = "witchkin " + sign.text2;   break;
#   case 1:     sign.text2 = "brewing " + sign.text2;     break;
#   case 2:     sign.text2 = "singed " + sign.text2;    break;
execute if score @s _tmp.rndPre.alch matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"witchkin ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.alch matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"brewing ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.alch matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"singed ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the alchemist prefix -------
# deleteVariable( tmp_random_prefix_alchemist );
scoreboard objectives remove _tmp.rndPre.alch
