#******************* Spawning --> Settings --> Healthbars --> Find Available Healthbar *******************


#------- Initial settings for the new linear search -------
# healthbar.current_search = 1;
# healthbar.already_found = false;
scoreboard players set $Healthbars _healthbar.current_search 1
scoreboard players set $Healthbars _healthbar.already_found 0


#------- If the healthbar #1 is available, sets it to this mob -------
# if (isAnEntityUsingHealthbar(1) == false && current_search == 1 && already_found == false):
#   mob.setHealthbar( healthbars[1] );
# current_search++;
execute unless entity @e[scores={_healthbar.current_id=1}] if score $Healthbars _healthbar.current_search matches 1 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:spawning/settings/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1


#------- If the healthbar #2 is available, sets it to this mob -------
# if (isAnEntityUsingHealthbar(2) == false && current_search == 2 && already_found == false):
#   mob.setHealthbar( healthbars[2] );
# current_search++;
execute unless entity @e[scores={_healthbar.current_id=2}] if score $Healthbars _healthbar.current_search matches 2 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:spawning/settings/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1

execute unless entity @e[scores={_healthbar.current_id=3}] if score $Healthbars _healthbar.current_search matches 3 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:spawning/settings/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1

execute unless entity @e[scores={_healthbar.current_id=4}] if score $Healthbars _healthbar.current_search matches 4 if score $Healthbars _healthbar.already_found matches 0 run function infernal_mobs:spawning/settings/healthbars/set_healthbar
scoreboard players add $Healthbars _healthbar.current_search 1
