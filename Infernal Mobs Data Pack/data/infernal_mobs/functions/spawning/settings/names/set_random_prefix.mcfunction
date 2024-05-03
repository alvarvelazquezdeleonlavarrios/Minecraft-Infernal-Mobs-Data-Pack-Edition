#******************* Spawning --> Settings --> Names --> Set Random Prefix *******************


#------- Creates some temporary variables for the mob's prefix and adds it to this mob -------
# int tmp_random_prefix_found = new int();
# int tmp_random_prefix_value = new int();
# mob.AddVariable( tmp_random_prefix_found, 0 );
# mob.AddVariable( tmp_random_prefix_value, -1 );
scoreboard objectives add _tmp.random_prefix.found dummy
scoreboard objectives add _tmp.random_prefix.value dummy
scoreboard players set @s _tmp.random_prefix.found 0
scoreboard players set @s _tmp.random_prefix.value -1

#------- Defines the prefix that this mob will have in its healthbar's name -------
# mob.tmp_random_prefix_value = Random.Range(0,26);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_prefix"]}
execute store result score @s _tmp.random_prefix.value run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_prefix.value %= $Constants _const.27
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_prefix, limit=1, sort=nearest]


#+++++++++++++++++++++++++++++++++++++++++++ Skills List +++++++++++++++++++++++++++++++++++++++++++++++++
#------- If this mob has the 1UP skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("1up") == true):
#   sign.text2 = setPrefix( 1up );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 0 if entity @s[tag=1up] run function infernal_mobs:spawning/settings/names/prefixes/1up

#------- If this mob has the Alchemist skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("alchemist") == true):
#   sign.text2 = setPrefix( alchemist );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 1 if entity @s[tag=alchemist] run function infernal_mobs:spawning/settings/names/prefixes/alchemist

#------- If this mob has the Berserk skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("berserk") == true):
#   sign.text2 = setPrefix( berserk );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 2 if entity @s[tag=berserk] run function infernal_mobs:spawning/settings/names/prefixes/berserk

#------- If this mob has the Blastoff skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("blastoff") == true):
#   sign.text2 = setPrefix( blastoff );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 3 if entity @s[tag=blastoff] run function infernal_mobs:spawning/settings/names/prefixes/blastoff

#------- If this mob has the Bulwark skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("bulwark") == true):
#   sign.text2 = setPrefix( bulwark );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 4 if entity @s[tag=bulwark] run function infernal_mobs:spawning/settings/names/prefixes/bulwark

#------- If this mob has the Cloacking skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("cloacking") == true):
#   sign.text2 = setPrefix( cloacking );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 5 if entity @s[tag=cloacking] run function infernal_mobs:spawning/settings/names/prefixes/cloacking

#------- If this mob has the Darkness skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("darkness") == true):
#   sign.text2 = setPrefix( darkness );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 6 if entity @s[tag=darkness] run function infernal_mobs:spawning/settings/names/prefixes/darkness

#------- If this mob has the Ender skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("ender") == true):
#   sign.text2 = setPrefix( ender );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 7 if entity @s[tag=ender] run function infernal_mobs:spawning/settings/names/prefixes/ender

#------- If this mob has the Exhaust skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("exhaust") == true):
#   sign.text2 = setPrefix( exhaust );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 8 if entity @s[tag=exhaust] run function infernal_mobs:spawning/settings/names/prefixes/exhaust

#------- If this mob has the Fiery skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("fiery") == true):
#   sign.text2 = setPrefix( fiery );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 9 if entity @s[tag=fiery] run function infernal_mobs:spawning/settings/names/prefixes/fiery

#------- If this mob has the Ghastly skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("ghastly") == true):
#   sign.text2 = setPrefix( ghastly );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 10 if entity @s[tag=ghastly] run function infernal_mobs:spawning/settings/names/prefixes/ghastly

#------- If this mob has the Gravity skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("gravity") == true):
#   sign.text2 = setPrefix( gravity );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 11 if entity @s[tag=gravity] run function infernal_mobs:spawning/settings/names/prefixes/gravity

