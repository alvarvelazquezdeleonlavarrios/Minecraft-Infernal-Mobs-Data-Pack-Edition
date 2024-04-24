#******************* Skills --> Ghastly *******************


#------- Makes this mob summon a fireball -------
# Fireball fireball = new Fireball("ghastly_fireball");
# fireball.ExplosionPower = 1;
execute positioned ~ ~1.2 ~ run summon fireball ^ ^0.8 ^1.2 {ExplosionPower:1b,Tags:["ghastly_fireball"]}

#------- Indicates that the owner of the summoned fireball is this mob -------
# fireball.owner = this;
data modify entity @e[type=fireball, tag=ghastly_fireball, sort=nearest, limit=1, distance=..3] Owner set from entity @s UUID

#------- After summoning the fireball, the mob finally throws it -------
# fireball.throw(player.position);
execute as @e[type=fireball, tag=ghastly_fireball, sort=nearest, limit=1, distance=..3] run function infernal_mobs:skills/internal_logic/physics/throw_fireball

#------- After throwing the fireball, resets the timer to its initial value -------
# mob.ghastly_current_time = mob.ghastly_max_time;
scoreboard players operation @s _skills.ghastly.current_time = @s _skills.ghastly.max_time
