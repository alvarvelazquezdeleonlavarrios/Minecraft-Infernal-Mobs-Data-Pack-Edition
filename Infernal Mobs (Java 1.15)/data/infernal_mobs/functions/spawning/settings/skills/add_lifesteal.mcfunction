#******************* Spawning --> Settings --> Skills --> Add Lifesteal *******************


#------- Adds a new tag named "lifesteal" for this mob -------
# mob.tags.Add("lifesteal");
tag @s add lifesteal

#------- Adds the variables that this mob will use for calling the lifesteal skill functions -------
# mob.AddVariable( lifesteal_current_health, 0);
# mob.AddVariable( lifesteal_attack_damage, 0);
scoreboard players set @s _sk.lfst.crtHlt 0
scoreboard players set @s _sk.lfst.atkDmg 0

#------- Gets the current mob's health value -------
# mob.lifesteal_current_health = mob.health;
execute store result score @s _sk.lfst.crtHlt run data get entity @s Health 1

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skCnt -= $Constants _const.1
