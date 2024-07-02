#******************* Skills --> Internal Logic --> Summon --> Alchemist Potion *******************


#------- Creates a temporary variable to summon a specific potion -------
# int tmp_alchemist_current_potion_id = new int();
scoreboard objectives add _tmp.alchemist.current_potion_id dummy

#------- Adds the temporary variable to this mob. Sets the value for an "Instant Damage" potion (default) -------
# mob.addVariable( tmp_alchemist_current_potion_id, 0 );
scoreboard players set @s _tmp.alchemist.current_potion_id 0


#++++++++++++++++++++++++++++++++++ Alchemist Potions List +++++++++++++++++++++++++++++++++++++++++
#------- If the player is far from this mob, still has a lot of health and doesn't have the poison effect, sets the variable for a "Poison" potion -------
# if (player.distance <= 40 && player.health >= 8.0f && player.effects.Find("Poison") == false):
#   tmp_alchemist_current_potion_id = 1;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=..40, scores={_health_points=8..}, nbt=!{active_effects:[{id:"minecraft:poison"}]}] run scoreboard players set @s _tmp.alchemist.current_potion_id 1

#------- If the player is far from this mob and doesn't have the slowness effect, sets the variable for a "Slowness" potion -------
# if (player.distance == [8,40] && player.effects.Find("Slowness") == false):
#   tmp_alchemist_current_potion_id = 2;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=8..40, nbt=!{active_effects:[{id:"minecraft:slowness"}]}] run scoreboard players set @s _tmp.alchemist.current_potion_id 2

#------- If the player is near from this mob and doesn't have the weakness effect, sets the variable for a "Weakness" potion -------
# if (player.distance <= 3 && player.effects.Find("Weakness") == false):
#   tmp_alchemist_current_potion_id = 3;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=..3, nbt=!{active_effects:[{id:"minecraft:weakness"}]}] run scoreboard players set @s _tmp.alchemist.current_potion_id 3
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++++ Generating Potion +++++++++++++++++++++++++++++++++++++++++
#------- Summons an "Instant Damage" potion (default) -------
# if (tmp_alchemist_current_potion_id == 0):
#   Potion potion = new Potion("Instant Damage");
execute if score @s _tmp.alchemist.current_potion_id matches 0 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}

#------- Summons a "Poison" potion -------
# if (tmp_alchemist_current_potion_id == 1):
#   Potion potion = new Potion("Poison");
execute if score @s _tmp.alchemist.current_potion_id matches 1 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}

#------- Summons a "Slowness" potion -------
# if (tmp_alchemist_current_potion_id == 2):
#   Potion potion = new Potion("Slowness");
execute if score @s _tmp.alchemist.current_potion_id matches 2 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}}

#------- Summons a "Weakness" potion (default) -------
# if (tmp_alchemist_current_potion_id == 3):
#   Potion potion = new Potion("Weakness");
execute if score @s _tmp.alchemist.current_potion_id matches 3 run summon potion ~ ~1 ~ {Item:{id:"minecraft:splash_potion",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:weakness"}}}}
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates that the owner of the summoned potion is this mob -------
# potion.owner = this;
data modify entity @e[type=potion, sort=nearest, limit=1, distance=..2] Owner set from entity @s UUID

#------- Removes the temporary variable -------
scoreboard objectives remove _tmp.alchemist.current_potion_id
