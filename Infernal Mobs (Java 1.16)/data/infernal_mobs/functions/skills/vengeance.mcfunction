#******************* Skills --> Vengeance *******************


#------- Adds minimum instant damage effect to the player that hit this mob -------
# if (player.gamemode == survival && player.tags.Find("_tmp_vengance_hit_mob")):
#   player.effects.Add(instant_damage, 1s, 0);
effect give @p[gamemode=survival, tag=_tmp_vengance_hit_mob, distance=..40] instant_damage 1 0 false

#------- After stealing the player's selected item, resets the timer to its initial value -------
# mob.vengeance_current_time = mob.vengeance_max_time;
scoreboard players operation @s _sk.vngc.crtT = @s _sk.vngc.mxT
