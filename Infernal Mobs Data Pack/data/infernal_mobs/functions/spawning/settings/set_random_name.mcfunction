#******************* Spawning --> Settings --> Set Random Name *******************


setblock ~ ~ ~ oak_sign{Text1:'{"text":""}'} replace


execute if entity @s[tag=alchimist] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" alchimist"}]'




data modify block ~ ~ ~ Text1 set value '[{"text":"Elite "},{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true}]'

data modify entity @s CustomName set from block ~ ~ ~ Text1


#bossbar add nueva_barra ""
#bossbar set nueva_barra name [{"selector":"@e[tag=infernalMob,limit=1,sort=nearest]","interpret":true},{"text":" Maximo"}]
#bossbar set nueva_barra players @a

#function infernal_mobs:mobs/find_available_healthbar


data modify entity @a CustomName set value ""