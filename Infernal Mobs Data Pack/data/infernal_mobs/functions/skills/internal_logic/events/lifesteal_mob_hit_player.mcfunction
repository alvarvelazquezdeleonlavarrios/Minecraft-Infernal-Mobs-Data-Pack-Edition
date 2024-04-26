#******************* Skills --> Internal Logic --> Events --> Lifesteal Mob Hit Player **********************************


#------- When the player gets the advancement "Lifesteal Mob Hit Player", makes the mob execute its lifesteal skill -------
# if (player.advancements.Find("Lifesteal Mob Hit Player") == true && player.gamemode == survival):
#   mob.skills.lifesteal();
execute at @s[gamemode=survival] as @e[tag=Infernal_Mob, tag=lifesteal, limit=1, sort=nearest, distance=..30] run function infernal_mobs:skills/lifesteal

#------- Removes the advancement to the player, making they able to receive it later when is hit again -------
# player.advancements.Remove("Lifesteal Mob Hit Player");
advancement revoke @s only infernal_mobs:lifesteal/mob_hit_player
