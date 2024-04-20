#******************* Skills --> Internal Logic --> Events --> Cloacking Player Hit Mob **********************************


#------- The mob executes its cloacking skill when is hit by the player -------
# if (player.advancements.Find("Cloacking Player Hit Mob") == true):
#   mob.cloacking();
execute at @s as @e[tag=cloacking, limit=1, sort=nearest, distance=..30] run function infernal_mobs:skills/cloacking

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Cloacking Player Hit Mob" );
advancement revoke @s only infernal_mobs:cloacking/player_hit_mob
