#******************* Skills --> Vengeance *******************


#------- Generates a generic mob attack damage to the player that hit this mob -------
# if (player.gamemode == survival && player.tags.Find("_tmp_vengance_hit_mob")):
#   damage( player, 4, mob_attack, mob ):
damage @p[gamemode=survival, tag=_tmp_vengance_hit_mob, distance=..40] 4 mob_attack by @s from @s

#------- After adding damage to the player, resets the timer to its initial value -------
# mob.vengeance_current_time = mob.vengeance_max_time;
scoreboard players operation @s _skills.vengeance.current_time = @s _skills.vengeance.max_time
