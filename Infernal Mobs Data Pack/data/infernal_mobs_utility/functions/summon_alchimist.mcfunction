summon zombie ~ ~ ~ {Tags:["infernalMob"]}

# mob.initializeBossBar(); --> Crear sign en la posición del mob

execute at @s as @e[type=zombie, tag=infernalMob, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_alchimist

# mob.AddBossBar();
