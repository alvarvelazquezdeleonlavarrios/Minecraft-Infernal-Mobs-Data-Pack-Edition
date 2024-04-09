#******************* Skills --> Alchimist *******************


#------- Makes this mob summon a random potion -------
# mob.summonAlchimistPotion();
function infernal_mobs:skills/internal_logic/summon/alchimist_potion

#------- After summoning the potion, the mob finally throws it -------
# potion.throw();
execute as @e[type=potion, sort=nearest, limit=1, distance=..2] run function infernal_mobs:skills/internal_logic/physics/throw_potion
