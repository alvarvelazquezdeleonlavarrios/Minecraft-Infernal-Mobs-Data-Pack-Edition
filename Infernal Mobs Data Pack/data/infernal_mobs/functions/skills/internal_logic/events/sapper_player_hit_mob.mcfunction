#******************* Skills --> Internal Logic --> Events --> Sapper Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the hunger effect yet, adds it during 10 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Hunger") == false):
#   player.effects.Add(hunger, 10s, 8);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:17}]}] run effect give @s hunger 10 8 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Sapper Player Hit Mob" );
advancement revoke @s only infernal_mobs:sapper/player_hit_mob
