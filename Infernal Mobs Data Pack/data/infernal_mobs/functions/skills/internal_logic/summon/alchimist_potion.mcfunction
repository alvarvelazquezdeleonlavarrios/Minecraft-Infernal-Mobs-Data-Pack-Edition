#******************* Skills --> Internal Logic --> Summon --> Alchimist Potion *******************


#------- Creates a temporary variable to summon a random potion -------
# int tmp_alchimist_random_potion = new int();
scoreboard objectives add _tmp.alchimist.random_potion dummy

#------- Adds the temporary variable to this mob -------
# mob.addVariable( tmp_alchimist_random_potion, 0 );
scoreboard players set @s _tmp.alchimist.random_potion 0

#------- Defines the probability of the potion to be thrown -------
# mob.tmp_alchimist_random_potion = Random.Range(0,99);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @s _tmp.alchimist.random_potion run data get entity @e[type=area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @s _tmp.alchimist.random_potion %= $Constants _const.100
kill @e[type=area_effect_cloud,tag=random_uuid, limit=1, sort=nearest]


#++++++++++++++++++++++++++++++++++ Alchimist Potions List +++++++++++++++++++++++++++++++++++++++++
#------- If the probability value is between 0 and 24, summons a poison potion -------
# if (mob.tmp_alchimist_random_potion >= 0 && mob.tmp_alchimist_random_potion <= 24 ):
#   Potion potion = new Potion("Poison");
execute if score @s _tmp.alchimist.random_potion matches 0..24 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}

#------- If the probability value is between 25 and 49, summons a instant damnage potion -------
# if (mob.tmp_alchimist_random_potion >= 25 && mob.tmp_alchimist_random_potion <= 49 ):
#   Potion potion = new Potion("Instant Damage");
execute if score @s _tmp.alchimist.random_potion matches 25..49 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}

#------- If the probability value is between 50 and 74, summons a slowness potion -------
# if (mob.tmp_alchimist_random_potion >= 50 && mob.tmp_alchimist_random_potion <= 74 ):
#   Potion potion = new Potion("Slowness");
execute if score @s _tmp.alchimist.random_potion matches 50..74 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}

#------- If the probability value is between 75 and 99, summons a weakness potion -------
# if (mob.tmp_alchimist_random_potion >= 75 && mob.tmp_alchimist_random_potion <= 99 ):
#   Potion potion = new Potion("Weakness");
execute if score @s _tmp.alchimist.random_potion matches 75..99 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates that the owner of the summoned potion is this mob -------
# potion.owner = this;
data modify entity @e[type=potion, sort=nearest, limit=1, distance=..2] Owner set from entity @s UUID

#------- Removes the temporary variable -------
# deleteVariable( tmp_alchimist_random_potion );
scoreboard objectives remove _tmp.alchimist.random_potion
