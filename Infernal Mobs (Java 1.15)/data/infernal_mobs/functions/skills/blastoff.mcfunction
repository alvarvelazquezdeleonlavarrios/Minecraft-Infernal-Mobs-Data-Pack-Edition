#******************* Skills --> Blastoff *******************


#------- Summons the corresponding entities so that the player can get the "Blastoff Player Hit Bat Before Explosion" advancement. -------
#------- This is important because during the first "subtick", forces the player to teleport into a high place, where will receive the jump force from a Creeper's explosion -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~5000 ~ run function infernal_mobs:skills/internal_logic/summon/blastoff_entities_before_explosion

#------- Applies a single jump force to the player. Uses the Creeper's explosions method -------
# player.motion.AddForce( creeper.explotionForce, new Vector3(0, 0.45, 0) );
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~0.45 ~ run function infernal_mobs:skills/internal_logic/physics/apply_force_to_player

#------- Summons the corresponding entities so that the player can get the "Blastoff Player Hit Bat After Explosion" advancement. -------
#------- This is important because when first "subtick" finishes (at that point, the player received the jump force), now in this second "subtick" forces the player to teleport back to its initial position, but with the corresponding applied force. -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~5100 ~ run function infernal_mobs:skills/internal_logic/summon/blastoff_entities_after_explosion

#------- Plays a sound to indicate that the player was launched into the air -------
execute as @p[gamemode=survival, distance=..40] at @s run playsound entity.slime.jump block @a ~ ~ ~ 2
