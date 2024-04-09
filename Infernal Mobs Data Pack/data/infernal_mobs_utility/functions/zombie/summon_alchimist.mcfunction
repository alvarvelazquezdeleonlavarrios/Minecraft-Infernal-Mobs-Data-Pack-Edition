#*********************** Zombie --> Summon Alchimist *******************


#------- Summons a new Rare zombie -------
summon zombie ~ ~ ~ {Tags:["infernalMob","rare"]}
scoreboard players set @e[type=zombie, sort=nearest, limit=1] _healthbar.current_id 0

#------- Adds the zombie the alchimist skill, and generates its custom name for its healthbar -------
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_alchimist
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/names/set_name
