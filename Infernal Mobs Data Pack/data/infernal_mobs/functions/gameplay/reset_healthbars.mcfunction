#******************* Gameplay --> Reset Healthbars *******************


#++++++++++++++++++++++++++++++++++++ Overall Working ++++++++++++++++++++++++++++++++++++++++
# if (checkIfEntityWithHealthbar(bar_id) == false ):
#   players.displayHealthbar(bar_id, false);
#   healthbars[bar_id].name = "";
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------- If the healthbar #1 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=1}] run bossbar set _healthbar.1 name ""

#------- If the healthbar #2 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=2}] run bossbar set _healthbar.2 name ""

#------- If the healthbar #3 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=3}] run bossbar set _healthbar.3 name ""

#------- If the healthbar #4 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=4}] run bossbar set _healthbar.4 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=4}] run bossbar set _healthbar.4 name ""

#------- If the healthbar #5 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=5}] run bossbar set _healthbar.5 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=5}] run bossbar set _healthbar.5 name ""

#------- If the healthbar #6 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=6}] run bossbar set _healthbar.6 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=6}] run bossbar set _healthbar.6 name ""

#------- If the healthbar #7 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=7}] run bossbar set _healthbar.7 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=7}] run bossbar set _healthbar.7 name ""

#------- If the healthbar #8 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=8}] run bossbar set _healthbar.8 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=8}] run bossbar set _healthbar.8 name ""

#------- If the healthbar #9 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=9}] run bossbar set _healthbar.9 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=9}] run bossbar set _healthbar.9 name ""

#------- If the healthbar #10 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=10}] run bossbar set _healthbar.10 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=10}] run bossbar set _healthbar.10 name ""



#------- If the healthbar #11 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=11}] run bossbar set _healthbar.11 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=11}] run bossbar set _healthbar.11 name ""

#------- If the healthbar #12 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=12}] run bossbar set _healthbar.12 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=12}] run bossbar set _healthbar.12 name ""

#------- If the healthbar #13 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=13}] run bossbar set _healthbar.13 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=13}] run bossbar set _healthbar.13 name ""

#------- If the healthbar #14 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=14}] run bossbar set _healthbar.14 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=14}] run bossbar set _healthbar.14 name ""

#------- If the healthbar #15 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=15}] run bossbar set _healthbar.15 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=15}] run bossbar set _healthbar.15 name ""

#------- If the healthbar #16 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=16}] run bossbar set _healthbar.16 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=16}] run bossbar set _healthbar.16 name ""

#------- If the healthbar #17 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=17}] run bossbar set _healthbar.17 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=17}] run bossbar set _healthbar.17 name ""

#------- If the healthbar #18 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=18}] run bossbar set _healthbar.18 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=18}] run bossbar set _healthbar.18 name ""

#------- If the healthbar #19 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=19}] run bossbar set _healthbar.19 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=19}] run bossbar set _healthbar.19 name ""

#------- If the healthbar #20 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=20}] run bossbar set _healthbar.20 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=20}] run bossbar set _healthbar.20 name ""



#------- If the healthbar #21 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=21}] run bossbar set _healthbar.21 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=21}] run bossbar set _healthbar.21 name ""

#------- If the healthbar #22 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=22}] run bossbar set _healthbar.22 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=22}] run bossbar set _healthbar.22 name ""

#------- If the healthbar #23 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=23}] run bossbar set _healthbar.23 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=23}] run bossbar set _healthbar.23 name ""

#------- If the healthbar #24 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=24}] run bossbar set _healthbar.24 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=24}] run bossbar set _healthbar.24 name ""

#------- If the healthbar #25 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=25}] run bossbar set _healthbar.25 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=25}] run bossbar set _healthbar.25 name ""

#------- If the healthbar #26 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=26}] run bossbar set _healthbar.26 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=26}] run bossbar set _healthbar.26 name ""

#------- If the healthbar #27 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=27}] run bossbar set _healthbar.27 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=27}] run bossbar set _healthbar.27 name ""

#------- If the healthbar #28 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=28}] run bossbar set _healthbar.28 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=28}] run bossbar set _healthbar.28 name ""

#------- If the healthbar #29 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=29}] run bossbar set _healthbar.29 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=29}] run bossbar set _healthbar.29 name ""

#------- If the healthbar #30 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=30}] run bossbar set _healthbar.30 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=30}] run bossbar set _healthbar.30 name ""



#------- If the healthbar #31 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=31}] run bossbar set _healthbar.31 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=31}] run bossbar set _healthbar.31 name ""

#------- If the healthbar #32 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=32}] run bossbar set _healthbar.32 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=32}] run bossbar set _healthbar.32 name ""

#------- If the healthbar #33 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=33}] run bossbar set _healthbar.33 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=33}] run bossbar set _healthbar.33 name ""

#------- If the healthbar #34 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=34}] run bossbar set _healthbar.34 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=34}] run bossbar set _healthbar.34 name ""

#------- If the healthbar #35 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=35}] run bossbar set _healthbar.35 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=35}] run bossbar set _healthbar.35 name ""

#------- If the healthbar #36 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=36}] run bossbar set _healthbar.36 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=36}] run bossbar set _healthbar.36 name ""

#------- If the healthbar #37 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=37}] run bossbar set _healthbar.37 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=37}] run bossbar set _healthbar.37 name ""

#------- If the healthbar #38 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=38}] run bossbar set _healthbar.38 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=38}] run bossbar set _healthbar.38 name ""

#------- If the healthbar #39 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=39}] run bossbar set _healthbar.39 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=39}] run bossbar set _healthbar.39 name ""

#------- If the healthbar #40 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=40}] run bossbar set _healthbar.40 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=40}] run bossbar set _healthbar.40 name ""



#------- If the healthbar #41 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=41}] run bossbar set _healthbar.41 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=41}] run bossbar set _healthbar.41 name ""

#------- If the healthbar #42 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=42}] run bossbar set _healthbar.42 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=42}] run bossbar set _healthbar.42 name ""

#------- If the healthbar #43 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=43}] run bossbar set _healthbar.43 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=43}] run bossbar set _healthbar.43 name ""

#------- If the healthbar #44 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=44}] run bossbar set _healthbar.44 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=44}] run bossbar set _healthbar.44 name ""

#------- If the healthbar #45 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=45}] run bossbar set _healthbar.45 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=45}] run bossbar set _healthbar.45 name ""

#------- If the healthbar #46 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=46}] run bossbar set _healthbar.46 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=46}] run bossbar set _healthbar.46 name ""

#------- If the healthbar #47 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=47}] run bossbar set _healthbar.47 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=47}] run bossbar set _healthbar.47 name ""

#------- If the healthbar #48 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=48}] run bossbar set _healthbar.48 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=48}] run bossbar set _healthbar.48 name ""

#------- If the healthbar #49 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=49}] run bossbar set _healthbar.49 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=49}] run bossbar set _healthbar.49 name ""

#------- If the healthbar #50 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_healthbar.current_id=50}] run bossbar set _healthbar.50 players @a[tag=nobody]
execute unless entity @e[scores={_healthbar.current_id=50}] run bossbar set _healthbar.50 name ""
