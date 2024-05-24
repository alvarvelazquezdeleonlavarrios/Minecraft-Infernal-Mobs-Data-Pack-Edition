#******************* Gameplay --> Healthbars --> Reset *******************


#++++++++++++++++++++++++++++++++++++ Overall Working ++++++++++++++++++++++++++++++++++++++++
# if (checkIfEntityWithHealthbar(bar_id) == false ):
#   players.displayHealthbar(bar_id, false);
#   healthbars[bar_id].name = "";
#   healthbars[bar_id].color = white;
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- If the healthbar #1 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=1}] run bossbar set _healthbar.1 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=1}] run bossbar set _healthbar.1 name ""
execute unless entity @e[scores={_hb.crtId=1}] run bossbar set _healthbar.1 color white

#------- If the healthbar #2 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=2}] run bossbar set _healthbar.2 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=2}] run bossbar set _healthbar.2 name ""
execute unless entity @e[scores={_hb.crtId=2}] run bossbar set _healthbar.2 color white

#------- If the healthbar #3 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=3}] run bossbar set _healthbar.3 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=3}] run bossbar set _healthbar.3 name ""
execute unless entity @e[scores={_hb.crtId=3}] run bossbar set _healthbar.3 color white

#------- If the healthbar #4 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=4}] run bossbar set _healthbar.4 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=4}] run bossbar set _healthbar.4 name ""
execute unless entity @e[scores={_hb.crtId=4}] run bossbar set _healthbar.4 color white

#------- If the healthbar #5 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=5}] run bossbar set _healthbar.5 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=5}] run bossbar set _healthbar.5 name ""
execute unless entity @e[scores={_hb.crtId=5}] run bossbar set _healthbar.5 color white

#------- If the healthbar #6 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=6}] run bossbar set _healthbar.6 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=6}] run bossbar set _healthbar.6 name ""
execute unless entity @e[scores={_hb.crtId=6}] run bossbar set _healthbar.6 color white

#------- If the healthbar #7 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=7}] run bossbar set _healthbar.7 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=7}] run bossbar set _healthbar.7 name ""
execute unless entity @e[scores={_hb.crtId=7}] run bossbar set _healthbar.7 color white

#------- If the healthbar #8 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=8}] run bossbar set _healthbar.8 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=8}] run bossbar set _healthbar.8 name ""
execute unless entity @e[scores={_hb.crtId=8}] run bossbar set _healthbar.8 color white

#------- If the healthbar #9 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=9}] run bossbar set _healthbar.9 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=9}] run bossbar set _healthbar.9 name ""
execute unless entity @e[scores={_hb.crtId=9}] run bossbar set _healthbar.9 color white

#------- If the healthbar #10 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=10}] run bossbar set _healthbar.10 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=10}] run bossbar set _healthbar.10 name ""
execute unless entity @e[scores={_hb.crtId=10}] run bossbar set _healthbar.10 color white



#------- If the healthbar #11 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=11}] run bossbar set _healthbar.11 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=11}] run bossbar set _healthbar.11 name ""
execute unless entity @e[scores={_hb.crtId=11}] run bossbar set _healthbar.11 color white

#------- If the healthbar #12 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=12}] run bossbar set _healthbar.12 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=12}] run bossbar set _healthbar.12 name ""
execute unless entity @e[scores={_hb.crtId=12}] run bossbar set _healthbar.12 color white

#------- If the healthbar #13 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=13}] run bossbar set _healthbar.13 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=13}] run bossbar set _healthbar.13 name ""
execute unless entity @e[scores={_hb.crtId=13}] run bossbar set _healthbar.13 color white

#------- If the healthbar #14 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=14}] run bossbar set _healthbar.14 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=14}] run bossbar set _healthbar.14 name ""
execute unless entity @e[scores={_hb.crtId=14}] run bossbar set _healthbar.14 color white

#------- If the healthbar #15 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=15}] run bossbar set _healthbar.15 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=15}] run bossbar set _healthbar.15 name ""
execute unless entity @e[scores={_hb.crtId=15}] run bossbar set _healthbar.15 color white

