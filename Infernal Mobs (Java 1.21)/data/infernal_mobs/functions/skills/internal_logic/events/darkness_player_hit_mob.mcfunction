#******************* Skills --> Internal Logic --> Events --> Darkness Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the blindness effect yet, adds it during 5 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Blindness") == false):
#   player.effects.Add(blindness, 5s, 1);
execute if entity @s[gamemode=survival, nbt=!{active_effects:[{id:"minecraft:blindness"}]}] run effect give @s blindness 5 1 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Darkness Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/darkness/player_hit_mob
