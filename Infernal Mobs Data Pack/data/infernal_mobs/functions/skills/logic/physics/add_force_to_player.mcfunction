# ******************* Skills --> Logic --> Physics -->  Add Force To Player **********************************


#execute at @s run gamemode creative @a[distance=..4]

execute at @s positioned ~ ~0.15 ~ run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:-1b,Fuse:0s,PersistenceRequired:1b}

# (Agregar partículas de explosión grande)
# (Agregar sonido de cohete lanzándose)

#execute at @s run gamemode survival @a[distance=..4]
