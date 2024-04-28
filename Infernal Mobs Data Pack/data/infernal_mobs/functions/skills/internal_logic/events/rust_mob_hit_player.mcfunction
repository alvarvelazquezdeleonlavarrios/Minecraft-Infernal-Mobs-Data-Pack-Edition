#******************* Skills --> Internal Logic --> Events --> Rust Mob Hit Player **********************************


#------- First, checks if the player is in survival mode so that all the player's armor can be damaged -------
# if (player.gamemode == survival):
#   player.armor.damage();
execute if entity @s[gamemode=survival] positioned ~ ~3000 ~ run function infernal_mobs:skills/internal_logic/events/rust_damage_armor

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Rust Mob Hit Player " );
advancement revoke @s only infernal_mobs:rust/mob_hit_player
