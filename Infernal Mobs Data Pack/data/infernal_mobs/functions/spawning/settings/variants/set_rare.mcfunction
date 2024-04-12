#******************* Spawning --> Settings --> Variants --> Set Rare *******************


#------- Adds static variables that this mob will use during all the game -------
# mob.AddVariable( healthbar_current_id, 0 );
scoreboard players set @s _healthbar.current_id 0

#------- Adds the new tags "infernalMob" and "rare" for this mob, to identify it during the game -------
# mob.tags.Add("infernalMob");
# mob.tags.Add("rare");
tag @s add infernalMob
tag @s add rare

#------- Creates some temporary variables to set some mob's attributes -------
# int tmp_new_health = new int();
scoreboard objectives add _tmp.new_health dummy
scoreboard objectives add _tmp.health_multiplier dummy

#------- Adds the temporary variables for setting this mob's attributes -------
# mob.AddVariable( tmp_new_health, 0 );
scoreboard players set @s _tmp.new_health 0
scoreboard players set @s _tmp.health_multiplier 0


#++++++++++++++++++++++ Increment Mob's Health ++++++++++++++++++++++++++++
#------- Gets the mob's health and stores it on a temporary variable -------
# mob.tmp_new_health = mobs.health;
execute store result score @s _tmp.new_health run data get entity @s Health 1
execute store result score @s _tmp.health_multiplier run data get entity @s Health 1

#------- Increments the health variables -------
# mob.tmp_health_multiplier = (mob.health / 10) * 8;
# mob.tmp_new_health = mobs.health + mob.tmp_health_multiplier;
scoreboard players operation @s _tmp.health_multiplier /= $Constants _const.10
scoreboard players operation @s _tmp.health_multiplier *= $Constants _const.8
scoreboard players operation @s _tmp.new_health += @s _tmp.health_multiplier

#------- Sets the new value for the mob's health and max health -------
# mob.max_health = mobs.tmp_new_health;
# mob.health = mobs.tmp_new_health;
execute store result entity @s Attributes[{Name:"generic.max_health"}].Base double 1 run scoreboard players get @s _tmp.new_health
execute store result entity @s Health float 1 run scoreboard players get @s _tmp.new_health
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#----- Removes the temporary variables -------
# deleteVariable( tmp_new_health );
# deleteVariable( tmp_health_multiplier );
scoreboard objectives remove _tmp.new_health
scoreboard objectives remove _tmp.health_multiplier
