#******************* Skills --> Internal Logic --> Events --> Vengeance Player Hit Mob **********************************


#------- Adds a temporary tag, indicating this player was the one that hurt the mob -------
# player.tags.Add("_tmp_vengance_hit_mob");
tag @s add _tmp_vengance_hit_mob

#------- If the mob with tag "vengeance" was hit by the survival player when its timer's skill finished, executes the vengeance skill -------
# if (player.gamemode == survival && mob.Tags.Find("vengeance") == true && mob.vengeance_current_time <= 0):
#   mob.skills.vengeance();
execute if entity @s[gamemode=survival] at @s if entity @e[tag=vengeance, limit=1, sort=nearest, distance=..40, scores={_sk.vngc.crtT=..0}] as @e[tag=vengeance, limit=1, sort=nearest, distance=..40, scores={_sk.vngc.crtT=..0}] at @s run function infernal_mobs:skills/vengeance

#------- Removes a temporary tag added previously -------
# player.tags.Remove("_tmp_vengance_hit_mob");
tag @s remove _tmp_vengance_hit_mob

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Vengeance Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/vengeance/player_hit_mob
