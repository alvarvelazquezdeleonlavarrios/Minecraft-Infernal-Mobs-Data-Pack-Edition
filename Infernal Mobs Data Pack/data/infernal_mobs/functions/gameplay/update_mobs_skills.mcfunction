#******************* Gameplay --> Update Mobs Skills *******************


#++++++++++++++++++++++++++++++++++ 1UP ++++++++++++++++++++++++++++++++++
#------- If the mob hasn't used the skill to heal itself full, still checking it's current health -------
# if (mob.tags.Find("1up") == true && mob.1up_already_healed == false):
#   mob.skills.1UP();
execute if entity @s[tag=1up, scores={_skills.1up.already_healed=0}] at @s run function infernal_mobs:skills/1up
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Alchimist ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the alchimist skill -------
# if (mob.tags.Find("alchimist") == true && mob.alchimist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Alchimist();
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/alchimist

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("alchimist") == true && mob.alchimist_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.alchimist_current_time--;
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.alchimist.current_time 1

#------- After executing the alchimist skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("alchimist") == true && mob.alchimist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.alchimist_current_time = mob.alchimist_max_time;
execute if entity @s[tag=alchimist, scores={_skills.alchimist.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.alchimist.current_time = @s _skills.alchimist.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Berserk ++++++++++++++++++++++++++++++++
# The berserk skill is executed each time a player gets the "Berserk Mob Hit Player" advancement when a mob with the "berserk" tag hits the player.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Blastoff ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the blastoff skill -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Blastoff();
execute if entity @s[tag=blastoff, scores={_skills.blastoff.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/blastoff

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.blastoff_current_time--;
execute if entity @s[tag=blastoff, scores={_skills.blastoff.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.blastoff.current_time 1

#------- After executing the blastoff skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.blastoff_current_time = mob.blastoff_max_time;
execute if entity @s[tag=blastoff, scores={_skills.blastoff.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.blastoff.current_time = @s _skills.blastoff.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Bulwark ++++++++++++++++++++++++++++++++
# The bulwark skill doesn't need to update because it's a start skill only. Even if the mob spawns with armor items, the game automatically calculates and adds the corresponding damage resistance values.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Cloacking ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the cloacking skill -------
# if (mob.tags.Find("cloacking") == true && mob.cloacking_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.cloacking();
execute if entity @s[tag=cloacking, scores={_skills.cloacking.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/cloacking

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("cloacking") == true && mob.cloacking_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.cloacking_current_time--;
execute if entity @s[tag=cloacking, scores={_skills.cloacking.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.cloacking.current_time 1

#------- After executing the cloacking skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("cloacking") == true && mob.cloacking_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.cloacking_current_time = mob.cloacking_max_time;
execute if entity @s[tag=cloacking, scores={_skills.cloacking.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.cloacking.current_time = @s _skills.cloacking.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Darkness ++++++++++++++++++++++++++++++++
# The darkness skill is executed each time a player gets the "Darkness Player Hit Mob" or the "Darkness Mob Hit Player" advancement when player hits a mob with the "darkness" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Ender ++++++++++++++++++++++++++++++++
# The ender skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Ender Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next ender skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ender") == true && mob.ender_current_time >= 1):
#   mob.ender_current_time--;
execute if entity @s[tag=ender, scores={_skills.ender.current_time=1..}] run scoreboard players remove @s _skills.ender.current_time 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Exhaust ++++++++++++++++++++++++++++++++
# The exhaust skill is executed each time a player gets the "Exhaust Player Hit Mob" or the "Exhaust Mob Hit Player" advancement when player hits a mob with the "exhaust" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Fiery ++++++++++++++++++++++++++++++++
# The fiery skill is executed each time a player gets the "Fiery Player Hit Mob" or the "Fiery Mob Hit Player" advancement when player hits a mob with the "fiery" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Ghastly ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the ghastly skill -------
# if (mob.tags.Find("ghastly") == true && mob.ghastly_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.ghastly();
execute if entity @s[tag=ghastly, scores={_skills.ghastly.current_time=..0}, predicate=infernal_mobs:chasing_player] at @s if entity @p[gamemode=survival, distance=3..40] run function infernal_mobs:skills/ghastly

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ghastly") == true && mob.ghastly_current_time >= 1):
#   mob.ghastly_current_time--;
execute if entity @s[tag=ghastly, scores={_skills.ghastly.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.ghastly.current_time 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++





#++++++++++++++++++++++ ....others skill below here.... ++++++++++++++++++++++
