#******************* Skills --> Alchimist *******************


#------- Makes this mob summon a random potion -------
# mob.summonAlchimistPotion();
function infernal_mobs:skills/internal_logic/summon/alchimist_potion

#------- After summoning the potion, it's finally thrown -------
# potion.throw();
execute as @e[type=potion, sort=nearest, limit=1, distance=..2] run function infernal_mobs:skills/internal_logic/physics/throw_potion