#------- If the healthbar #16 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=16}] run bossbar set _healthbar.16 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=16}] run bossbar set _healthbar.16 name ""
execute unless entity @e[scores={_hb.crtId=16}] run bossbar set _healthbar.16 color white

#------- If the healthbar #17 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=17}] run bossbar set _healthbar.17 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=17}] run bossbar set _healthbar.17 name ""
execute unless entity @e[scores={_hb.crtId=17}] run bossbar set _healthbar.17 color white

#------- If the healthbar #18 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=18}] run bossbar set _healthbar.18 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=18}] run bossbar set _healthbar.18 name ""
execute unless entity @e[scores={_hb.crtId=18}] run bossbar set _healthbar.18 color white

#------- If the healthbar #19 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=19}] run bossbar set _healthbar.19 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=19}] run bossbar set _healthbar.19 name ""
execute unless entity @e[scores={_hb.crtId=19}] run bossbar set _healthbar.19 color white

#------- If the healthbar #20 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=20}] run bossbar set _healthbar.20 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=20}] run bossbar set _healthbar.20 name ""
execute unless entity @e[scores={_hb.crtId=20}] run bossbar set _healthbar.20 color white



#------- If the healthbar #21 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=21}] run bossbar set _healthbar.21 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=21}] run bossbar set _healthbar.21 name ""
execute unless entity @e[scores={_hb.crtId=21}] run bossbar set _healthbar.21 color white

#------- If the healthbar #22 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=22}] run bossbar set _healthbar.22 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=22}] run bossbar set _healthbar.22 name ""
execute unless entity @e[scores={_hb.crtId=22}] run bossbar set _healthbar.22 color white

#------- If the healthbar #23 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=23}] run bossbar set _healthbar.23 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=23}] run bossbar set _healthbar.23 name ""
execute unless entity @e[scores={_hb.crtId=23}] run bossbar set _healthbar.23 color white

#------- If the healthbar #24 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=24}] run bossbar set _healthbar.24 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=24}] run bossbar set _healthbar.24 name ""
execute unless entity @e[scores={_hb.crtId=24}] run bossbar set _healthbar.24 color white

#------- If the healthbar #25 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=25}] run bossbar set _healthbar.25 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=25}] run bossbar set _healthbar.25 name ""
execute unless entity @e[scores={_hb.crtId=25}] run bossbar set _healthbar.25 color white

#------- If the healthbar #26 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=26}] run bossbar set _healthbar.26 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=26}] run bossbar set _healthbar.26 name ""
execute unless entity @e[scores={_hb.crtId=26}] run bossbar set _healthbar.26 color white

#------- If the healthbar #27 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=27}] run bossbar set _healthbar.27 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=27}] run bossbar set _healthbar.27 name ""
execute unless entity @e[scores={_hb.crtId=27}] run bossbar set _healthbar.27 color white

#------- If the healthbar #28 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=28}] run bossbar set _healthbar.28 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=28}] run bossbar set _healthbar.28 name ""
execute unless entity @e[scores={_hb.crtId=28}] run bossbar set _healthbar.28 color white

#------- If the healthbar #29 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=29}] run bossbar set _healthbar.29 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=29}] run bossbar set _healthbar.29 name ""
execute unless entity @e[scores={_hb.crtId=29}] run bossbar set _healthbar.29 color white

#------- If the healthbar #30 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=30}] run bossbar set _healthbar.30 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=30}] run bossbar set _healthbar.30 name ""
execute unless entity @e[scores={_hb.crtId=30}] run bossbar set _healthbar.30 color white



#------- If the healthbar #31 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=31}] run bossbar set _healthbar.31 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=31}] run bossbar set _healthbar.31 name ""
execute unless entity @e[scores={_hb.crtId=31}] run bossbar set _healthbar.31 color white

#------- If the healthbar #32 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=32}] run bossbar set _healthbar.32 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=32}] run bossbar set _healthbar.32 name ""
execute unless entity @e[scores={_hb.crtId=32}] run bossbar set _healthbar.32 color white

#------- If the healthbar #33 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=33}] run bossbar set _healthbar.33 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=33}] run bossbar set _healthbar.33 name ""
execute unless entity @e[scores={_hb.crtId=33}] run bossbar set _healthbar.33 color white

