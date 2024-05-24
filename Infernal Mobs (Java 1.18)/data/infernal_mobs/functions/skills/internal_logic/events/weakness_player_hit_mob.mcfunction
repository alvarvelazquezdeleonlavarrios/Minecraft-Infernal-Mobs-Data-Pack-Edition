#******************* Skills --> Internal Logic --> Events --> Weakness Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the weakness effect yet, adds it during 7 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Weakness") == false):
#   player.effects.Add(weakness, 7s, 0);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:18}]}] run effect give @s weakness 7 0 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Weakness Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/weakness/player_hit_mob
