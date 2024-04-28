#******************* Gameplay --> Update Mobs Skills *******************


#++++++++++++++++++++++++++++++++++ 1UP ++++++++++++++++++++++++++++++++++
#------- If the mob hasn't used the skill to heal itself full, still checking it's current health -------
# if (mob.tags.Find("1up") == true && mob.1up_already_healed == false):
#   mob.skills.1UP();
execute if entity @s[tag=1up, scores={_skills.1up.already_healed=0}] at @s run function infernal_mobs:skills/1up
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Alchemist ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the alchemist skill -------
# if (mob.tags.Find("alchemist") == true && mob.alchemist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Alchemist();
execute if entity @s[tag=alchemist, scores={_skills.alchemist.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/alchemist

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("alchemist") == true && mob.alchemist_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.alchemist_current_time--;
execute if entity @s[tag=alchemist, scores={_skills.alchemist.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.alchemist.current_time 1

#------- After executing the alchemist skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("alchemist") == true && mob.alchemist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.alchemist_current_time = mob.alchemist_max_time;
execute if entity @s[tag=alchemist, scores={_skills.alchemist.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.alchemist.current_time = @s _skills.alchemist.max_time
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


#++++++++++++++++++++++++++++++++ Gravity ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the gravity skill -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.gravity();
execute if entity @s[tag=gravity, scores={_skills.gravity.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/gravity

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.gravity_current_time--;
execute if entity @s[tag=gravity, scores={_skills.gravity.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.gravity.current_time 1

#------- After executing the gravity skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.gravity_current_time = mob.gravity_max_time;
execute if entity @s[tag=gravity, scores={_skills.gravity.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.gravity.current_time = @s _skills.gravity.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Lifesteal ++++++++++++++++++++++++++++++++
# The lifesteal skill is executed each time a player gets the "Lifesteal Mob Hit Player" advancement when a mob with the "lifesteal" tag hits the player.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Ninja ++++++++++++++++++++++++++++++++
# The ninja skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Ninja Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next ninja skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ninja") == true && mob.ninja_current_time >= 1):
#   mob.ninja_current_time--;
execute if entity @s[tag=ninja, scores={_skills.ninja.current_time=1..}] run scoreboard players remove @s _skills.ninja.current_time 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Poisonous ++++++++++++++++++++++++++++++++
# The poisonous skill is executed each time a player gets the "Poisonous Player Hit Mob" or the "Poisonous Mob Hit Player" advancement when player hits a mob with the "poisonous" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Quicksand ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the quicksand skill -------
# if (mob.tags.Find("quicksand") == true && mob.quicksand_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.quicksand();
execute if entity @s[tag=quicksand, scores={_skills.quicksand.current_time=1}, predicate=infernal_mobs:chasing_player] at @s run function infernal_mobs:skills/quicksand

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("quicksand") == true && mob.quicksand_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.quicksand_current_time--;
execute if entity @s[tag=quicksand, scores={_skills.quicksand.current_time=1..}, predicate=infernal_mobs:chasing_player] run scoreboard players remove @s _skills.quicksand.current_time 1

#------- After executing the quicksand skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("quicksand") == true && mob.quicksand_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.quicksand_current_time = mob.quicksand_max_time;
execute if entity @s[tag=quicksand, scores={_skills.quicksand.current_time=..0}, predicate=infernal_mobs:chasing_player] run scoreboard players operation @s _skills.quicksand.current_time = @s _skills.quicksand.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Regen ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the regen skill -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time <= 0):
#   mob.skills.regen();
execute if entity @s[tag=regen, scores={_skills.regen.current_time=1}] at @s run function infernal_mobs:skills/regen

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time >= 1):
#   mob.regen_current_time--;
execute if entity @s[tag=regen, scores={_skills.regen.current_time=1..}] run scoreboard players remove @s _skills.regen.current_time 1

#------- After executing the regen skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time <= 0):
#   mob.regen_current_time = mob.regen_max_time;
execute if entity @s[tag=regen, scores={_skills.regen.current_time=..0}] run scoreboard players operation @s _skills.regen.current_time = @s _skills.regen.max_time
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Rust ++++++++++++++++++++++++++++++++
# The rust skill is executed each time a player gets the "rust Player Hit Mob" or the "rust Mob Hit Player" advancement when player hits a mob with the "rust" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#++++++++++++++++++++++ ....others skill below here.... ++++++++++++++++++++++