#------- If the healthbar #34 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=34}] run bossbar set _healthbar.34 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=34}] run bossbar set _healthbar.34 name ""
execute unless entity @e[scores={_hb.crtId=34}] run bossbar set _healthbar.34 color white

#------- If the healthbar #35 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=35}] run bossbar set _healthbar.35 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=35}] run bossbar set _healthbar.35 name ""
execute unless entity @e[scores={_hb.crtId=35}] run bossbar set _healthbar.35 color white

#------- If the healthbar #36 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=36}] run bossbar set _healthbar.36 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=36}] run bossbar set _healthbar.36 name ""
execute unless entity @e[scores={_hb.crtId=36}] run bossbar set _healthbar.36 color white

#------- If the healthbar #37 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=37}] run bossbar set _healthbar.37 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=37}] run bossbar set _healthbar.37 name ""
execute unless entity @e[scores={_hb.crtId=37}] run bossbar set _healthbar.37 color white

#------- If the healthbar #38 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=38}] run bossbar set _healthbar.38 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=38}] run bossbar set _healthbar.38 name ""
execute unless entity @e[scores={_hb.crtId=38}] run bossbar set _healthbar.38 color white

#------- If the healthbar #39 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=39}] run bossbar set _healthbar.39 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=39}] run bossbar set _healthbar.39 name ""
execute unless entity @e[scores={_hb.crtId=39}] run bossbar set _healthbar.39 color white

#------- If the healthbar #40 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=40}] run bossbar set _healthbar.40 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=40}] run bossbar set _healthbar.40 name ""
execute unless entity @e[scores={_hb.crtId=40}] run bossbar set _healthbar.40 color white



#------- If the healthbar #41 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=41}] run bossbar set _healthbar.41 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=41}] run bossbar set _healthbar.41 name ""
execute unless entity @e[scores={_hb.crtId=41}] run bossbar set _healthbar.41 color white

#------- If the healthbar #42 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=42}] run bossbar set _healthbar.42 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=42}] run bossbar set _healthbar.42 name ""
execute unless entity @e[scores={_hb.crtId=42}] run bossbar set _healthbar.42 color white

#------- If the healthbar #43 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=43}] run bossbar set _healthbar.43 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=43}] run bossbar set _healthbar.43 name ""
execute unless entity @e[scores={_hb.crtId=43}] run bossbar set _healthbar.43 color white

#------- If the healthbar #44 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=44}] run bossbar set _healthbar.44 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=44}] run bossbar set _healthbar.44 name ""
execute unless entity @e[scores={_hb.crtId=44}] run bossbar set _healthbar.44 color white

#------- If the healthbar #45 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=45}] run bossbar set _healthbar.45 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=45}] run bossbar set _healthbar.45 name ""
execute unless entity @e[scores={_hb.crtId=45}] run bossbar set _healthbar.45 color white

#------- If the healthbar #46 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=46}] run bossbar set _healthbar.46 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=46}] run bossbar set _healthbar.46 name ""
execute unless entity @e[scores={_hb.crtId=46}] run bossbar set _healthbar.46 color white

#------- If the healthbar #47 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=47}] run bossbar set _healthbar.47 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=47}] run bossbar set _healthbar.47 name ""
execute unless entity @e[scores={_hb.crtId=47}] run bossbar set _healthbar.47 color white

#------- If the healthbar #48 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=48}] run bossbar set _healthbar.48 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=48}] run bossbar set _healthbar.48 name ""
execute unless entity @e[scores={_hb.crtId=48}] run bossbar set _healthbar.48 color white

#------- If the healthbar #49 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=49}] run bossbar set _healthbar.49 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=49}] run bossbar set _healthbar.49 name ""
execute unless entity @e[scores={_hb.crtId=49}] run bossbar set _healthbar.49 color white

#------- If the healthbar #50 is available, removes it from all players' screen and resets some of its values -------
execute unless entity @e[scores={_hb.crtId=50}] run bossbar set _healthbar.50 players @a[tag=nobody]
execute unless entity @e[scores={_hb.crtId=50}] run bossbar set _healthbar.50 name ""
execute unless entity @e[scores={_hb.crtId=50}] run bossbar set _healthbar.50 color white
