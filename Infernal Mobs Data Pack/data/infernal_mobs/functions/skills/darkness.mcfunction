#******************* Skills --> Darkness *******************


#------- Defines the probability of the mob to set the player that hit it the blindness effect -------
# mob.darkness_current_chance = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","darkness_chance"]}
execute store result score @s _skills.darkness.current_chance run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=darkness_chance, limit=1] UUID[0] 1
scoreboard players operation @s _skills.darkness.current_chance %= $Constants _const.100
kill @e[type=area_effect_cloud, tag=random_uuid, tag=darkness_chance, limit=1, sort=nearest]
