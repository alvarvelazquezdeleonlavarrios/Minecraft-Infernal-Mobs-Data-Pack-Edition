#******************* Skills --> Internal Logic --> Events --> Exhaust Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the mining fatigue effect yet, adds it during 8 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Mining Fatigue") == false):
#   player.effects.Add(Mining Fatigue, 8s, 1);
execute if entity @s[gamemode=survival, nbt=!{active_effects:[{id:"minecraft:mining_fatigue"}]}] run effect give @s mining_fatigue 8 1 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Exhaust Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/exhaust/player_hit_mob
