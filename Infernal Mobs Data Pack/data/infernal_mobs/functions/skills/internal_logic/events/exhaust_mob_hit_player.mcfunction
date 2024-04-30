#******************* Skills --> Internal Logic --> Events --> Exhaust Mob Hit Player **********************************


#------- If the player is in survival and doesn't have the mining fatigue effect yet, adds it during 8 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Mining Fatigue") == false):
#   player.effects.Add(Mining Fatigue, 8s, 1);
execute if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:4}]}] run effect give @s mining_fatigue 8 1 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Exhaust Mob Hit Player" );
advancement revoke @s only infernal_mobs:exhaust/mob_hit_player
