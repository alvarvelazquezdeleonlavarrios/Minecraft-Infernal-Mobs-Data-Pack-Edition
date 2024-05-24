#******************* Spawning --> Settings --> Names --> Suffixes --> Vengeance *******************


#------- Creates a temporary variable for the vengeance suffix -------
# int tmp_random_suffix_vengeance = new int();
# mob.AddVariable( tmp_random_suffix_vengeance, -1 );
scoreboard objectives add _tmp.rndSuf.vngc dummy
scoreboard players set @s _tmp.rndSuf.vngc -1

#------- Defines the random suffix for the vengeance skill -------
# mob.tmp_random_suffix_vengeance = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_vengeance"]}
execute store result score @s _tmp.rndSuf.vngc run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_vengeance, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.vngc %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_vengeance, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_vengeance):
#   case 0:     sign.text2 = " ofRetribution";   break;
#   case 1:     sign.text2 = " theThorned";     break;
#   case 2:     sign.text2 = " ofStrikingBack";    break;
execute if score @s _tmp.rndSuf.vngc matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofRetribution","interpret":true}'
execute if score @s _tmp.rndSuf.vngc matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theThorned","interpret":true}'
execute if score @s _tmp.rndSuf.vngc matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofStrikingBack","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the vengeance suffix -------
# deleteVariable( tmp_random_suffix_vengeance );
scoreboard objectives remove _tmp.rndSuf.vngc
