#******************* Skills --> Internal Logic --> Events --> Gravity Player Hit Bat Before Explosion **********************************


#------- Gives the player temporary the creative gamemode physics to apply they the jump force -------
# player.gamemode = minecraft:creative;
gamemode creative

#------- Creates some temporary variables to store this player's initial position -------
# int _tmp_gravity_player_initial_pos_x = new int();
# int _tmp_gravity_player_initial_pos_y = new int();
# int _tmp_gravity_player_initial_pos_z = new int();
scoreboard objectives add _tmp.gvtPPosX dummy
scoreboard objectives add _tmp.gvtPPosY dummy
scoreboard objectives add _tmp.gvtPPosZ dummy

#------- Adds the temporarty variables for this player -------
# player.AddVariable( _tmp_gravity_player_initial_pos_x, 0 );
# player.AddVariable( _tmp_gravity_player_initial_pos_y, 0 );
# player.AddVariable( _tmp_gravity_player_initial_pos_y, 0 );
scoreboard players set @s _tmp.gvtPPosX 0
scoreboard players set @s _tmp.gvtPPosY 0
scoreboard players set @s _tmp.gvtPPosZ 0

#------- Stores the player´s initial position -------
# player._tmp_gravity_player_initial_pos_x = player.position.x;
# player._tmp_gravity_player_initial_pos_y = player.position.y;
# player._tmp_gravity_player_initial_pos_z = player.position.z;
execute store result score @s _tmp.gvtPPosX run data get entity @s Pos[0]
execute store result score @s _tmp.gvtPPosY run data get entity @s Pos[1]
execute store result score @s _tmp.gvtPPosZ run data get entity @s Pos[2]

#------- Teleports the player temporary into the "space", where will receive the jump force by a Creeper's explosion -------
# player.position = player.position + new Vector3(0, 1500, 0);
tp @s ~ ~1500 ~

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Gravity Player Hit Bat Before Explosion" );
advancement revoke @s only infernal_mobs:skills/gravity/player_hit_bat_before_explosion
