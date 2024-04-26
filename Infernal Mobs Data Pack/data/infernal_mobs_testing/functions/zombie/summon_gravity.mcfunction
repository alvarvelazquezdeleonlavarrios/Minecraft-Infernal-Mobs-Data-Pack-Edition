#*********************** Zombie --> Summon Gravity *******************


#------- Summons a new Rare zombie -------
summon zombie ~ ~ ~
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/variants/set_rare

#------- Adds the zombie the "gravity" skill, and generates its custom name for its healthbar -------
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_gravity
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/names/set_name
