#*********************** Summon By Variant --> Infernal *******************


#------- Summons a new Infernal zombie -------
summon zombie ~ ~ ~
execute at @s as @e[type=zombie, sort=nearest, limit=1] run function infernal_mobs:spawning/infernal
