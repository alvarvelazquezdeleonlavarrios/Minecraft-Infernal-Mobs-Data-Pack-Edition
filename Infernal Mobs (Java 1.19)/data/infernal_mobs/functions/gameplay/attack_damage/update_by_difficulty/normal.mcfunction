#******************* Gameplay --> Attack Damage --> Update By Difficulty --> Normal *******************


#++++++++++++++++++++++++++++++ Hostile Mobs List ++++++++++++++++++++++++++++++++
#------- Main/iconic/well-known hostile mobs. -------
execute if entity @s[type=zombie] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:3.5}]}
execute if entity @s[type=spider] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}
execute if entity @s[type=enderman] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:7.5}]}
execute if entity @s[type=slime] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:4}]}
execute if entity @s[type=cave_spider] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}
execute if entity @s[type=silverfish] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:1.5}]}

#------- Illagers faction mobs. -------
execute if entity @s[type=pillager] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:3.5}]}
execute if entity @s[type=vindicator] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:13.5}]}
execute if entity @s[type=evoker] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:6}]}
execute if entity @s[type=vex] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:9.5}]}
execute if entity @s[type=ravager] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:12.5}]}

#------- Overworld updates mobs. -------
execute if entity @s[type=drowned] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:3.5}]}
execute if entity @s[type=husk] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:3.5}]}
execute if entity @s[type=phantom] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}
execute if entity @s[type=guardian] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}
execute if entity @s[type=elder_guardian] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}

#------- The End dimension updates mobs. -------
execute if entity @s[type=endermite] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:2.5}]}

#------- The Nether dimension mobs. -------
execute if entity @s[type=blaze] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:6.5}]}
execute if entity @s[type=magma_cube] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:6.5}]}
execute if entity @s[type=zombified_piglin] run data merge entity @s {Attributes:[{Name:"minecraft:generic.attack_damage",Base:8.5}]}
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
