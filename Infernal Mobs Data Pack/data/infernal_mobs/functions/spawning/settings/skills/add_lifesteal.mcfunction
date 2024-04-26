#******************* Spawning --> Settings --> Skills --> Add Lifesteal *******************


#------- Adds a new tag named "lifesteal" for this mob -------
# mob.tags.Add("lifesteal");
tag @s add lifesteal

#------- Adds the variables that this mob will use for calling the lifesteal skill functions -------
# mob.AddVariable( lifesteal_current_health, 0);
# mob.AddVariable( lifesteal_attack_damage, 0);
scoreboard players set @s _skills.lifesteal.current_health 0
scoreboard players set @s _skills.lifesteal.attack_damage 0

#------- Gets the current mob's attack damage -------
# mob.lifesteal_current_health = mob.health;
# mob.lifesteal_attack_damage = mob.attack_damage;
execute store result score @s _skills.lifesteal.current_health run data get entity @s Health 1
execute store result score @s _skills.lifesteal.attack_damage run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base 1

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
