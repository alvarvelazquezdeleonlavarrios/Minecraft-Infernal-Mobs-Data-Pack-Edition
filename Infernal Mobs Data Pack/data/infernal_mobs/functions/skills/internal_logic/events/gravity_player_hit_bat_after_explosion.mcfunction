#******************* Skills --> Internal Logic --> Events --> Gravity Player Hit Bat After Explosion **********************************


#------- Returns the player its initial suvival physics and gamemode -------
# player.gamemode = minecraft:survival;
gamemode survival

#------- Returns the player to its inital position -------
# player.position = player.position - new Vector3(0, 1500, 0);
tp @s ~ ~-1500 ~

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Gravity Player Hit Bat After Explosion" );
advancement revoke @s only infernal_mobs:gravity/player_hit_bat_after_explosion
