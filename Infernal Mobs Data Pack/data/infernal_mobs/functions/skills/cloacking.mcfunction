#******************* Skills --> Cloacking *******************


#------- Defines the probability of the mob to adquire invisibility for a moment. -------
# mob.cloacking_current_chance = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","cloacking_chance"]}
execute store result score @s _skills.cloacking.current_chance run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _skills.cloacking.current_chance %= $Constants _const.100
kill @e[type=area_effect_cloud, tag=random_uuid, tag=cloacking_chance, limit=1, sort=nearest]


#------- If the current chance matches between 25 and 54 (30%) and the mob doesn't have the invisibility effect yet, adds it. -------
# if (mob.cloacking_current_chance == [25,55] && mob.effects.Find("Invisibility") == false):
#   mob.effects.Add("Invisibility", 1, 6);
execute if score @s _skills.cloacking.current_chance matches 25..54 unless entity @s[nbt={ActiveEffects:[{Id:14}]}] run effect give @s invisibility 6 1 true
