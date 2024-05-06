#******************* Gameplay --> Natural Spawning --> Set Random Variant *******************


#------- Adds this mob a variable to calculate its chance of being one of the three variants. -------
# mob.AddVariable( natural_spawning_variant_chance, -1 );
scoreboard players set @s _natural_spawning.variant_chance -1

#------- Defines this mob the chance for setting an infernal mob variant or not. -------
# mob.natural_spawning_variant_chance = Random.Range(0,9999);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_variant"]}
execute store result score @s _natural_spawning.variant_chance run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_variant, limit=1] UUID[0] 1
scoreboard players operation @s _natural_spawning.variant_chance %= $Constants _const.10000
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_variant, limit=1, sort=nearest]

#------- This will be an infernal variant (0.66% of chance). -------
# if (mob.natural_spawning_variant_chance = [0,65]):
#   mob.setInfernal();
execute if score @s _natural_spawning.variant_chance matches 0..65 run function infernal_mobs:spawning/infernal

#------- This will be an ultra variant (2.0% of chance). -------
# if (mob.natural_spawning_variant_chance = [66,265]):
#   mob.setUltra();
execute if score @s _natural_spawning.variant_chance matches 66..265 run function infernal_mobs:spawning/ultra

#------- This will be a rare variant (10.0% of chance). -------
# if (mob.natural_spawning_variant_chance = [266,1265]):
#   mob.setRare();
execute if score @s _natural_spawning.variant_chance matches 266..1265 run function infernal_mobs:spawning/rare

#------- This will NOT be an Infernal Mob (87.33% of chance). -------
# if (mob.natural_spawning_variant_chance = [1266,9999]):
#   mob.tags.Add("Common_Mob");
execute if score @s _natural_spawning.variant_chance matches 1266..9999 run tag @s add Common_Mob
