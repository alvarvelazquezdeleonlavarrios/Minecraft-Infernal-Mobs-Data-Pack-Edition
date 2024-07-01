#******************* Skills --> Internal Logic --> Events --> Sticky Player Hit Mob **********************************


#------- If the mob with tag "sticky" was hit by the survival player (with an item on its main hand) at a maximum distance of 6 blocks when its timer's skill finished, executes the sticky skill -------
# if (player.gamemode == survival && player.selectedItem != null && mob.Tags.Find("sticky") == true && mob.distance <= 6 && mob.sticky_current_time <= 0):
#   mob.skills.sticky();
execute if entity @s[gamemode=survival, nbt={SelectedItem:{}}] at @s if entity @e[tag=sticky, limit=1, sort=nearest, distance=..6, scores={_skills.sticky.current_time=..0}] as @e[tag=Infernal_Mob, tag=sticky, limit=1, sort=nearest, distance=..6, scores={_skills.sticky.current_time=..0}] at @s run function infernal_mobs:skills/sticky

#------- Removes the achieved advancement, being able to execute the skill many times later -------
# player.advancements.Remove( "Sticky Player Hit Mob" );
advancement revoke @s only infernal_mobs:skills/sticky/player_hit_mob
