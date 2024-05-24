#******************* Spawning --> Settings --> Skills --> Add Sprint *******************

#------- Adds a new tag named "sprint" for this mob -------
# mob.tags.Add("sprint");
tag @s add sprint

#++++++++++++++++++++++ Increases the mob's Movement Speed in 0.1 ++++++++++++++++++++++++++++
#------- Main/iconic/well-known hostile mobs. -------
execute if entity @s[type=zombie] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.33}]}
execute if entity @s[type=spider] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}
execute if entity @s[type=creeper] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
execute if entity @s[type=skeleton] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
execute if entity @s[type=enderman] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}
execute if entity @s[type=witch] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
execute if entity @s[type=slime] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}
execute if entity @s[type=cave_spider] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}
execute if entity @s[type=silverfish] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}

#------- Illagers faction mobs. -------
execute if entity @s[type=pillager] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}
execute if entity @s[type=vindicator] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}
execute if entity @s[type=evoker] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.6}]}
execute if entity @s[type=vex] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.8}]}
execute if entity @s[type=ravager] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}

#------- Overworld updates mobs. -------
execute if entity @s[type=drowned] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.33}]}
execute if entity @s[type=husk] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.33}]}
execute if entity @s[type=stray] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
execute if entity @s[type=phantom] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.8}]}
execute if entity @s[type=guardian] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.6}]}
execute if entity @s[type=elder_guardian] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}

#------- End dimension updates mobs. -------
execute if entity @s[type=endermite] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
execute if entity @s[type=shulker] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.8}]}

#------- Nether dimension updates mobs. -------
execute if entity @s[type=piglin] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}
execute if entity @s[type=piglin_brute] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.45}]}
execute if entity @s[type=hoglin] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}
execute if entity @s[type=zombified_piglin] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.33}]}
execute if entity @s[type=zoglin] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}]}
execute if entity @s[type=wither_skeleton] run data merge entity @s {Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.35}]}
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
