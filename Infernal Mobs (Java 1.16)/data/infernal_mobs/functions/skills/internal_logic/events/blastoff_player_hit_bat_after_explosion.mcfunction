#******************* Skills --> Internal Logic --> Events --> Blastoff Player Hit Bat After Explosion **********************************


#------- Returns the player its initial suvival physics and gamemode -------
# player.gamemode = minecraft:survival;
gamemode survival

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Blastoff Player Hit Bat After Explosion" );
advancement revoke @s only infernal_mobs:skills/blastoff/player_hit_bat_after_explosion
