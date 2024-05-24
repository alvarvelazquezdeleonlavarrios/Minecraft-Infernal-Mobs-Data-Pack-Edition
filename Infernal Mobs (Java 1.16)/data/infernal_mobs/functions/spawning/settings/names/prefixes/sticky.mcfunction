#******************* Spawning --> Settings --> Names --> Prefixes --> Sticky *******************


#------- Creates a temporary variable for the sticky prefix -------
# int tmp_random_prefix_sticky = new int();
# mob.AddVariable( tmp_random_prefix_sticky, -1 );
scoreboard objectives add _tmp.rndPre.stck dummy
scoreboard players set @s _tmp.rndPre.stck -1

#------- Defines the random prefix for the sticky skill -------
# mob.tmp_random_prefix_sticky = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_sticky"]}
execute store result score @s _tmp.rndPre.stck run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sticky, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.stck %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sticky, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_sticky):
#   case 0:     sign.text2 = "thieving " + sign.text2;   break;
#   case 1:     sign.text2 = "snagging " + sign.text2;     break;
#   case 2:     sign.text2 = "quickfingered " + sign.text2;    break;
execute if score @s _tmp.rndPre.stck matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"thieving ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.stck matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"snagging ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.stck matches 2 run data modify block ~ ~ ~ Text2 set value '[{"text":"quickfingered ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the sticky prefix -------
# deleteVariable( tmp_random_prefix_sticky );
scoreboard objectives remove _tmp.rndPre.stck
