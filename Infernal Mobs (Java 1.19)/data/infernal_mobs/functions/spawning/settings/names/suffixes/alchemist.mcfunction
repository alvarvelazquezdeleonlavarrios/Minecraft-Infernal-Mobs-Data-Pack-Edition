#******************* Spawning --> Settings --> Names --> Suffixes --> Alchemist *******************


#------- Creates a temporary variable for the alchemist suffix -------
# int tmp_random_suffix_alchemist = new int();
# mob.AddVariable( tmp_random_suffix_alchemist, -1 );
scoreboard objectives add _tmp.random_suffix.alchemist dummy
scoreboard players set @s _tmp.random_suffix.alchemist -1

#------- Defines the random suffix for the alchemist skill -------
# mob.tmp_random_suffix_alchemist = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_alchemist"]}
execute store result score @s _tmp.random_suffix.alchemist run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_alchemist, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.alchemist %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_alchemist, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_alchemist):
#   case 0:     sign.text2 = " theWitchkin";   break;
#   case 1:     sign.text2 = " theBrewmaster";     break;
#   case 2:     sign.text2 = " theSinged";    break;
execute if score @s _tmp.random_suffix.alchemist matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" theWitchkin","interpret":true}'
execute if score @s _tmp.random_suffix.alchemist matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theBrewmaster","interpret":true}'
execute if score @s _tmp.random_suffix.alchemist matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" theSinged","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.random_suffix.found 1

#------- Removes the temporary variable for the alchemist suffix -------
# deleteVariable( tmp_random_suffix_alchemist );
scoreboard objectives remove _tmp.random_suffix.alchemist
