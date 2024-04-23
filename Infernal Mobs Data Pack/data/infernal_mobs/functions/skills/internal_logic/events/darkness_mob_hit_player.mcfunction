#******************* Skills --> Internal Logic --> Events --> Darkness Mob Hit Player **********************************


#------- If the player is in survival and doesn't have the blindness effect yet, adds it during 5 seconds. -------
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:15}]}] run effect give @s blindness 5 1 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Darkness Mob Hit Player" );
advancement revoke @s only infernal_mobs:darkness/mob_hit_player
