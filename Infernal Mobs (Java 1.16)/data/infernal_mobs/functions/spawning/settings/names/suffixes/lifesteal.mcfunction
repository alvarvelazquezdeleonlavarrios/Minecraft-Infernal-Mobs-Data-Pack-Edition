#******************* Spawning --> Settings --> Names --> Suffixes --> Lifesteal *******************


#------- Creates a temporary variable for the lifesteal suffix -------
# int tmp_random_suffix_lifesteal = new int();
# mob.AddVariable( tmp_random_suffix_lifesteal, -1 );
scoreboard objectives add _tmp.rndSuf.lfst dummy
scoreboard players set @s _tmp.rndSuf.lfst -1

#------- Defines the random suffix for the lifesteal skill -------
# mob.tmp_random_suffix_lifesteal = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_lifesteal"]}
execute store result score @s _tmp.rndSuf.lfst run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_lifesteal, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.lfst %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_lifesteal, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_lifesteal):
#   case 0:     sign.text2 = " theVampire";   break;
#   case 1:     sign.text2 = " ofTransfusion";     break;
#   case 2:     sign.text2 = " theBloodsucker";    break;
execute if score @s _tmp.rndSuf.lfst matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" theVampire","interpret":true}'
execute if score @s _tmp.rndSuf.lfst matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" ofTransfusion","interpret":true}'
execute if score @s _tmp.rndSuf.lfst matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" theBloodsucker","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the lifesteal suffix -------
# deleteVariable( tmp_random_suffix_lifesteal );
scoreboard objectives remove _tmp.rndSuf.lfst
