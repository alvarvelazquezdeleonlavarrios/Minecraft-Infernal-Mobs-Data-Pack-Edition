#******************* Spawning --> Settings --> Skills --> Add Sprint *******************

#------- Adds a new tag named "sprint" for this mob -------
# mob.tags.Add("sprint");
tag @s add sprint

#------- Creates a temporary variable to increase the default mob's movement speed -------
# int _tmp.current_movement_speed = new int();
# mob.AddVariable( _tmp.current_movement_speed, 0 )
scoreboard objectives add _tmp.current_movement_speed dummy
scoreboard players set @s _tmp.current_movement_speed 0

#------- Increases the mob's movement speed in 0.1 -------
# mob.tmp_current_movement_speed = mob.movement_speed * 100;
# mob.tmp_current_movement_speed = mob.tmp_current_movement_speed + 10;
# mob.movement_speed = mob.tmp_current_movement_speed / 100;
execute store result score @s _tmp.current_movement_speed run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 100
scoreboard players add @s _tmp.current_movement_speed 10
execute store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.01 run scoreboard players get @s _tmp.current_movement_speed

#------- Decreases the number of skills left for adding to this mob -------
# mob.tmp_skills_count--;
scoreboard players operation @s _tmp.skills_count -= $Constants _const.1
