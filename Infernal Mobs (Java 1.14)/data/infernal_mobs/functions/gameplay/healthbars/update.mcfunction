#******************* Gameplay --> Healthbars --> Update *******************


#++++++++++++++++++++++++++++++++++++ Overall Working ++++++++++++++++++++++++++++++++++++++++
# if (mob.healthbar.id == bar_id):
#   mob.healthbar.value = mob.health;
#   mob.healthbar.updateVisibility();
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#------- If this mob is using the healthbar #1, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=1}] run execute store result bossbar _healthbar.1 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=1}] run function infernal_mobs:gameplay/healthbars/update_visibility/1

#------- If this mob is using the healthbar #2, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=2}] run execute store result bossbar _healthbar.2 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=2}] run function infernal_mobs:gameplay/healthbars/update_visibility/2

#------- If this mob is using the healthbar #3, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=3}] run execute store result bossbar _healthbar.3 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=3}] run function infernal_mobs:gameplay/healthbars/update_visibility/3

#------- If this mob is using the healthbar #4, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=4}] run execute store result bossbar _healthbar.4 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=4}] run function infernal_mobs:gameplay/healthbars/update_visibility/4

#------- If this mob is using the healthbar #5, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=5}] run execute store result bossbar _healthbar.5 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=5}] run function infernal_mobs:gameplay/healthbars/update_visibility/5

#------- If this mob is using the healthbar #6, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=6}] run execute store result bossbar _healthbar.6 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=6}] run function infernal_mobs:gameplay/healthbars/update_visibility/6

#------- If this mob is using the healthbar #7, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=7}] run execute store result bossbar _healthbar.7 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=7}] run function infernal_mobs:gameplay/healthbars/update_visibility/7

#------- If this mob is using the healthbar #8, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=8}] run execute store result bossbar _healthbar.8 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=8}] run function infernal_mobs:gameplay/healthbars/update_visibility/8

#------- If this mob is using the healthbar #9, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=9}] run execute store result bossbar _healthbar.9 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=9}] run function infernal_mobs:gameplay/healthbars/update_visibility/9

#------- If this mob is using the healthbar #10, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=10}] run execute store result bossbar _healthbar.10 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=10}] run function infernal_mobs:gameplay/healthbars/update_visibility/10



#------- If this mob is using the healthbar #11, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=11}] run execute store result bossbar _healthbar.11 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=11}] run function infernal_mobs:gameplay/healthbars/update_visibility/11

#------- If this mob is using the healthbar #12, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=12}] run execute store result bossbar _healthbar.12 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=12}] run function infernal_mobs:gameplay/healthbars/update_visibility/12

#------- If this mob is using the healthbar #13, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=13}] run execute store result bossbar _healthbar.13 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=13}] run function infernal_mobs:gameplay/healthbars/update_visibility/13

#------- If this mob is using the healthbar #14, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=14}] run execute store result bossbar _healthbar.14 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=14}] run function infernal_mobs:gameplay/healthbars/update_visibility/14

#------- If this mob is using the healthbar #15, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=15}] run execute store result bossbar _healthbar.15 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=15}] run function infernal_mobs:gameplay/healthbars/update_visibility/15

#------- If this mob is using the healthbar #16, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=16}] run execute store result bossbar _healthbar.16 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=16}] run function infernal_mobs:gameplay/healthbars/update_visibility/16

#------- If this mob is using the healthbar #17, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=17}] run execute store result bossbar _healthbar.17 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=17}] run function infernal_mobs:gameplay/healthbars/update_visibility/17

#------- If this mob is using the healthbar #18, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=18}] run execute store result bossbar _healthbar.18 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=18}] run function infernal_mobs:gameplay/healthbars/update_visibility/18

#------- If this mob is using the healthbar #19, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=19}] run execute store result bossbar _healthbar.19 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=19}] run function infernal_mobs:gameplay/healthbars/update_visibility/19

#------- If this mob is using the healthbar #20, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=20}] run execute store result bossbar _healthbar.20 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=20}] run function infernal_mobs:gameplay/healthbars/update_visibility/20



#------- If this mob is using the healthbar #21, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=21}] run execute store result bossbar _healthbar.21 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=21}] run function infernal_mobs:gameplay/healthbars/update_visibility/21

#------- If this mob is using the healthbar #22, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=22}] run execute store result bossbar _healthbar.22 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=22}] run function infernal_mobs:gameplay/healthbars/update_visibility/22

#------- If this mob is using the healthbar #23, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=23}] run execute store result bossbar _healthbar.23 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=23}] run function infernal_mobs:gameplay/healthbars/update_visibility/23

#------- If this mob is using the healthbar #24, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=24}] run execute store result bossbar _healthbar.24 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=24}] run function infernal_mobs:gameplay/healthbars/update_visibility/24

