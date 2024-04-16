#******************* Spawning --> Settings --> Skills --> Add Berserk *******************


#------- Adds a new tag named "berserk" for this mob -------
# mob.tags.Add("berserk");
tag @s add berserk

#------- Adds the variables that this mob will use for calling the berserk skill functions -------
# mob.AddVariable( berserk_current_health, 0);
scoreboard players set @s _skills.berserk.current_health 0


#++++++++++++++++++++++ Duplicate mob's Attack Damage ++++++++++++++++++++++++++++
#------- Creates some temporary variables to set some mob's attributes -------
# int tmp_current_attack_damage = new int();
scoreboard objectives add _tmp.current_attack_damage dummy

#------- Adds the temporary variables for setting this mob's attributes -------
# mob.AddVariable( tmp_current_attack_damage, 0 );
scoreboard players set @s _tmp.current_attack_damage 0

#------- Gets the current mob's attack damage value. Then multiplies it by 2. Finally sets the new value -------
# mob.tmp_current_attack_damage = mob.attack_damage;
# mob.tmp_current_attack_damage = mob.tmp_current_attack_damage * 2;
# mob.attack_damage = mob.tmp_current_attack_damage;
execute store result score @s _tmp.current_attack_damage run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players operation @s _tmp.current_attack_damage *= $Constants _const.2
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s _tmp.current_attack_damage
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#----- Removes the temporary variables -------
# deleteVariable( tmp_current_attack_damage );
scoreboard objectives remove _tmp.current_attack_damage

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
