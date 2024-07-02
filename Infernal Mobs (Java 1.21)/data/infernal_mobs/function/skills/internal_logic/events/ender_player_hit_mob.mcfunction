#******************* Skills --> Internal Logic --> Events --> Ender Player Hit Mob **********************************


#------- If the mob with tag "ender" was hit by the survival player when its timer's skill finished, executes the ender skill -------
# if (player.gamemode == survival && mob.Tags.Find("ender") == true && mob.ender_current_time <= 0):
#   mob.skills.ender();
execute if entity @s[gamemode=survival] at @s if entity @e[tag=ender, limit=1, sort=nearest, distance=..40, scores={_skills.ender.current_time=..0}] as @e[tag=Infernal_Mob, tag=ender, limit=1, sort=nearest, distance=..40, scores={_skills.ender.current_time=..0}] at @s run function infernal_mobs:skills/ender

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Ender Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/ender/player_hit_mob
