#******************* Skills --> Gravity *******************


#------- Adds a tag to this mob, indicating that is executing its gravity skill -------
#------- This is important because points the specific mob that pulled the player, which is 1500 block above -------
# mob.tags.Add("is_doing_gravity");
tag @s add is_doing_gravity

#------- Summons the corresponding entities so that the player can get the "Gravity Player Hit Bat Before Explosion" advancement. -------
#------- This is important because during the first "subtick", forces the player to teleport into a high place, where will receive the jump force from a Creeper's explosion -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~4000 ~ run function infernal_mobs:skills/internal_logic/summon/gravity_entities_before_explosion

#------- Depending on the distance between the player an the mob, the "pulling" force is different. Uses the Creeper's explosions method -------
#------- Note: the force is applied at 1500 blocks above, because the player was previously teleported during the first "subtick's" advancements for the physical operations -------
# player.motion.AddForce( creeper.explotionForce, mob.position - player.position - new Vector3( 0, 0, -pull_force ) );


#++++++++++++++++++++++++++++++++++++++++ Pull Force Scales ++++++++++++++++++++++++++++++++++++++++
#------- The distance between the player and the mob is [1,13]. The pull force is small. -------
execute as @p[gamemode=survival, distance=1..13] at @s positioned ~ ~1501.01 ~ facing entity @e[tag=gravity, limit=1, sort=nearest, tag=is_doing_gravity] feet positioned ^ ^ ^-0.61 run function infernal_mobs:skills/internal_logic/physics/apply_force_to_player

#------- The distance between the player and the mob is [14,26]. The pull force is medium. -------
execute as @p[gamemode=survival, distance=14..26] at @s positioned ~ ~1501.01 ~ facing entity @e[tag=gravity, limit=1, sort=nearest, tag=is_doing_gravity] feet positioned ^ ^ ^-0.6093 run function infernal_mobs:skills/internal_logic/physics/apply_force_to_player

#------- The distance between the player and the mob is [27,40]. The pull force is big. -------
execute as @p[gamemode=survival, distance=27..40] at @s positioned ~ ~1501.01 ~ facing entity @e[tag=gravity, limit=1, sort=nearest, tag=is_doing_gravity] feet positioned ^ ^ ^-0.6085 run function infernal_mobs:skills/internal_logic/physics/apply_force_to_player
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Summons the corresponding entities so that the player can get the "Gravity Player Hit Bat After Explosion" advancement. -------
#------- This is important because when first "subtick" finishes (at that point, the player received the jump force), now in this second "subtick" forces the player to teleport back to its initial position, but with the corresponding applied force. -------
execute as @p[gamemode=survival, distance=..40] at @s positioned ~ ~4100 ~ run function infernal_mobs:skills/internal_logic/summon/gravity_entities_after_explosion

#------- Removes the temporary tag to this mob -------
# mob.tags.Remove("is_doing_gravity");
tag @s remove is_doing_gravity

#------- Plays a sound to indicate that the player was "pulled" by the mob. -------
execute as @p[gamemode=survival, distance=..40] at @s run playsound entity.iron_golem.attack block @a ~ ~ ~ 2
