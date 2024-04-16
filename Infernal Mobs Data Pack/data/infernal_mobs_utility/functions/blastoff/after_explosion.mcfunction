
summon minecraft:area_effect_cloud ~ ~11000 ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,Effects:[{Id:7,Amplifier:0b,Duration:1}],Tags:["after_explosion"]}


execute positioned ~ ~11000 ~ run data modify entity @e[type=area_effect_cloud,tag=after_explosion,limit=1,sort=nearest,distance=..1] Owner set from entity @s UUID

summon minecraft:bat ~ ~11000 ~ {DeathLootTable:"",NoAI:1b,Health:1.0f,Tags:["after_explosion"],PersistenceRequired:1b}
