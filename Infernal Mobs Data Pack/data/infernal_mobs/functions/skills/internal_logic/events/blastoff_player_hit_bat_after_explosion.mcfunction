#******************* Skills --> Internal Logic --> Events --> Blastoff Player Hit Bat After Explosion **********************************


#------- Returns the player its initial suvival physics and gamemode -------
# player.gamemode = minecraft:survival;
gamemode survival

#------- Returns the player to its inital position -------
# player.position = player.position - new Vector3(0, 2000, 0);
tp @s ~ ~-2000 ~

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Blastoff Player Hit Bat After Explosion" );
advancement revoke @s only infernal_mobs:blastoff/player_hit_bat_after_explosion
