#******************* Spawning --> Settings --> Skills --> Add Darkness *******************

#------- Adds a new tag named "darkness" for this mob -------
# mob.tags.Add("darkness");
tag @s add darkness

#------- Adds the variables that this mob will use for calling the berserk skill functions -------
# mob.AddVariable( darkness_current_chance, 0);
scoreboard players set @s _skills.darkness.current_chance 0

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
