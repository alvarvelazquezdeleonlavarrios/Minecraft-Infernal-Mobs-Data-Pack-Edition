#******************* Skills --> Internal Logic --> Events --> Gravity Player Hit Bat After Explosion **********************************


#------- Returns the player its initial suvival physics and gamemode -------
# player.gamemode = minecraft:survival;
gamemode survival

#------- Summons an "empty" entity, locating it at player's initial position (before being launced) -------
# AEC aec = new AEC("gravity_initial_position");
summon area_effect_cloud ~ ~ ~ {Duration:10,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,Tags:["gravity_initial_position"]}

#------- The "empty" entity gets player's inital position -------
# aec.position.x = player._tmp_gravity_player_initial_pos_x;
# aec.position.y = player._tmp_gravity_player_initial_pos_y;
# aec.position.z = player._tmp_gravity_player_initial_pos_z;
execute store result entity @e[type=area_effect_cloud, tag=gravity_initial_position, limit=1, sort=nearest] Pos[0] double 1 run scoreboard players get @s _tmp.gvtPPosX
execute store result entity @e[type=area_effect_cloud, tag=gravity_initial_position, limit=1, sort=nearest] Pos[1] double 1 run scoreboard players get @s _tmp.gvtPPosY
execute store result entity @e[type=area_effect_cloud, tag=gravity_initial_position, limit=1, sort=nearest] Pos[2] double 1 run scoreboard players get @s _tmp.gvtPPosZ

#------- Returns the player to its inital position -------
# player.position = aec.position;
execute at @e[type=area_effect_cloud, tag=gravity_initial_position, limit=1, sort=nearest] run tp @s ~ ~ ~

#------- Removes the temporary variables -------
# deleteVariable( _tmp_gravity_player_initial_pos_x );
# deleteVariable( _tmp_gravity_player_initial_pos_y );
# deleteVariable( _tmp_gravity_player_initial_pos_z );
scoreboard objectives remove _tmp.gvtPPosX
scoreboard objectives remove _tmp.gvtPPosY
scoreboard objectives remove _tmp.gvtPPosZ

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Gravity Player Hit Bat After Explosion" );
advancement revoke @s only infernal_mobs:skills/gravity/player_hit_bat_after_explosion
