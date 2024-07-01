#******************* Gameplay --> Healthbars --> Update Visibility --> 23 *******************


#++++++++++++++++++++++++++++++++++++ Display Healthbar # 23 ++++++++++++++++++++++++++++++++++++
#------- Checks with the raycasting method if a player is no longer looking at the mob with the healthbar #23-------
# if (mob.isBeingObserved() == false):
#   player.displayHealthbar(23, false);
execute as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_healthbar.current_id=23},limit=1,sort=nearest] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.25, predicate=infernal_mobs:looking_at_infernal_mob] run bossbar set _healthbar.23 players @s[tag=nobody]

#------- Checks with the raycasting method if a player is looking at the mob with the healthbar #23 -------
# if (mob.isBeingObserved() == true):
#   player.displayHealthbar(23, true);
execute as @a at @s anchored eyes positioned ~ ~-0.3 ~ facing entity @e[scores={_healthbar.current_id=23},limit=1,sort=nearest,distance=..25] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25, predicate=infernal_mobs:looking_at_infernal_mob] run bossbar set _healthbar.23 players @s[distance=..0.25]

#------- If, for some reason, a player is so near to the mob with the healthbar #23, displays it even when is not looking at the mob -------
# if (mob.distance <= 4):
#   player.displayHealthbar(23, true);
execute as @a at @e[scores={_healthbar.current_id=23},limit=1,sort=nearest] if entity @s[distance=..4] run bossbar set _healthbar.23 players @s[distance=..4]
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
