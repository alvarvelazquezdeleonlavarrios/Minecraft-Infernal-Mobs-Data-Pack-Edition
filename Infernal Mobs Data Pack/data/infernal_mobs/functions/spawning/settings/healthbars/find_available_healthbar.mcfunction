#******************* Spawning --> Settings --> Healthbars --> Find Available Healthbar *******************


#------- Initial settings for the new linear search -------
# healthbar.current_search = 1;
# healthbar.already_found = false;
scoreboard players set $Healthbars _healthbar.current_search 1
scoreboard players set $Healthbars _healthbar.already_found 0


execute unless entity @e[scores={_healthbar.current_id=1}] if score $Healthbars _healthbar.current_search matches 1 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:mobs/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1

execute unless entity @e[scores={_healthbar.current_id=2}] if score $Healthbars _healthbar.current_search matches 2 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:mobs/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1

execute unless entity @e[scores={_healthbar.current_id=3}] if score $Healthbars _healthbar.current_search matches 3 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:mobs/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1

execute unless entity @e[scores={_healthbar.current_id=4}] if score $Healthbars _healthbar.current_search matches 4 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:mobs/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1
