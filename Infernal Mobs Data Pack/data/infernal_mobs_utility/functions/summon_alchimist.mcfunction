
summon zombie ~ ~ ~ {Tags:["infernalMob","rare"]}
scoreboard players set @e[type=zombie, sort=nearest, limit=1] _healthbar.current_id 0

execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_alchimist
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/names/set_name




# sign.text1 = mob.Tags[0] + " Elite";
#setblock ~ ~ ~ oak_sign{Text1:'[{"text":" Elite"},{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true}]'} replace
# mob.Tags[0] = sign.text1;
#data modify entity @e[type=zombie, limit=1, sort=nearest] Tags[0] set from block ~ ~ ~ Text1


# sign.text2 = mob.Tags[0];
#setblock ~ ~ ~ oak_sign replace
#data modify block ~ ~ ~ Text2 set from entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0]
# sign.text1 = sign.text2 + " alchimist";
#data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text2","block":"~ ~ ~","interpret":true},{"text":" alchimist"}]'

# mob.Tags[0] = sign.text1;
#data modify entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0] set from block ~ ~ ~ Text1
#setblock ~ ~ ~ air replace

# Importante para que funcione!!
#data modify entity @e[tag=infernalMob, limit=1, sort=nearest] CustomName set from entity @e[tag=infernalMob, limit=1, sort=nearest] Tags[0]

#bossbar add nueva_barra ""
#bossbar set nueva_barra name [{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true},{"text":" Maximo"}]
#bossbar set nueva_barra players @a

# Importante #2 para que funcione!!
#data modify entity @e[tag=infernalMob, limit=1, sort=nearest] CustomName set value ""
