#******************* Skills --> Internal Logic --> Events --> Gravity Player Hit Bat Before Explosion **********************************


#------- Gives the player temporary the creative gamemode physics to apply they the jump force -------
# player.gamemode = minecraft:creative;
gamemode creative

#------- Teleports the player temporary into the "space", where will receive the jump force by a Creeper's explosion -------
# player.position = player.position + new Vector3(0, 1500, 0);
tp @s ~ ~1500 ~

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Gravity Player Hit Bat Before Explosion" );
advancement revoke @s only infernal_mobs:gravity/player_hit_bat_before_explosion
