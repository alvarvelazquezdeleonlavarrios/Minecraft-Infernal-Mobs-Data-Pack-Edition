#******************* Spawning --> Settings --> Variants --> Set Rare *******************


#------- Adds static variables that this mob will use during all the game -------
# mob.AddVariable( healthbar_current_id, 0 );
scoreboard players set @s _hb.crtId 0

#------- Adds the new tags "Infernal_Mob" and "rare" for this mob, to identify it during the game -------
# mob.tags.Add("Infernal_Mob");
# mob.tags.Add("rare");
tag @s add Infernal_Mob
tag @s add rare

#------- Creates some temporary variables to set some mob's attributes -------
# int tmp_new_health = new int();
# int tmp_health_multiplier = new int();
scoreboard objectives add _tmp.newHealth dummy
scoreboard objectives add _tmp.hltMult dummy

#------- Adds the temporary variables for setting this mob's attributes -------
# mob.AddVariable( tmp_new_health, 0 );
# mob.AddVariable( tmp_health_multiplier, 0 );
scoreboard players set @s _tmp.newHealth 0
scoreboard players set @s _tmp.hltMult 0


#++++++++++++++++++++++ Increase Mob's Health and Max Health (Rare Variant) ++++++++++++++++++++++++++++
#------- Gets the mob's health and stores it on a temporary variable -------
# mob.tmp_new_health = mobs.health;
# mob.tmp_health_multiplier = mobs.health;
execute store result score @s _tmp.newHealth run data get entity @s Health
execute store result score @s _tmp.hltMult run data get entity @s Health

#------- Increases the mob's health in a 80% -------
# mob.tmp_health_multiplier = (mob.health / 10) * 8;
# mob.tmp_new_health = mobs.health + mob.tmp_health_multiplier;
scoreboard players operation @s _tmp.hltMult /= $Constants _const.10
scoreboard players operation @s _tmp.hltMult *= $Constants _const.8
scoreboard players operation @s _tmp.newHealth += @s _tmp.hltMult

#------- Sets the new value for the mob's health and max health -------
# mob.max_health = mobs.tmp_new_health;
# mob.health = mobs.tmp_new_health;
execute store result entity @s Attributes[{Name:"generic.maxHealth"}].Base double 1 run scoreboard players get @s _tmp.newHealth
execute store result entity @s Health float 1 run scoreboard players get @s _tmp.newHealth
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#----- Removes the temporary variables -------
# deleteVariable( tmp_new_health );
# deleteVariable( tmp_health_multiplier );
scoreboard objectives remove _tmp.newHealth
scoreboard objectives remove _tmp.hltMult
