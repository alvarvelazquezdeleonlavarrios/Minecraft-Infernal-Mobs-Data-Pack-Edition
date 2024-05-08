#******************* Skills --> Internal Logic --> Events --> Rust Player Hit Mob **********************************


#------- First, checks if the player is in survival mode so that the item in the main hand can be damaged -------
# if (player.gamemode == survival):
#   player.selectedItem.damage();
execute if entity @s[gamemode=survival] positioned ~ ~3000 ~ run function infernal_mobs:skills/internal_logic/events/rust_damage_weapon

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Rust Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/rust/player_hit_mob
