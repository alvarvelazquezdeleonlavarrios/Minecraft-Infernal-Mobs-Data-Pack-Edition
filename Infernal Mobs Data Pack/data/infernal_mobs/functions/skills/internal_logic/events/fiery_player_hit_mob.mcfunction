#******************* Skills --> Internal Logic --> Events --> Fiery Player Hit Mob **********************************


#------- If the player is in survival and has no fire, throws a small fireball from above to burn they -------
# if (player.gamemode == survival && player.onFire() == false):
#   player.setOnFire();
execute if entity @s[gamemode=survival, nbt={Fire:-20s}] at @s run function infernal_mobs:skills/internal_logic/summon/fiery_small_fireball

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Fiery Player Hit Mob" );
advancement revoke @s only infernal_mobs:fiery/player_hit_mob
