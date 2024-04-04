#******************* Skills --> Alchimist *******************


#------- Makes this mob summon a random potion -------
# mob.summonAlchimistPotion();
function infernal_mobs:skills/logic/generate/alchimist_potion

#------- After summoning the potion, it's finally thrown -------
# potion.throw();
execute as @e[type=potion, sort=nearest, limit=1, distance=..2] run function infernal_mobs:skills/logic/physics/throw_potion
