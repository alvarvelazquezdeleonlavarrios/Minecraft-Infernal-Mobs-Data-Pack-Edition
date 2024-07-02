#******************* Spawning --> Settings --> Skills --> Add 1UP *******************


#------- Adds a new tag named "1up" for this mob -------
# mob.tags.Add("1up");
tag @s add 1up

#------- Adds the variables that this mob will use for calling the 1up skill functions -------
# mob.AddVariable( 1up_already_healed, 0);
# mob.AddVariable( 1up_health_20percent, 0);
# mob.AddVariable( 1up_current_health, 0);
# mob.AddVariable( 1up_max_health, 0);
scoreboard players set @s _skills.1up.already_healed 0
scoreboard players set @s _skills.1up.health_20percent 0
scoreboard players set @s _skills.1up.current_health 0
scoreboard players set @s _skills.1up.max_health 0

#------- Gets this mob's current health and max health -------
# mob.1up_current_health = mob.health;
# mob.1up_max_health = mob.health;
execute store result score @s _skills.1up.current_health run data get entity @s Health 1
execute store result score @s _skills.1up.max_health run data get entity @s Health 1

#------- Calculates the 20% of all mob's health -------
# mob.1up_health_20percent = mob.health / 5;
execute store result score @s _skills.1up.health_20percent run data get entity @s Health 1
scoreboard players operation @s _skills.1up.health_20percent /= $Constants _const.5

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