#------- If this mob is using the healthbar #25, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=25}] run execute store result bossbar _healthbar.25 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=25}] run function infernal_mobs:gameplay/healthbars/update_visibility/25

#------- If this mob is using the healthbar #26, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=26}] run execute store result bossbar _healthbar.26 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=26}] run function infernal_mobs:gameplay/healthbars/update_visibility/26

#------- If this mob is using the healthbar #27, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=27}] run execute store result bossbar _healthbar.27 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=27}] run function infernal_mobs:gameplay/healthbars/update_visibility/27

#------- If this mob is using the healthbar #28, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=28}] run execute store result bossbar _healthbar.28 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=28}] run function infernal_mobs:gameplay/healthbars/update_visibility/28

#------- If this mob is using the healthbar #29, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=29}] run execute store result bossbar _healthbar.29 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=29}] run function infernal_mobs:gameplay/healthbars/update_visibility/29

#------- If this mob is using the healthbar #30, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=30}] run execute store result bossbar _healthbar.30 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=30}] run function infernal_mobs:gameplay/healthbars/update_visibility/30



#------- If this mob is using the healthbar #31, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=31}] run execute store result bossbar _healthbar.31 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=31}] run function infernal_mobs:gameplay/healthbars/update_visibility/31

#------- If this mob is using the healthbar #32, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=32}] run execute store result bossbar _healthbar.32 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=32}] run function infernal_mobs:gameplay/healthbars/update_visibility/32

#------- If this mob is using the healthbar #33, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=33}] run execute store result bossbar _healthbar.33 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=33}] run function infernal_mobs:gameplay/healthbars/update_visibility/33

#------- If this mob is using the healthbar #34, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=34}] run execute store result bossbar _healthbar.34 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=34}] run function infernal_mobs:gameplay/healthbars/update_visibility/34

#------- If this mob is using the healthbar #35, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=35}] run execute store result bossbar _healthbar.35 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=35}] run function infernal_mobs:gameplay/healthbars/update_visibility/35

#------- If this mob is using the healthbar #36, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=36}] run execute store result bossbar _healthbar.36 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=36}] run function infernal_mobs:gameplay/healthbars/update_visibility/36

#------- If this mob is using the healthbar #37, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=37}] run execute store result bossbar _healthbar.37 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=37}] run function infernal_mobs:gameplay/healthbars/update_visibility/37

#------- If this mob is using the healthbar #38, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=38}] run execute store result bossbar _healthbar.38 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=38}] run function infernal_mobs:gameplay/healthbars/update_visibility/38

#------- If this mob is using the healthbar #39, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=39}] run execute store result bossbar _healthbar.39 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=39}] run function infernal_mobs:gameplay/healthbars/update_visibility/39

#------- If this mob is using the healthbar #40, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=40}] run execute store result bossbar _healthbar.40 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=40}] run function infernal_mobs:gameplay/healthbars/update_visibility/40



#------- If this mob is using the healthbar #41, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=41}] run execute store result bossbar _healthbar.41 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=41}] run function infernal_mobs:gameplay/healthbars/update_visibility/41

#------- If this mob is using the healthbar #42, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=42}] run execute store result bossbar _healthbar.42 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=42}] run function infernal_mobs:gameplay/healthbars/update_visibility/42

#------- If this mob is using the healthbar #43, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=43}] run execute store result bossbar _healthbar.43 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=43}] run function infernal_mobs:gameplay/healthbars/update_visibility/43

#------- If this mob is using the healthbar #44, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=44}] run execute store result bossbar _healthbar.44 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=44}] run function infernal_mobs:gameplay/healthbars/update_visibility/44

#------- If this mob is using the healthbar #45, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=45}] run execute store result bossbar _healthbar.45 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=45}] run function infernal_mobs:gameplay/healthbars/update_visibility/45

#------- If this mob is using the healthbar #46, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=46}] run execute store result bossbar _healthbar.46 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=46}] run function infernal_mobs:gameplay/healthbars/update_visibility/46

#------- If this mob is using the healthbar #47, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=47}] run execute store result bossbar _healthbar.47 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=47}] run function infernal_mobs:gameplay/healthbars/update_visibility/47

#------- If this mob is using the healthbar #48, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=48}] run execute store result bossbar _healthbar.48 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=48}] run function infernal_mobs:gameplay/healthbars/update_visibility/48

#------- If this mob is using the healthbar #49, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=49}] run execute store result bossbar _healthbar.49 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=49}] run function infernal_mobs:gameplay/healthbars/update_visibility/49

#------- If this mob is using the healthbar #50, updates its attributes and visibility for players -------
execute if entity @s[scores={_hb.crtId=50}] run execute store result bossbar _healthbar.50 value run data get entity @s Health
execute if entity @s[scores={_hb.crtId=50}] run function infernal_mobs:gameplay/healthbars/update_visibility/50
