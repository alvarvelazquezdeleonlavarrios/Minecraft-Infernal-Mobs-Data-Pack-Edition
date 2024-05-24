#******************* Skills --> Webber *******************


#------- If the block under the player is anything else except "air", sets a cobweb block at the ground level and plays a sound indicating that the cobweb was set below the player -------
# if ( block(current_position - new Vector3(0,1,0)) != "air" ):
#   setBlock("cobweb", current_position);
#   playsound( "entity.spider.ambient", current_position );
execute unless block ~ ~-1 ~ air run setblock ~ ~ ~ cobweb
execute unless block ~ ~-1 ~ air run playsound entity.spider.ambient block @a ~ ~ ~ 1.0 1.0 0.1

#------- If the block under the player is still air (the player is into the air), recursively checks for the next block below -------
# if ( block(current_position - new Vector3(0,1,0)) == "air" ):
#   mob.skills.webber( current_position - new Vector3(0,1,0) );
execute if block ~ ~-1 ~ air positioned ~ ~-1 ~ run function infernal_mobs:skills/webber
