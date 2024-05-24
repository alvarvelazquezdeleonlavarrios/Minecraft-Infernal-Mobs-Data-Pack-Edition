#******************* Skills --> Alchemist *******************


#------- Makes this mob summon a random potion -------
# mob.summonAlchemistPotion();
function infernal_mobs:skills/internal_logic/summon/alchemist_potion

#------- After summoning the potion, the mob finally throws it -------
# potion.throw(player.position);
execute as @e[type=potion, sort=nearest, limit=1, distance=..2] run function infernal_mobs:skills/internal_logic/physics/throw_potion

#------- After executing the alchemist skill, resets the timer to its initial value -------
# mob.alchemist_current_time = mob.alchemist_max_time;
scoreboard players operation @s _sk.alch.crtT = @s _sk.alch.mxT
