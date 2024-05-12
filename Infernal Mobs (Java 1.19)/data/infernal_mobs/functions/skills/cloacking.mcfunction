#******************* Skills --> Cloacking *******************


#------- If the mob doesn't have the invisibility effect yet, adds it during 6 seconds. -------
# if (mob.effects.Find("Invisibility") == false):
#   mob.effects.Add("Invisibility", 1, 6);
execute if entity @s[nbt=!{ActiveEffects:[{Id:14}]}] run effect give @s invisibility 6 1 true
