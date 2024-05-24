#******************* Gameplay --> Skills --> Update *******************


#++++++++++++++++++++++++++++++++++ 1UP ++++++++++++++++++++++++++++++++++
#------- If the mob hasn't used the skill to heal itself full, still checking it's current health -------
# if (mob.tags.Find("1up") == true && mob.1up_already_healed == false):
#   mob.skills.1UP();
execute if entity @s[tag=1up, scores={_sk.1up.alrHld=0}] at @s run function infernal_mobs:skills/1up
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Alchemist ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the alchemist skill -------
# if (mob.tags.Find("alchemist") == true && mob.alchemist_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Alchemist();
execute if entity @s[tag=alchemist, scores={_sk.alch.crtT=..0}] at @s if entity @p[gamemode=survival, distance=..40] run function infernal_mobs:skills/alchemist

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("alchemist") == true && mob.alchemist_current_time >= 1):
#   mob.alchemist_current_time--;
execute if entity @s[tag=alchemist, scores={_sk.alch.crtT=1..}] run scoreboard players remove @s _sk.alch.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Berserk ++++++++++++++++++++++++++++++++
# The berserk skill is divided in two parts: 
#   - The first is executed each time a player gets the "Berserk Mob Hit Player" advancement when a mob with the "berserk" tag hits the player. 
#   - The second is executed every tick to update the mob's attack damage value depending on the current game difficulty. 
# if (mob.tags.Find("berserk") == true):
#   mob.berserkUpdate();
execute if entity @s[tag=berserk] run function infernal_mobs:skills/berserk_update
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Blastoff ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the blastoff skill -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.Blastoff();
execute if entity @s[tag=blastoff, scores={_sk.blst.crtT=1}] at @s run function infernal_mobs:skills/blastoff

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.blastoff_current_time--;
execute if entity @s[tag=blastoff, scores={_sk.blst.crtT=1..}] run scoreboard players remove @s _sk.blst.crtT 1

#------- After executing the blastoff skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("blastoff") == true && mob.blastoff_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.blastoff_current_time = mob.blastoff_max_time;
execute if entity @s[tag=blastoff, scores={_sk.blst.crtT=..0}] run scoreboard players operation @s _sk.blst.crtT = @s _sk.blst.mxT
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Bulwark ++++++++++++++++++++++++++++++++
# The bulwark skill doesn't need to update because it's a start skill only. Even if the mob spawns with armor items, the game automatically calculates and adds the corresponding damage resistance values.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Cloacking ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the cloacking skill -------
# if (mob.tags.Find("cloacking") == true && mob.cloacking_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.cloacking();
execute if entity @s[tag=cloacking, scores={_sk.clck.crtT=..0}] at @s if entity @p[gamemode=survival, distance=..40] run function infernal_mobs:skills/cloacking

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("cloacking") == true && mob.cloacking_current_time >= 1):
#   mob.cloacking_current_time--;
execute if entity @s[tag=cloacking, scores={_sk.clck.crtT=1..}] run scoreboard players remove @s _sk.clck.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Darkness ++++++++++++++++++++++++++++++++
# The darkness skill is executed each time a player gets the "Darkness Player Hit Mob" or the "Darkness Mob Hit Player" advancement when player hits a mob with the "darkness" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Ender ++++++++++++++++++++++++++++++++
# The ender skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Ender Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next ender skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ender") == true && mob.ender_current_time >= 1):
#   mob.ender_current_time--;
execute if entity @s[tag=ender, scores={_sk.end.crtT=1..}] run scoreboard players remove @s _sk.end.crtT 1
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
execute if entity @s[tag=ghastly, scores={_sk.ghtl.crtT=..0}] at @s if entity @p[gamemode=survival, distance=3..40] run function infernal_mobs:skills/ghastly

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ghastly") == true && mob.ghastly_current_time >= 1):
#   mob.ghastly_current_time--;
execute if entity @s[tag=ghastly, scores={_sk.ghtl.crtT=1..}] run scoreboard players remove @s _sk.ghtl.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Gravity ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the gravity skill -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.gravity();
execute if entity @s[tag=gravity, scores={_sk.grvt.crtT=1}] at @s run function infernal_mobs:skills/gravity

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time >= 1 && mob.isChasingPlayer() == true):
#   mob.gravity_current_time--;
execute if entity @s[tag=gravity, scores={_sk.grvt.crtT=1..}] run scoreboard players remove @s _sk.grvt.crtT 1

#------- After executing the gravity skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("gravity") == true && mob.gravity_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.gravity_current_time = mob.gravity_max_time;
execute if entity @s[tag=gravity, scores={_sk.grvt.crtT=..0}] run scoreboard players operation @s _sk.grvt.crtT = @s _sk.grvt.mxT
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Lifesteal ++++++++++++++++++++++++++++++++
# The lifesteal skill is executed each time a player gets the "Lifesteal Mob Hit Player" advancement when a mob with the "lifesteal" tag hits the player. 

