#******************* Gameplay --> Update Healthbars Visibility *******************


#++++++++++++++++++++++++++++++++++++ Display Healthbar # 1 ++++++++++++++++++++++++++++++++++++
#------- Checks with the raycasting method if a player is looking at the mob with the healthbar #1 -------
# if (mob.healthbar.current_id == 1 && mob.isBeingObserved() == true):
#   player.displayHealthbar(1,true);
execute if entity @s[scores={_healthbar.current_id=1}] as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_healthbar.current_id=1},limit=1,sort=nearest,distance=..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25] run bossbar set _healthbar.1 players @s

#------- Checks with the raycasting method if a player is no longer looking at the mob with the healthbar #1 -------
# if (mob.healthbar.current_id == 1 && mob.isBeingObserved() == true):
#   player.displayHealthbar(1,false);
execute if entity @s[scores={_healthbar.current_id=1}] as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_healthbar.current_id=1},limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.25] run bossbar set _healthbar.1 players @s[tag=nobody]

#------- If, for some reason, a player is so near to the mob with the healthbar #1, displays it even when is not looking at the mob -------
# if (mob.healthbar.current_id == 1 && mob.distance <= 4):
#   player.displayHealthbar(1,true);
execute if entity @s[scores={_healthbar.current_id=1}] as @a at @s if entity @e[scores={_healthbar.current_id=1},limit=1,sort=nearest,distance=..4] run bossbar set _healthbar.1 players @s
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

