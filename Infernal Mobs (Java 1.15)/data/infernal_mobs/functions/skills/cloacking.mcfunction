#******************* Skills --> Cloacking *******************


#------- If the mob doesn't have the invisibility effect yet, adds it during 6 seconds. -------
# if (mob.effects.Find("Invisibility") == false):
#   mob.effects.Add("Invisibility", 1, 6);
execute if entity @s[nbt=!{ActiveEffects:[{Id:14}]}] run effect give @s invisibility 6 1 true

#------- After executing the cloacking skill, resets the timer to its initial value -------
# mob.cloacking_current_time = mob.cloacking_max_time;
scoreboard players operation @s _sk.clck.crtT = @s _sk.clck.mxT
