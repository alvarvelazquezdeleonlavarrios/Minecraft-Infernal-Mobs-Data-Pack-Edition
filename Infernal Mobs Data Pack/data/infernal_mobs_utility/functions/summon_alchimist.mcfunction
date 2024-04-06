
summon zombie ~ ~ ~ {Tags:["infernalMob",""]}

#setblock ~ ~ ~ oak_sign{Text1:'[{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true},{"text":" Elite"}]'} replace
#data modify entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0] set from block ~ ~ ~ Text1


#setblock ~ ~ ~ oak_sign replace
#data modify block ~ ~ ~ Text2 set from entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0]
#data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"text":" alchimist"}]'


#data modify entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0] set from block ~ ~ ~ Text1
#setblock ~ ~ ~ air replace







summon item ~ ~ ~ {PickupDelay:32767,Invulnerable:1b,Item:{id:"minecraft:stone",Count:1b}}
data merge entity @e[type=item,limit=1,sort=nearest] {Item:{tag:{Storage:[{},{}]}}}


data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Storage[0] set from entity @e[tag=infernalMob,limit=1,sort=nearest]

data modify entity @e[type=item,limit=1,sort=nearest] Item.tag.Storage[0].Tags[0] set value '{"text":"perrroooooooo","interpret":true}'
data modify entity @e[tag=infernalMob,limit=1,sort=nearest] Tags[0] set from entity @e[type=item,limit=1,sort=nearest] Item.tag.Storage[0].Tags[0]






# Importante para que funcione!!
data modify entity @e[tag=infernalMob, limit=1, sort=nearest] CustomName set from entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0]

bossbar add nueva_barra ""
bossbar set nueva_barra name [{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true},{"text":" Maximo"}]
bossbar set nueva_barra players @a

# Importante #2 para que funcione!!
data modify entity @e[tag=infernalMob, limit=1, sort=nearest] CustomName set value ""

kill @e[type=item,limit=1,sort=nearest]


execute at @s as @e[type=zombie, tag=infernalMob, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_alchimist

# mob.AddBossBar();
