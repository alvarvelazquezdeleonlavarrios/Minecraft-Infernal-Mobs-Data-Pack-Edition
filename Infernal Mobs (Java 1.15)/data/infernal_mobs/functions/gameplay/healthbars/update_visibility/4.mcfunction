#******************* Gameplay --> Healthbars --> Update Visibility --> 4 *******************


#++++++++++++++++++++++++++++++++++++ Display Healthbar # 4 ++++++++++++++++++++++++++++++++++++
#------- Checks with the raycasting method if a player is no longer looking at the mob with the healthbar #4-------
# if (mob.isBeingObserved() == false):
#   player.displayHealthbar(4, false);
execute as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_hb.crtId=4},limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.25] run bossbar set _healthbar.4 players @s[tag=nobody]

#------- Checks with the raycasting method if a player is looking at the mob with the healthbar #4 -------
# if (mob.isBeingObserved() == true):
#   player.displayHealthbar(4, true);
execute as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_hb.crtId=4},limit=1,sort=nearest,distance=..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25] run bossbar set _healthbar.4 players @s[distance=..0.25]

#------- If, for some reason, a player is so near to the mob with the healthbar #4, displays it even when is not looking at the mob -------
# if (mob.distance <= 4):
#   player.displayHealthbar(4, true);
execute as @a at @e[scores={_hb.crtId=4},limit=1,sort=nearest] if entity @s[distance=..4] run bossbar set _healthbar.4 players @s[distance=..4]
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
