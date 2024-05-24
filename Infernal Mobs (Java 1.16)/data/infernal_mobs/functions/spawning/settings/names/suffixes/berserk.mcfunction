#******************* Spawning --> Settings --> Names --> Suffixes --> Berserk *******************


#------- Creates a temporary variable for the berserk suffix -------
# int tmp_random_suffix_berserk = new int();
# mob.AddVariable( tmp_random_suffix_berserk, -1 );
scoreboard objectives add _tmp.rndSuf.brsk dummy
scoreboard players set @s _tmp.rndSuf.brsk -1

#------- Defines the random suffix for the berserk skill -------
# mob.tmp_random_suffix_berserk = Random.Range(0,2);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix_berserk"]}
execute store result score @s _tmp.rndSuf.brsk run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_berserk, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.rndSuf.brsk %= $Constants _const.3
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix_berserk, limit=1, sort=nearest]


#++++++++++++++++++++++++++++ Suffixes List +++++++++++++++++++++++++++++++
#------- Sets a random suffix for this mob's name -------
# switch (mob.tmp_random_suffix_berserk):
#   case 0:     sign.text2 = " ofRecklessness";   break;
#   case 1:     sign.text2 = " theRaging";     break;
#   case 2:     sign.text2 = " ofSmashing";    break;
execute if score @s _tmp.rndSuf.brsk matches 0 run data modify block ~ ~ ~ Text2 set value '{"text":" ofRecklessness","interpret":true}'
execute if score @s _tmp.rndSuf.brsk matches 1 run data modify block ~ ~ ~ Text2 set value '{"text":" theRaging","interpret":true}'
execute if score @s _tmp.rndSuf.brsk matches 2 run data modify block ~ ~ ~ Text2 set value '{"text":" ofSmashing","interpret":true}'
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates the finding algorithm that the suffix was found and set -------
# mob.tmp_random_suffix_found = true;
scoreboard players set @s _tmp.rndSuf.fnd 1

#------- Removes the temporary variable for the berserk suffix -------
# deleteVariable( tmp_random_suffix_berserk );
scoreboard objectives remove _tmp.rndSuf.brsk
