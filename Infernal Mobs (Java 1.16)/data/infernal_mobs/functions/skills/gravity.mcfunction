#******************* Skills --> Gravity *******************


#------- Summons the corresponding entities so that the player can get the "Gravity Player Hit Bat Before Explosion" advancement. -------
#------- This is important because during the first "subtick", forces the player to teleport into a high place, where will receive the push force from a Creeper's explosion -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~4000 ~ run function infernal_mobs:skills/internal_logic/summon/gravity_entities_before_explosion

#------- Applies the player a push force, ensuring that it's at they height. Uses the Creeper's explosions method -------
# player.motion.AddForce( creeper.explotionForce, new Vector3( 0, 0, push_force ) );
execute as @p[gamemode=survival, distance=..40] at @s rotated ~ 0.0 positioned ^ ^1.4 ^0.6 run function infernal_mobs:skills/internal_logic/physics/apply_force_to_player

#------- Summons the corresponding entities so that the player can get the "Gravity Player Hit Bat After Explosion" advancement. -------
#------- This is important because when first "subtick" finishes (at that point, the player received the push force), now in this second "subtick" forces the player to teleport back to its initial position, but with the corresponding applied force. -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~4100 ~ run function infernal_mobs:skills/internal_logic/summon/gravity_entities_after_explosion

#------- Plays a sound to indicate that the player was "pushed" by the mob. -------
# playsound( "entity.iron_golem.attack" );
execute as @p[gamemode=survival, distance=..40] at @s run playsound entity.iron_golem.attack block @a ~ ~ ~ 2
