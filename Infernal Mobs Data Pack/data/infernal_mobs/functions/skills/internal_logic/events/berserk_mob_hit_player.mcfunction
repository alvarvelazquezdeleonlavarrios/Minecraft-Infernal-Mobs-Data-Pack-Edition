#******************* Skills --> Internal Logic --> Events --> Berserk Mob Hit Player *******************


#------- When the player gets the advancement "Berserk Mob Hit Player", makes the mob execute its berserk skill -------
# if (player.advancements.Find("Berserk Mob Hit Player") == true && player.gamemode == survival):
#   mob.skills.Berserk();
execute at @s[gamemode=survival] as @e[tag=Infernal_Mob, tag=berserk, limit=1, sort=nearest, distance=..30] run function infernal_mobs:skills/berserk

#------- Removes the advancement to the player, making they able to receive it later when is hit again -------
# player.advancements.Remove("Berserk Mob Hit Player");
advancement revoke @s only infernal_mobs:berserk/mob_hit_player
