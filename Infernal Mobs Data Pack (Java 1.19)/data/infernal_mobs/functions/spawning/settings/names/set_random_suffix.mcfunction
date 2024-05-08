#******************* Spawning --> Settings --> Names --> Set Random Suffix *******************


#------- Creates some temporary variables for the mob's suffix and adds it to this mob -------
# int tmp_random_suffix_found = new int();
# int tmp_random_suffix_value = new int();
# mob.AddVariable( tmp_random_suffix_found, 0 );
# mob.AddVariable( tmp_random_suffix_value, -1 );
scoreboard objectives add _tmp.random_suffix.found dummy
scoreboard objectives add _tmp.random_suffix.value dummy
scoreboard players set @s _tmp.random_suffix.found 0
scoreboard players set @s _tmp.random_suffix.value -1

#------- Defines the suffix that this mob will have in its healthbar's name -------
# mob.tmp_random_suffix_value = Random.Range(0,26);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_suffix"]}
execute store result score @s _tmp.random_suffix.value run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix, limit=1] UUID[0] 1
scoreboard players operation @s _tmp.random_suffix.value %= $Constants _const.27
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_suffix, limit=1, sort=nearest]


#+++++++++++++++++++++++++++++++++++++++++++ Skills List +++++++++++++++++++++++++++++++++++++++++++++++++
#------- If this mob has the 1UP skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("1up") == true):
#   sign.text2 = setSuffix( 1up );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 0 if entity @s[tag=1up] run function infernal_mobs:spawning/settings/names/suffixes/1up

#------- If this mob has the Alchemist skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("alchemist") == true):
#   sign.text2 = setSuffix( alchemist );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 1 if entity @s[tag=alchemist] run function infernal_mobs:spawning/settings/names/suffixes/alchemist

#------- If this mob has the Berserk skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("berserk") == true):
#   sign.text2 = setSuffix( berserk );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 2 if entity @s[tag=berserk] run function infernal_mobs:spawning/settings/names/suffixes/berserk

#------- If this mob has the Blastoff skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("blastoff") == true):
#   sign.text2 = setSuffix( blastoff );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 3 if entity @s[tag=blastoff] run function infernal_mobs:spawning/settings/names/suffixes/blastoff

#------- If this mob has the Bulwark skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("bulwark") == true):
#   sign.text2 = setSuffix( bulwark );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 4 if entity @s[tag=bulwark] run function infernal_mobs:spawning/settings/names/suffixes/bulwark

#------- If this mob has the Cloacking skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("cloacking") == true):
#   sign.text2 = setSuffix( cloacking );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 5 if entity @s[tag=cloacking] run function infernal_mobs:spawning/settings/names/suffixes/cloacking

#------- If this mob has the Darkness skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("darkness") == true):
#   sign.text2 = setSuffix( darkness );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 6 if entity @s[tag=darkness] run function infernal_mobs:spawning/settings/names/suffixes/darkness

#------- If this mob has the Ender skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("ender") == true):
#   sign.text2 = setSuffix( ender );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 7 if entity @s[tag=ender] run function infernal_mobs:spawning/settings/names/suffixes/ender

#------- If this mob has the Exhaust skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("exhaust") == true):
#   sign.text2 = setSuffix( exhaust );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 8 if entity @s[tag=exhaust] run function infernal_mobs:spawning/settings/names/suffixes/exhaust

#------- If this mob has the Fiery skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("fiery") == true):
#   sign.text2 = setSuffix( fiery );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 9 if entity @s[tag=fiery] run function infernal_mobs:spawning/settings/names/suffixes/fiery

#------- If this mob has the Ghastly skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("ghastly") == true):
#   sign.text2 = setSuffix( ghastly );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 10 if entity @s[tag=ghastly] run function infernal_mobs:spawning/settings/names/suffixes/ghastly

#------- If this mob has the Gravity skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("gravity") == true):
#   sign.text2 = setSuffix( gravity );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 11 if entity @s[tag=gravity] run function infernal_mobs:spawning/settings/names/suffixes/gravity

