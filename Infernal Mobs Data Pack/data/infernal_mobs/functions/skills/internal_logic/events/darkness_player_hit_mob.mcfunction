#******************* Skills --> Internal Logic --> Events --> Darkness Player Hit Mob **********************************


#------- The mob executes its darkness skill when is hit by the player. -------
# if (player.advancements.Find("Darkness Player Hit Mob") == true):
#   mob.darkness();
execute as @e[tag=darkness, limit=1, sort=nearest, distance=..30] run function infernal_mobs:skills/darkness

#------- If the current chance matches between 20 and 89 (70%), the player is in survival and doesn't have the blindness effect yet, adds it. -------
# if (mob.darkness_current_chance == [20,89] && player.gamemode == survival && player.effects.Find("Blindness") == false):
#   player.effects.Add("Blindness", 1, 5);
execute if score @e[tag=darkness, limit=1, sort=nearest, distance=..30] _skills.darkness.current_chance matches 20..89 if entity @s[gamemode=survival, nbt=!{ActiveEffects:[{Id:15}]}] run effect give @s blindness 5 1 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Darkness Player Hit Mob" );
advancement revoke @s only infernal_mobs:darkness/player_hit_mob
