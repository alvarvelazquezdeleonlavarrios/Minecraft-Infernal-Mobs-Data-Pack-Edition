#******************* Skills --> Internal Logic --> Events --> Poisonous Mob Hit Player **********************************


#------- If the player is in survival and doesn't have the poison effect yet, adds it during 7 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Poison") == false):
#   player.effects.Add(poison, 7s, 0);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:19}]}] run effect give @s poison 7 0 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Poisonous Mob Hit Player" );
advancement revoke @s only infernal_mobs:skills/poisonous/mob_hit_player