#******************* Skills --> Internal Logic --> Summon --> Alchemist Potion *******************


#------- Creates a temporary variable to summon a specific potion -------
# int tmp_alchemist_current_potion_id = new int();
scoreboard objectives add _tmp.alch.crtPId dummy

#------- Adds the temporary variable to this mob. Sets the value for an "Instant Damage" potion (default) -------
# mob.addVariable( tmp_alchemist_current_potion_id, 0 );
scoreboard players set @s _tmp.alch.crtPId 0


#++++++++++++++++++++++++++++++++++ Alchemist Potions List +++++++++++++++++++++++++++++++++++++++++
#------- If the player is far from this mob, still has a lot of health and doesn't have the poison effect, sets the variable for a "Poison" potion -------
# if (player.distance <= 40 && player.health >= 8.0f && player.effects.Find("Poison") == false):
#   tmp_alchemist_current_potion_id = 1;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=..40, scores={_health_points=8..}, nbt=!{ActiveEffects:[{Id:19}]}] run scoreboard players set @s _tmp.alch.crtPId 1

#------- If the player is far from this mob and doesn't have the slowness effect, sets the variable for a "Slowness" potion -------
# if (player.distance == [8,40] && player.effects.Find("Slowness") == false):
#   tmp_alchemist_current_potion_id = 2;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=8..40, nbt=!{ActiveEffects:[{Id:2}]}] run scoreboard players set @s _tmp.alch.crtPId 2

#------- If the player is near from this mob and doesn't have the weakness effect, sets the variable for a "Weakness" potion -------
# if (player.distance <= 3 && player.effects.Find("Weakness") == false):
#   tmp_alchemist_current_potion_id = 3;
execute if entity @a[gamemode=survival, limit=1, sort=nearest, distance=..3, nbt=!{ActiveEffects:[{Id:18}]}] run scoreboard players set @s _tmp.alch.crtPId 3
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#++++++++++++++++++++++++++++++++++ Generating Potion +++++++++++++++++++++++++++++++++++++++++
#------- Summons an "Instant Damage" potion (default) -------
# if (tmp_alchemist_current_potion_id == 0):
#   Potion potion = new Potion("Instant Damage");
execute if score @s _tmp.alch.crtPId matches 0 run summon potion ~ ~1 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}

#------- Summons a "Poison" potion -------
# if (tmp_alchemist_current_potion_id == 1):
#   Potion potion = new Potion("Poison");
execute if score @s _tmp.alch.crtPId matches 1 run summon potion ~ ~1 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}

#------- Summons a "Slowness" potion -------
# if (tmp_alchemist_current_potion_id == 2):
#   Potion potion = new Potion("Slowness");
execute if score @s _tmp.alch.crtPId matches 2 run summon potion ~ ~1 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}

#------- Summons a "Weakness" potion (default) -------
# if (tmp_alchemist_current_potion_id == 3):
#   Potion potion = new Potion("Weakness");
execute if score @s _tmp.alch.crtPId matches 3 run summon potion ~ ~1 ~ {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Indicates that the owner of the summoned potion is this mob -------
# potion.owner = this;
data modify entity @e[type=potion, sort=nearest, limit=1, distance=..2] OwnerUUIDLeast set from entity @s UUIDLeast
data modify entity @e[type=potion, sort=nearest, limit=1, distance=..2] OwnerUUIDMost set from entity @s UUIDMost

#------- Removes the temporary variable -------
scoreboard objectives remove _tmp.alch.crtPId