#------- If this mob has the Lifesteal skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("lifesteal") == true):
#   sign.text2 = setPrefix( lifesteal );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 12 if entity @s[tag=lifesteal] run function infernal_mobs:spawning/settings/names/prefixes/lifesteal

#------- If this mob has the Ninja skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("ninja") == true):
#   sign.text2 = setPrefix( ninja );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 13 if entity @s[tag=ninja] run function infernal_mobs:spawning/settings/names/prefixes/ninja

#------- If this mob has the Poisonous skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("poisonous") == true):
#   sign.text2 = setPrefix( poisonous );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 14 if entity @s[tag=poisonous] run function infernal_mobs:spawning/settings/names/prefixes/poisonous

#------- If this mob has the Quicksand skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("quicksand") == true):
#   sign.text2 = setPrefix( quicksand );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 15 if entity @s[tag=quicksand] run function infernal_mobs:spawning/settings/names/prefixes/quicksand

#------- If this mob has the Regen skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("regen") == true):
#   sign.text2 = setPrefix( regen );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 16 if entity @s[tag=regen] run function infernal_mobs:spawning/settings/names/prefixes/regen

#------- If this mob has the Rust skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("rust") == true):
#   sign.text2 = setPrefix( rust );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 17 if entity @s[tag=rust] run function infernal_mobs:spawning/settings/names/prefixes/rust

#------- If this mob has the Sapper skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("sapper") == true):
#   sign.text2 = setPrefix( sapper );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 18 if entity @s[tag=sapper] run function infernal_mobs:spawning/settings/names/prefixes/sapper

#------- If this mob has the Sprint skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("sprint") == true):
#   sign.text2 = setPrefix( sprint );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 19 if entity @s[tag=sprint] run function infernal_mobs:spawning/settings/names/prefixes/sprint

#------- If this mob has the Sticky skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("sticky") == true):
#   sign.text2 = setPrefix( sticky );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 20 if entity @s[tag=sticky] run function infernal_mobs:spawning/settings/names/prefixes/sticky

#------- If this mob has the Storm skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("storm") == true):
#   sign.text2 = setPrefix( storm );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 21 if entity @s[tag=storm] run function infernal_mobs:spawning/settings/names/prefixes/storm

#------- If this mob has the Unyielding skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("unyielding") == true):
#   sign.text2 = setPrefix( unyielding );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 22 if entity @s[tag=unyielding] run function infernal_mobs:spawning/settings/names/prefixes/unyielding

#------- If this mob has the Vengeance skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("vengeance") == true):
#   sign.text2 = setPrefix( vengeance );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 23 if entity @s[tag=vengeance] run function infernal_mobs:spawning/settings/names/prefixes/vengeance

#------- If this mob has the Weakness skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("weakness") == true):
#   sign.text2 = setPrefix( weakness );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 24 if entity @s[tag=weakness] run function infernal_mobs:spawning/settings/names/prefixes/weakness

#------- If this mob has the Webber skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("webber") == true):
#   sign.text2 = setPrefix( webber );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 25 if entity @s[tag=webber] run function infernal_mobs:spawning/settings/names/prefixes/webber

#------- If this mob has the Wither skill, randomly chooses a prefix name of this skill -------
# if (mob.tmp_random_prefix_found == false && mob.tmp_random_prefix_value == 0 && mob.tags.Find("wither") == true):
#   sign.text2 = setPrefix( wither );
execute if score @s _tmp.random_prefix.found matches 0 if score @s _tmp.random_prefix.value matches 26 if entity @s[tag=wither] run function infernal_mobs:spawning/settings/names/prefixes/wither
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Recursively chooses a new prefix if wasn´t found previously -------
# if (mob.tmp_random_prefix_found == false):
#   sign.text2 = setRandomPrefix();
execute if score @s _tmp.random_prefix.found matches 0 run function infernal_mobs:spawning/settings/names/set_random_prefix

#------- Removes the temporary variables for the mob's prefix -------
# deleteVariable( tmp_random_prefix_found );
# deleteVariable( tmp_random_prefix_value );
scoreboard objectives remove _tmp.random_prefix.found
scoreboard objectives remove _tmp.random_prefix.value