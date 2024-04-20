#******************* Spawning --> Settings --> Skills --> Add Cloacking *******************

#------- Adds a new tag named "cloacking" for this mob -------
# mob.tags.Add("cloacking");
tag @s add cloacking

#------- Adds the variables that this mob will use for calling the berserk skill functions -------
# mob.AddVariable( cloacking_current_chance, 0);
scoreboard players set @s _skills.cloacking.current_chance 0

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
