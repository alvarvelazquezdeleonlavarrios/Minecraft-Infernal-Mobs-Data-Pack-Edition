#******************* Skills --> Quicksand *******************


#------- If the plater doesn't have the slowness effect yet, adds it during 45 seconds. -------
# if (player.gamemode == survival && player.effects.Find("Slowness") == false):
#   player.effects.Add("Slowness", 45s, 1);
execute if entity @p[gamemode=survival, distance=..40, nbt=!{ActiveEffects:[{Id:2}]}] run effect give @p[gamemode=survival, distance=..40] slowness 45 1 true

#------- After executing the quicksand skill, resets the timer to its initial value -------
# mob.quicksand_current_time = mob.quicksand_max_time;
scoreboard players operation @s _sk.qucksnd.crtT = @s _sk.qucksnd.mxT