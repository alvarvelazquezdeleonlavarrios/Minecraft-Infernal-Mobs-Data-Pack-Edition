#******************* Spawning --> Settings --> Healthbars --> Find Available Healthbar *******************


#------- Initial settings for the new linear search -------
# healthbar.current_search = 1;
# healthbar.already_found = false;
scoreboard players set $Healthbars _hb.crtSearch 1
scoreboard players set $Healthbars _hb.alrFound 0


#+++++++++++++++++++++++++++++++++ Overall Setting Logic ++++++++++++++++++++++++++++++++++++++
# if (already_found == false && isAnEntityUsingHealthbar( bar_id ) == false && current_search == bar_id):
#   mob.setHealthbar( healthbars[bar_id] );
# current_search++;
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- If the healthbar #1 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=1}] if score $Healthbars _hb.crtSearch matches 1 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/1
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #2 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=2}] if score $Healthbars _hb.crtSearch matches 2 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/2
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #3 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=3}] if score $Healthbars _hb.crtSearch matches 3 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/3
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #4 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=4}] if score $Healthbars _hb.crtSearch matches 4 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/4
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #5 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=5}] if score $Healthbars _hb.crtSearch matches 5 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/5
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #6 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=6}] if score $Healthbars _hb.crtSearch matches 6 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/6
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #7 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=7}] if score $Healthbars _hb.crtSearch matches 7 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/7
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #8 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=8}] if score $Healthbars _hb.crtSearch matches 8 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/8
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #9 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=9}] if score $Healthbars _hb.crtSearch matches 9 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/9
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #10 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=10}] if score $Healthbars _hb.crtSearch matches 10 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/10
scoreboard players add $Healthbars _hb.crtSearch 1



#------- If the healthbar #11 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=11}] if score $Healthbars _hb.crtSearch matches 11 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/11
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #12 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=12}] if score $Healthbars _hb.crtSearch matches 12 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/12
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #13 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=13}] if score $Healthbars _hb.crtSearch matches 13 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/13
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #14 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=14}] if score $Healthbars _hb.crtSearch matches 14 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/14
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #15 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=15}] if score $Healthbars _hb.crtSearch matches 15 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/15
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #16 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=16}] if score $Healthbars _hb.crtSearch matches 16 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/16
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #17 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=17}] if score $Healthbars _hb.crtSearch matches 17 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/17
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #18 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=18}] if score $Healthbars _hb.crtSearch matches 18 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/18
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #19 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=19}] if score $Healthbars _hb.crtSearch matches 19 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/19
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #20 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=20}] if score $Healthbars _hb.crtSearch matches 20 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/20
scoreboard players add $Healthbars _hb.crtSearch 1



#------- If the healthbar #21 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=21}] if score $Healthbars _hb.crtSearch matches 21 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/21
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #22 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=22}] if score $Healthbars _hb.crtSearch matches 22 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/22
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #23 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=23}] if score $Healthbars _hb.crtSearch matches 23 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/23
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #24 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=24}] if score $Healthbars _hb.crtSearch matches 24 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/24
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #25 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=25}] if score $Healthbars _hb.crtSearch matches 25 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/25
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #26 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=26}] if score $Healthbars _hb.crtSearch matches 26 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/26
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #27 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=27}] if score $Healthbars _hb.crtSearch matches 27 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/27
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #28 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=28}] if score $Healthbars _hb.crtSearch matches 28 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/28
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #29 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=29}] if score $Healthbars _hb.crtSearch matches 29 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/29
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #30 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=30}] if score $Healthbars _hb.crtSearch matches 30 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/30
scoreboard players add $Healthbars _hb.crtSearch 1



#------- If the healthbar #31 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=31}] if score $Healthbars _hb.crtSearch matches 31 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/31
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #32 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=32}] if score $Healthbars _hb.crtSearch matches 32 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/32
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #33 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=33}] if score $Healthbars _hb.crtSearch matches 33 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/33
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #34 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=34}] if score $Healthbars _hb.crtSearch matches 34 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/34
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #35 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=35}] if score $Healthbars _hb.crtSearch matches 35 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/35
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #36 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=36}] if score $Healthbars _hb.crtSearch matches 36 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/36
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #37 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=37}] if score $Healthbars _hb.crtSearch matches 37 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/37
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #38 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=38}] if score $Healthbars _hb.crtSearch matches 38 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/38
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #39 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=39}] if score $Healthbars _hb.crtSearch matches 39 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/39
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #40 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=40}] if score $Healthbars _hb.crtSearch matches 40 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/40
scoreboard players add $Healthbars _hb.crtSearch 1



#------- If the healthbar #41 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=41}] if score $Healthbars _hb.crtSearch matches 41 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/41
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #42 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=42}] if score $Healthbars _hb.crtSearch matches 42 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/42
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #43 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=43}] if score $Healthbars _hb.crtSearch matches 43 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/43
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #44 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=44}] if score $Healthbars _hb.crtSearch matches 44 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/44
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #45 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=45}] if score $Healthbars _hb.crtSearch matches 45 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/45
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #46 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=46}] if score $Healthbars _hb.crtSearch matches 46 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/46
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #47 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=47}] if score $Healthbars _hb.crtSearch matches 47 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/47
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #48 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=48}] if score $Healthbars _hb.crtSearch matches 48 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/48
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #49 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=49}] if score $Healthbars _hb.crtSearch matches 49 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/49
scoreboard players add $Healthbars _hb.crtSearch 1

#------- If the healthbar #50 is available, sets it to this mob -------
execute if score $Healthbars _hb.alrFound matches 0 unless entity @e[scores={_hb.crtId=50}] if score $Healthbars _hb.crtSearch matches 50 run function infernal_mobs:spawning/settings/healthbars/set_healthbar/50
scoreboard players add $Healthbars _hb.crtSearch 1