#------- Only in the update part gets the mob's current attack damage depending on the current game difficulty. -------
# if (mob.tags.Find("lifesteal") == true):
#   mob.lifesteal_attack_damage = mob.attack_damage;
execute if entity @s[tag=lifesteal] run execute store result score @s _sk.lfst.atkDmg run data get entity @s Attributes[{Name:"generic.attackDamage"}].Base 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Ninja ++++++++++++++++++++++++++++++++
# The ninja skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Ninja Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next ninja skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("ninja") == true && mob.ninja_current_time >= 1):
#   mob.ninja_current_time--;
execute if entity @s[tag=ninja, scores={_sk.ninja.crtT=1..}] run scoreboard players remove @s _sk.ninja.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Poisonous ++++++++++++++++++++++++++++++++
# The poisonous skill is executed each time a player gets the "Poisonous Player Hit Mob" or the "Poisonous Mob Hit Player" advancement when player hits a mob with the "poisonous" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Quicksand ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the quicksand skill -------
# if (mob.tags.Find("quicksand") == true && mob.quicksand_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.quicksand();
execute if entity @s[tag=quicksand, scores={_sk.qucksnd.crtT=..0}] at @s if entity @p[gamemode=survival, distance=..40] run function infernal_mobs:skills/quicksand

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("quicksand") == true && mob.quicksand_current_time >= 1):
#   mob.quicksand_current_time--;
execute if entity @s[tag=quicksand, scores={_sk.qucksnd.crtT=1..}] run scoreboard players remove @s _sk.qucksnd.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Regen ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the regen skill -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time <= 0):
#   mob.skills.regen();
execute if entity @s[tag=regen, scores={_sk.regen.crtT=1}] at @s run function infernal_mobs:skills/regen

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time >= 1):
#   mob.regen_current_time--;
execute if entity @s[tag=regen, scores={_sk.regen.crtT=1..}] run scoreboard players remove @s _sk.regen.crtT 1

#------- After executing the regen skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("regen") == true && mob.regen_current_time <= 0):
#   mob.regen_current_time = mob.regen_max_time;
execute if entity @s[tag=regen, scores={_sk.regen.crtT=..0}] run scoreboard players operation @s _sk.regen.crtT = @s _sk.regen.mxT
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Sapper ++++++++++++++++++++++++++++++++
# The sapper skill is executed each time a player gets the "Sapper Player Hit Mob" or the "Sapper Mob Hit Player" advancement when player hits a mob with the "sapper" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Sprint ++++++++++++++++++++++++++++++++
# The sprint skill doesn't need to update because it's a start skill only.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Sticky ++++++++++++++++++++++++++++++++
# The sticky skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Sticky Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next sticky skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("sticky") == true && mob.sticky_current_time >= 1):
#   mob.sticky_current_time--;
execute if entity @s[tag=sticky, scores={_sk.sticky.crtT=1..}] run scoreboard players remove @s _sk.sticky.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Storm ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the storm skill -------
# if (mob.tags.Find("storm") == true && mob.storm_current_time <= 0 && mob.isChasingPlayer() == true):
#   mob.skills.storm();
execute if entity @s[tag=storm, scores={_sk.storm.crtT=..0}] at @s if entity @p[gamemode=survival, distance=5..40] run function infernal_mobs:skills/storm

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("storm") == true && mob.storm_current_time >= 1):
#   mob.storm_current_time--;
execute if entity @s[tag=storm, scores={_sk.storm.crtT=1..}] run scoreboard players remove @s _sk.storm.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Unyielding ++++++++++++++++++++++++++++++++
# The unyielding skill doesn't need to update because it's a start skill only.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Vengeance ++++++++++++++++++++++++++++++++
# The vengeance skill is executed each time the mob's current_time matches 0 and the player hits it, getting the "Vengeance Player Hit Mob" advancement. This update function just decreases the mob's current_time for the next vengeance skill execution.

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("vengeance") == true && mob.vengeance_current_time >= 1):
#   mob.vengeance_current_time--;
execute if entity @s[tag=vengeance, scores={_sk.vngc.crtT=1..}] run scoreboard players remove @s _sk.vngc.crtT 1
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Weakness ++++++++++++++++++++++++++++++++
# The weakness skill is executed each time a player gets the "Weakness Player Hit Mob" or the "Weakness Mob Hit Player" advancement when player hits a mob with the "weakness" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Webber ++++++++++++++++++++++++++++++++
#------- If the current timer ends, the mob executes the webber skill at players position -------
# if (mob.tags.Find("webber") == true && mob.webber_current_time <= 0):
#   mob.skills.webber( player.position );
execute if entity @s[tag=webber, scores={_sk.webber.crtT=1}] at @p[gamemode=survival, distance=..40] run function infernal_mobs:skills/webber

#------- If the current timer hasn't finished, decreases its value -------
# if (mob.tags.Find("webber") == true && mob.webber_current_time >= 1):
#   mob.webber_current_time--;
execute if entity @s[tag=webber, scores={_sk.webber.crtT=1..}] run scoreboard players remove @s _sk.webber.crtT 1

#------- After executing the webber skill, if the current timer ends, resets the timer to its initial value -------
# if (mob.tags.Find("webber") == true && mob.webber_current_time <= 0):
#   mob.webber_current_time = mob.webber_max_time;
execute if entity @s[tag=webber, scores={_sk.webber.crtT=..0}] run scoreboard players operation @s _sk.webber.crtT = @s _sk.webber.mxT
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++ Wither ++++++++++++++++++++++++++++++++
# The wither skill is executed each time a player gets the "Wither Player Hit Mob" or the "Wither Mob Hit Player" advancement when player hits a mob with the "wither" tag, or viceversa.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
