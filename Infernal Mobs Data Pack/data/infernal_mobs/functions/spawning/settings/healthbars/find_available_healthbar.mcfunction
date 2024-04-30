#******************* Spawning --> Settings --> Healthbars --> Find Available Healthbar *******************


#------- Initial settings for the new linear search -------
# healthbar.current_search = 1;
# healthbar.already_found = false;
scoreboard players set $Healthbars _healthbar.current_search 1
scoreboard players set $Healthbars _healthbar.already_found 0


#+++++++++++++++++++++++++++++++++ Overall Setting Logic ++++++++++++++++++++++++++++++++++++++
# if (already_found == false && isAnEntityUsingHealthbar( bar_id ) == false && current_search == bar_id):
#   mob.setHealthbar( healthbars[bar_id] );
# current_search++;
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- If the healthbar #1 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=1}] if score $Healthbars _healthbar.current_search matches 1 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/1
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #2 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=2}] if score $Healthbars _healthbar.current_search matches 2 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/2
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #3 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=3}] if score $Healthbars _healthbar.current_search matches 3 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/3
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #4 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=4}] if score $Healthbars _healthbar.current_search matches 4 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/4
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #5 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=5}] if score $Healthbars _healthbar.current_search matches 5 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/5
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #6 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=6}] if score $Healthbars _healthbar.current_search matches 6 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/6
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #7 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=7}] if score $Healthbars _healthbar.current_search matches 7 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/7
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #8 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=8}] if score $Healthbars _healthbar.current_search matches 8 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/8
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #9 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=9}] if score $Healthbars _healthbar.current_search matches 9 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/9
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #10 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=10}] if score $Healthbars _healthbar.current_search matches 10 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/10
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #11 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=11}] if score $Healthbars _healthbar.current_search matches 11 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/11
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #12 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=12}] if score $Healthbars _healthbar.current_search matches 12 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/12
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #13 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=13}] if score $Healthbars _healthbar.current_search matches 13 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/13
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #14 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=14}] if score $Healthbars _healthbar.current_search matches 14 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/14
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #15 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=15}] if score $Healthbars _healthbar.current_search matches 15 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/15
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #16 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=16}] if score $Healthbars _healthbar.current_search matches 16 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/16
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #17 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=17}] if score $Healthbars _healthbar.current_search matches 17 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/17
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #18 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=18}] if score $Healthbars _healthbar.current_search matches 18 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/18
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #19 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=19}] if score $Healthbars _healthbar.current_search matches 19 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/19
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #20 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=20}] if score $Healthbars _healthbar.current_search matches 20 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/20
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #21 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=21}] if score $Healthbars _healthbar.current_search matches 21 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/21
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #22 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=22}] if score $Healthbars _healthbar.current_search matches 22 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/22
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #23 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=23}] if score $Healthbars _healthbar.current_search matches 23 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/23
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #24 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=24}] if score $Healthbars _healthbar.current_search matches 24 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/24
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #25 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=25}] if score $Healthbars _healthbar.current_search matches 25 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/25
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #26 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=26}] if score $Healthbars _healthbar.current_search matches 26 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/26
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #27 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=27}] if score $Healthbars _healthbar.current_search matches 27 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/27
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #28 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=28}] if score $Healthbars _healthbar.current_search matches 28 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/28
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #29 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=29}] if score $Healthbars _healthbar.current_search matches 29 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/29
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #30 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=30}] if score $Healthbars _healthbar.current_search matches 30 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/30
scoreboard players add $Healthbars _healthbar.current_search 1
