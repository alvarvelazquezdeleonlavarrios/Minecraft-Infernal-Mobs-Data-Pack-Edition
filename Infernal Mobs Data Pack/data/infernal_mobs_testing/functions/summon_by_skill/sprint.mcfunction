#*********************** Summon By Skill --> Sprint *******************


#------- Summons a new Rare zombie -------
summon zombie ~ ~ ~
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/variants/set_rare

#------- Adds the zombie the "sprint" skill, and generates its custom name for its healthbar -------
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/skills/add_sprint
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/settings/names/set_name
