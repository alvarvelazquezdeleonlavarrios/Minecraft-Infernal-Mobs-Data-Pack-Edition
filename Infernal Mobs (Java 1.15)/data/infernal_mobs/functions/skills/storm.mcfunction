#******************* Skills --> Storm *******************


#------- This mob throws a lighting bolt at the survival player -------
# LightningBolt lightning_bolt = new LightningBolt( player.position + new Vector3(0, 0.2f, 0) );
execute at @p[gamemode=survival, distance=5..40] run summon lightning_bolt ~ ~0.2 ~

#------- After throwing the lighting bolt, resets the timer to its initial value -------
# mob.storm_current_time = mob.storm_max_time;
scoreboard players operation @s _sk.storm.crtT = @s _sk.storm.mxT
