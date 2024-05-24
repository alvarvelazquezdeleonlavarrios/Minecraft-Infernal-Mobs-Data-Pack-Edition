#******************* Skills --> Ghastly *******************


#------- Makes this mob summon a fireball -------
# Fireball fireball = new Fireball("ghastly_fireball");
# fireball.ExplosionPower = 1;
execute positioned ~ ~1.2 ~ run summon fireball ^ ^0.8 ^1.2 {direction:[0.0,0.0,0.0],ExplosionPower:1,Tags:["ghastly_fireball"]}

#------- After summoning the fireball, the mob finally throws it -------
# fireball.throw(player.position);
execute as @e[type=fireball, tag=ghastly_fireball, sort=nearest, limit=1, distance=..3] run function infernal_mobs:skills/internal_logic/physics/throw_fireball

#------- After throwing the fireball, resets the timer to its initial value -------
# mob.ghastly_current_time = mob.ghastly_max_time;
scoreboard players operation @s _sk.ghtl.crtT = @s _sk.ghtl.mxT
