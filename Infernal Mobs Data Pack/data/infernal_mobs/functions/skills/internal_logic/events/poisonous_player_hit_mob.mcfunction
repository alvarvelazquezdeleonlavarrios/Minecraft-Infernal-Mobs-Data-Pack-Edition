#******************* Skills --> Internal Logic --> Events --> Poisonous Player Hit Mob **********************************


#------- If the player is in survival and doesn't have the poison effect yet, adds it during 7 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Poison") == false):
#   player.effects.Add(poison, 7s, 0);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s poison 7 0 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Poisonous Player Hit Mob" );
advancement revoke @s only infernal_mobs:poisonous/player_hit_mob
