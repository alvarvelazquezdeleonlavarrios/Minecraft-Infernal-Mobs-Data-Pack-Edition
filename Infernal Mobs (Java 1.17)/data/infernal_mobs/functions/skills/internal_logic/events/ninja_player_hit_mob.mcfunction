#******************* Skills --> Internal Logic --> Events --> Ninja Player Hit Mob **********************************


#------- If the mob with tag "ninja" was hit by the survival player when its timer's skill finished, executes the ninja skill -------
# if (player.gamemode == survival && mob.Tags.Find("ninja") == true && mob.ninja_current_time <= 0):
#   mob.skills.ninja();
execute if entity @s[gamemode=survival] at @s if entity @e[tag=Infernal_Mob, tag=ninja, limit=1, sort=nearest, distance=..40, scores={_sk.ninja.crtT=..0}] as @e[tag=ninja, limit=1, sort=nearest, distance=..40, scores={_sk.ninja.crtT=..0}] at @s run function infernal_mobs:skills/ninja

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Ninja Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/ninja/player_hit_mob
