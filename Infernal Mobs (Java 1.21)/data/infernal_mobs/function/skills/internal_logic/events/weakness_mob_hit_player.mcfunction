#******************* Skills --> Internal Logic --> Events --> Weakness Mob Hit Player **********************************


#------- If the player is in survival and doesn't have the weakness effect yet, adds it during 7 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Weakness") == false):
#   player.effects.Add(weakness, 7s, 0);
execute if entity @s[gamemode=survival, nbt=!{active_effects:[{id:"minecraft:weakness"}]}] run effect give @s weakness 7 0 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Weakness Mob Hit Player" );
advancement revoke @s only infernal_mobs:skills/weakness/mob_hit_player
