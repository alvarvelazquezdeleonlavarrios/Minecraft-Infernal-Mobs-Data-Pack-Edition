#******************* Skills --> Internal Logic --> Events --> Choke Player Hit Mob **********************************


#------- If the mob with tag "choke" was hit by the survival player when is drowning they, resets the mobs counters. -------
# if (player.gamemode == survival && mob.Tags.Find("choke") == true && mob.choke_current_time <= 0):
#   mob.choke_current_drown_time = 20;
#   mob.choke_current_time = mob.choke_max_time;
execute if entity @s[gamemode=survival] at @s if entity @e[tag=choke, limit=1, sort=nearest, distance=..40, scores={_skills.choke.current_time=..0}] as @e[tag=choke, limit=1, sort=nearest, distance=..40, scores={_skills.choke.current_time=..0}] run scoreboard players set @s _skills.choke.current_drown_time 20

execute if entity @s[gamemode=survival] at @s if entity @e[tag=choke, limit=1, sort=nearest, distance=..40, scores={_skills.choke.current_time=..0}] as @e[tag=choke, limit=1, sort=nearest, distance=..40, scores={_skills.choke.current_time=..0}] run scoreboard players operation @s _skills.choke.current_time = @s _skills.choke.max_time

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Choke Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/choke/player_hit_mob
