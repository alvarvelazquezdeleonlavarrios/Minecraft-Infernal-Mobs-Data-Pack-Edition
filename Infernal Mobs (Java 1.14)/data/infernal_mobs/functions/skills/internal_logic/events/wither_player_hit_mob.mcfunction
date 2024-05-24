#******************* Skills --> Internal Logic --> Events --> Wither Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the wither effect yet, adds it during 6 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Wither") == false):
#   player.effects.Add(wither, 6s, 0);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:20}]}] run effect give @s wither 6 0 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Wither Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/wither/player_hit_mob
