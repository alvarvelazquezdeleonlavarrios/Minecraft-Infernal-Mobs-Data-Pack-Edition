#******************* Skills --> Internal Logic --> Events --> Exhaust Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the hunger effect yet, adds it during 10 seconds. -------
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:17}]}] run effect give @s hunger 10 8 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Exhaust Player Hit Mob" );
advancement revoke @s only infernal_mobs:exhaust/player_hit_mob
