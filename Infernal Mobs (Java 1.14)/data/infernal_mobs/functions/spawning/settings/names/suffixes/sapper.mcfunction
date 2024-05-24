#******************* Spawning --> Settings --> Names --> Suffixes --> Sapper *******************


#------- Creates a temporary variable for the sapper suffix -------
# int tmp_random_suffix_sapper = new int();
# mob.AddVariable( tmp_random_suffix_sapper, -1 );
scoreboard objectives add _tmp.rndSuf.spr dummy
scoreboard players set @s _tmp.rndSuf.spr -1

#------- Defines the random suffix for the sapper skill -------
# mob.tmp_random_suffix_sapper = Random.Range(0,1);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_sapper"]}
execute store result score @s _tmp.rndSuf.spr run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sapper, limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @s _tmp.rndSuf.spr %= $Constants _const.2
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_sapper, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_sapper):
#   case 0:     sign.text2 = " ofHunger";   break;
#   case 1:     sign.text2 = " thePaleRider";     break;
execute if score @s _tmp.rndSuf.spr matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofHunger","interpret":true}'
execute if score @s _tmp.rndSuf.spr matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" thePaleRider","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the sapper suffix -------
# deleteVariable( tmp_random_suffix_sapper );
scoreboard objectives remove _tmp.rndSuf.spr
