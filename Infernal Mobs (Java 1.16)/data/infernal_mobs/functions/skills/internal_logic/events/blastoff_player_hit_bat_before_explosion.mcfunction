#******************* Skills --> Internal Logic --> Events --> Blastoff Player Hit Bat Before Explosion **********************************


#------- Gives the player temporary the creative gamemode physics to apply they the jump force -------
# player.gamemode = minecraft:creative;
gamemode creative

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Blastoff Player Hit Bat Before Explosion" );
advancement revoke @s only infernal_mobs:skills/blastoff/player_hit_bat_before_explosion
