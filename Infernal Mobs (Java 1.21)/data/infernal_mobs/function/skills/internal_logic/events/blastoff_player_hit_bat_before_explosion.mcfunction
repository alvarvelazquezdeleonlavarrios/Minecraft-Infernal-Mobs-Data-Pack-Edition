#******************* Skills --> Internal Logic --> Events --> Blastoff Player Hit Bat Before Explosion **********************************


#------- Gives the player temporary the creative gamemode physics to apply they the jump force -------
# player.gamemode = minecraft:creative;
gamemode creative

#------- Creates some temporary variables to store this player's initial position -------
# int _tmp_blastoff_player_initial_pos_x = new int();
# int _tmp_blastoff_player_initial_pos_y = new int();
# int _tmp_blastoff_player_initial_pos_z = new int();
scoreboard objectives add _tmp.blastoff.player_initial_pos_x dummy
scoreboard objectives add _tmp.blastoff.player_initial_pos_y dummy
scoreboard objectives add _tmp.blastoff.player_initial_pos_z dummy

#------- Adds the temporarty variables for this player -------
# player.AddVariable( _tmp_blastoff_player_initial_pos_x, 0 );
# player.AddVariable( _tmp_blastoff_player_initial_pos_y, 0 );
# player.AddVariable( _tmp_blastoff_player_initial_pos_y, 0 );
scoreboard players set @s _tmp.blastoff.player_initial_pos_x 0
scoreboard players set @s _tmp.blastoff.player_initial_pos_y 0
scoreboard players set @s _tmp.blastoff.player_initial_pos_z 0

#------- Stores the player´s initial position -------
# player._tmp_blastoff_player_initial_pos_x = player.position.x;
# player._tmp_blastoff_player_initial_pos_y = player.position.y;
# player._tmp_blastoff_player_initial_pos_z = player.position.z;
execute store result score @s _tmp.blastoff.player_initial_pos_x run data get entity @s Pos[0]
execute store result score @s _tmp.blastoff.player_initial_pos_y run data get entity @s Pos[1]
execute store result score @s _tmp.blastoff.player_initial_pos_z run data get entity @s Pos[2]

#------- Teleports the player temporary into the "space", where will receive the jump force by a Creeper's explosion -------
# player.position = player.position + new Vector3(0, 2000, 0);
tp @s ~ ~2000 ~

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Blastoff Player Hit Bat Before Explosion" );
advancement revoke @s only infernal_mobs:skills/blastoff/player_hit_bat_before_explosion
