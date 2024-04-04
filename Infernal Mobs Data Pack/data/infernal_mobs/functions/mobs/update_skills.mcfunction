#******************* Mobs --> Update Skills *******************


#++++++++++++++++++++++ Alchimist ++++++++++++++++++++++
#------- If the current timer ends, the mob executes the alchimist skill -------
# if (mob.tags.Find("Alchimist") == true && mob.alchimist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Alchimist();
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/alchimist

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("Alchimist") == true && mob.alchimist_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.alchimist_current_time--;
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.alchimist.current_time 1

#------- After executing the alchimist skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("Alchimist") == true && mob.alchimist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.alchimist_current_time = mob.alchimist_max_time;
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.alchimist.current_time = @s _skills.alchimist.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++ ....others skill below here.... ++++++++++++++++++++++