#------- If this mob has the Lifesteal skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("lifesteal") == true):
#   sign.text2 = setSuffix( lifesteal );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 12 if entity @s[tag=lifesteal] run function infernal_mobs:spawning/settings/names/suffixes/lifesteal

#------- If this mob has the Ninja skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("ninja") == true):
#   sign.text2 = setSuffix( ninja );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 13 if entity @s[tag=ninja] run function infernal_mobs:spawning/settings/names/suffixes/ninja

#------- If this mob has the Poisonous skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("poisonous") == true):
#   sign.text2 = setSuffix( poisonous );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 14 if entity @s[tag=poisonous] run function infernal_mobs:spawning/settings/names/suffixes/poisonous

#------- If this mob has the Quicksand skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("quicksand") == true):
#   sign.text2 = setSuffix( quicksand );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 15 if entity @s[tag=quicksand] run function infernal_mobs:spawning/settings/names/suffixes/quicksand

#------- If this mob has the Regen skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("regen") == true):
#   sign.text2 = setSuffix( regen );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 16 if entity @s[tag=regen] run function infernal_mobs:spawning/settings/names/suffixes/regen

#------- If this mob has the Rust skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("rust") == true):
#   sign.text2 = setSuffix( rust );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 17 if entity @s[tag=rust] run function infernal_mobs:spawning/settings/names/suffixes/rust

#------- If this mob has the Sapper skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("sapper") == true):
#   sign.text2 = setSuffix( sapper );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 18 if entity @s[tag=sapper] run function infernal_mobs:spawning/settings/names/suffixes/sapper

#------- If this mob has the Sprint skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("sprint") == true):
#   sign.text2 = setSuffix( sprint );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 19 if entity @s[tag=sprint] run function infernal_mobs:spawning/settings/names/suffixes/sprint

#------- If this mob has the Sticky skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("sticky") == true):
#   sign.text2 = setSuffix( sticky );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 20 if entity @s[tag=sticky] run function infernal_mobs:spawning/settings/names/suffixes/sticky

#------- If this mob has the Storm skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("storm") == true):
#   sign.text2 = setSuffix( storm );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 21 if entity @s[tag=storm] run function infernal_mobs:spawning/settings/names/suffixes/storm

#------- If this mob has the Unyielding skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("unyielding") == true):
#   sign.text2 = setSuffix( unyielding );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 22 if entity @s[tag=unyielding] run function infernal_mobs:spawning/settings/names/suffixes/unyielding

#------- If this mob has the Vengeance skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("vengeance") == true):
#   sign.text2 = setSuffix( vengeance );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 23 if entity @s[tag=vengeance] run function infernal_mobs:spawning/settings/names/suffixes/vengeance

#------- If this mob has the Weakness skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("weakness") == true):
#   sign.text2 = setSuffix( weakness );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 24 if entity @s[tag=weakness] run function infernal_mobs:spawning/settings/names/suffixes/weakness

#------- If this mob has the Webber skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("webber") == true):
#   sign.text2 = setSuffix( webber );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 25 if entity @s[tag=webber] run function infernal_mobs:spawning/settings/names/suffixes/webber

#------- If this mob has the Wither skill, randomly chooses a suffix name of this skill -------
# if (mob.tmp_random_suffix_found == false && mob.tmp_random_suffix_value == 0 && mob.tags.Find("wither") == true):
#   sign.text2 = setSuffix( wither );
execute if score @s _tmp.random_suffix.found matches 0 if score @s _tmp.random_suffix.value matches 26 if entity @s[tag=wither] run function infernal_mobs:spawning/settings/names/suffixes/wither
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Recursively chooses a new suffix if wasn´t found previously -------
# if (mob.tmp_random_suffix_found == false):
#   sign.text2 = setRandomSuffix();
execute if score @s _tmp.random_suffix.found matches 0 run function infernal_mobs:spawning/settings/names/set_random_suffix

#------- Removes the temporary variables for the mob's suffix -------
# deleteVariable( tmp_random_suffix_found );
# deleteVariable( tmp_random_suffix_value );
scoreboard objectives remove _tmp.random_suffix.found
scoreboard objectives remove _tmp.random_suffix.value
