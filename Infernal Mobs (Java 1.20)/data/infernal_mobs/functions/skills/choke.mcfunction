#******************* Skills --> Choke *******************


#------- Drowns th nearest survival player every second -------
# if (mob.choke_current_drown_time <= 0):
#   damage( player, 2, drown, mob );
#   mob.choke_current_drown_time = 20;
execute if entity @s[scores={_skills.choke.current_drown_time=..0}] at @s run damage @p[gamemode=survival, distance=..40] 2 drown by @s from @s
execute if entity @s[scores={_skills.choke.current_drown_time=..0}] run scoreboard players set @s _skills.choke.current_drown_time 20

#------- If the drown timer hasn't finished, decreases its value -------
# if (mob.choke_current_drown_time >= 1):
#   mob.choke_current_drown_time--;
execute if entity @s[scores={_skills.choke.current_drown_time=1..}] run scoreboard players remove @s _skills.choke.current_drown_time 1
