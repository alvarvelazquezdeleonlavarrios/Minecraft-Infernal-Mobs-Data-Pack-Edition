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



#------- If the healthbar #31 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=31}] if score $Healthbars _healthbar.current_search matches 31 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/31
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #32 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=32}] if score $Healthbars _healthbar.current_search matches 32 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/32
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #33 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=33}] if score $Healthbars _healthbar.current_search matches 33 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/33
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #34 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=34}] if score $Healthbars _healthbar.current_search matches 34 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/34
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #35 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=35}] if score $Healthbars _healthbar.current_search matches 35 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/35
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #36 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=36}] if score $Healthbars _healthbar.current_search matches 36 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/36
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #37 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=37}] if score $Healthbars _healthbar.current_search matches 37 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/37
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #38 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=38}] if score $Healthbars _healthbar.current_search matches 38 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/38
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #39 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=39}] if score $Healthbars _healthbar.current_search matches 39 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/39
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #40 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=40}] if score $Healthbars _healthbar.current_search matches 40 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/40
scoreboard players add $Healthbars _healthbar.current_search 1



#------- If the healthbar #41 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=41}] if score $Healthbars _healthbar.current_search matches 41 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/41
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #42 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=42}] if score $Healthbars _healthbar.current_search matches 42 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/42
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #43 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=43}] if score $Healthbars _healthbar.current_search matches 43 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/43
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #44 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=44}] if score $Healthbars _healthbar.current_search matches 44 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/44
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #45 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=45}] if score $Healthbars _healthbar.current_search matches 45 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/45
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #46 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=46}] if score $Healthbars _healthbar.current_search matches 46 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/46
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #47 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=47}] if score $Healthbars _healthbar.current_search matches 47 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/47
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #48 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=48}] if score $Healthbars _healthbar.current_search matches 48 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/48
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #49 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=49}] if score $Healthbars _healthbar.current_search matches 49 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/49
scoreboard players add $Healthbars _healthbar.current_search 1

#------- If the healthbar #50 is available, sets it to this mob -------
execute if score $Healthbars _healthbar.already_found matches 0 unless entity @e[scores={_healthbar.current_id=50}] if score $Healthbars _healthbar.current_search matches 50 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/50
scoreboard players add $Healthbars _healthbar.current_search 1
