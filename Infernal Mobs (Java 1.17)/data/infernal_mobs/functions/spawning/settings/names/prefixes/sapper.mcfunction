#******************* Spawning --> Settings --> Names --> Prefixes --> Sapper *******************


#------- Creates a temporary variable for the sapper prefix -------
# int tmp_random_prefix_sapper = new int();
# mob.AddVariable( tmp_random_prefix_sapper, -1 );
scoreboard objectives add _tmp.rndPre.spr dummy
scoreboard players set @s _tmp.rndPre.spr -1

#------- Defines the random prefix for the sapper skill -------
# mob.tmp_random_prefix_sapper = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix_sapper"]}
execute store result score @s _tmp.rndPre.spr run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sapper, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndPre.spr %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix_sapper, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Prefixes List +++++++++++++++++++++++++++++++
#------- Sets a random prefix for this mob's name -------
# switch (mob.tmp_random_prefix_sapper):
#   case 0:     sign.text2 = "hungering " + sign.text2;   break;
#   case 1:     sign.text2 = "starving " + sign.text2;     break;
execute if score @s _tmp.rndPre.spr matches 0 run data modify block ~ ~ ~ Text2 set value '[{"text":"hungering ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
execute if score @s _tmp.rndPre.spr matches 1 run data modify block ~ ~ ~ Text2 set value '[{"text":"starving ","interpret":true},{"nbt":"Text2","block":"~ ~ ~","interpret":true}]'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the prefix was found and set -------
# mob.tmp_random_prefix_found = true;
scoreboard players set @s _tmp.rndPre.fnd 1

#------- Removes the temporary variable for the sapper prefix -------
# deleteVariable( tmp_random_prefix_sapper );
scoreboard objectives remove _tmp.rndPre.spr
