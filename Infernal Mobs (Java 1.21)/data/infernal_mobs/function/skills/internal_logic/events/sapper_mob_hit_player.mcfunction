#******************* Skills --> Internal Logic --> Events --> Sapper Mob Hit Player **********************************


#------- If the player is in survival and doesn't have the hunger effect yet, adds it during 10 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Hunger") == false):
#   player.effects.Add(hunger, 10s, 8);
execute if entity @s[gamemode=survival, nbt=!{active_effects:[{id:"minecraft:hunger"}]}] run effect give @s hunger 10 8 true

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Sapper Mob Hit Player" );
advancement revoke @s only infernal_mobs:skills/sapper/mob_hit_player
