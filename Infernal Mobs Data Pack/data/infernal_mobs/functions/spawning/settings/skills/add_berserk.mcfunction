#******************* Spawning --> Settings --> Skills --> Add Berserk *******************


#------- Adds a new tag named "berserk" for this mob -------
# mob.tags.Add("berserk");
tag @s add berserk

#------- Adds the variables that this mob will use for calling the berserk skill functions -------
# mob.AddVariable( berserk_current_health, 0);
# mob.AddVariable( current_attack_damage, 0);
scoreboard players set @s _skills.berserk.current_health 0
scoreboard players set @s _skills.berserk.current_attack_damage 0

#----- Removes the temporary variables -------
# deleteVariable( tmp_current_attack_damage );
scoreboard objectives remove _tmp.current_attack_damage

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
