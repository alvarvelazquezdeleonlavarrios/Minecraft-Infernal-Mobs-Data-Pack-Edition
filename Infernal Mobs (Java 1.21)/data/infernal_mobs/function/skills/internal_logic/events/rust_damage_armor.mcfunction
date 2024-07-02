#******************* Skills --> Internal Logic --> Events --> Rust Damage Armor **********************************


#------- Summons a temporary villager. This will store a copy of the item the player is holding on its main hand -------
# Villager villager = new Villager("rust_mob_hit_player");
summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["rust_mob_hit_player"]}

#------- Creates a copy of the player's armor items (feet, legs, body and head) for the villager -------
# villager.ArmorItems["feet"] = new Item( player.Inventory[100] );
# villager.ArmorItems["legs"] = new Item( player.Inventory[101] );
# villager.ArmorItems["body"] = new Item( player.Inventory[102] );
# villager.ArmorItems["head"] = new Item( player.Inventory[103] );
# villager.HandItems["left_hand"] = new Item( player.Inventory[-106] );
data modify entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
data modify entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] HandItems[1] set from entity @s Inventory[{Slot:-106b}]

#------- Creates a temporary variable for the player to store the current item's damage -------
# int _tmp_feet_damage = new int();
# int _tmp_legs_damage = new int();
# int _tmp_body_damage = new int();
# int _tmp_head_damage = new int();
# int _tmp_left_hand_damage = new int();
scoreboard objectives add _tmp.rust.armor_feet_current_damage dummy
scoreboard objectives add _tmp.rust.armor_legs_current_damage dummy
scoreboard objectives add _tmp.rust.armor_body_current_damage dummy
scoreboard objectives add _tmp.rust.armor_head_current_damage dummy
scoreboard objectives add _tmp.rust.armor_left_hand_current_damage dummy

# player.addVariable( _tmp_feet_damage, 0 );
# player.addVariable( _tmp_legs_damage, 0 );
# player.addVariable( _tmp_body_damage, 0 );
# player.addVariable( _tmp_head_damage, 0 );
# player.addVariable( _tmp_left_hand_damage, 0 );
scoreboard players set @s _tmp.rust.armor_feet_current_damage 0
scoreboard players set @s _tmp.rust.armor_legs_current_damage 0
scoreboard players set @s _tmp.rust.armor_body_current_damage 0
scoreboard players set @s _tmp.rust.armor_head_current_damage 0
scoreboard players set @s _tmp.rust.armor_left_hand_current_damage 0

#------- Increases the damage dealt value, storing it on the temporary variable -------
# player._tmp_feet_damage = player.Inventory[100].damage;
# player._tmp_legs_damage = player.Inventory[101].damage;
# player._tmp_body_damage = player.Inventory[102].damage;
# player._tmp_head_damage = player.Inventory[103].damage;
# player._tmp_left_hand_damage = player.Inventory[-106].damage;
execute store result score @s _tmp.rust.armor_feet_current_damage run data get entity @s Inventory[{Slot:100b}].components."minecraft:damage"
execute store result score @s _tmp.rust.armor_legs_current_damage run data get entity @s Inventory[{Slot:101b}].components."minecraft:damage"
execute store result score @s _tmp.rust.armor_body_current_damage run data get entity @s Inventory[{Slot:102b}].components."minecraft:damage"
execute store result score @s _tmp.rust.armor_head_current_damage run data get entity @s Inventory[{Slot:103b}].components."minecraft:damage"
execute store result score @s _tmp.rust.armor_left_hand_current_damage run data get entity @s Inventory[{Slot:-106b}].components."minecraft:damage"

# player._tmp_feet_damage = player._tmp_feet_damage + 4;
# player._tmp_legs_damage = player._tmp_legs_damage + 4;
# player._tmp_body_damage = player._tmp_body_damage + 4;
# player._tmp_head_damage = player._tmp_head_damage + 4;
# player._tmp_left_hand_damage = player._tmp_left_hand_damage + 4;
scoreboard players operation @s _tmp.rust.armor_feet_current_damage += $Constants _const.4
scoreboard players operation @s _tmp.rust.armor_legs_current_damage += $Constants _const.4
scoreboard players operation @s _tmp.rust.armor_body_current_damage += $Constants _const.4
scoreboard players operation @s _tmp.rust.armor_head_current_damage += $Constants _const.4
scoreboard players operation @s _tmp.rust.armor_left_hand_current_damage += $Constants _const.4

#------- Sets the new damage dealt value for the villager's mainhand item -------
# villager.ArmorItems["feet"].damage = player._tmp_feet_damage;
# villager.ArmorItems["legs"].damage = player._tmp_legs_damage;
# villager.ArmorItems["body"].damage = player._tmp_body_damage;
# villager.ArmorItems["head"].damage = player._tmp_head_damage;
# villager.HandItems["left_hand"].damage = player._tmp_left_hand_damage;
execute store result entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[0].components."minecraft:damage" int 1 run scoreboard players get @s _tmp.rust.armor_feet_current_damage
execute store result entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[1].components."minecraft:damage" int 1 run scoreboard players get @s _tmp.rust.armor_legs_current_damage
execute store result entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[2].components."minecraft:damage" int 1 run scoreboard players get @s _tmp.rust.armor_body_current_damage
execute store result entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] ArmorItems[3].components."minecraft:damage" int 1 run scoreboard players get @s _tmp.rust.armor_head_current_damage
execute store result entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] HandItems[1].components."minecraft:damage" int 1 run scoreboard players get @s _tmp.rust.armor_left_hand_current_damage

#------- Updates the player's selected item with the current villager's mainhand item information -------
# player.Inventory[100] = villager.ArmorItems["feet"];
# player.Inventory[101] = villager.ArmorItems["legs"];
# player.Inventory[102] = villager.ArmorItems["body"];
# player.Inventory[103] = villager.ArmorItems["head"];
# player.Inventory[-106] = villager.HandItems["left_hand"];
item replace entity @s armor.feet from entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] armor.feet
item replace entity @s armor.legs from entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] armor.legs
item replace entity @s armor.chest from entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] armor.chest
item replace entity @s armor.head from entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] armor.head
item replace entity @s weapon.offhand from entity @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest] weapon.offhand

#------- Kills the temporary villager -------
# villager.kill();
kill @e[type=villager, tag=rust_mob_hit_player, limit=1, sort=nearest]

#------- Removes the temporary variable -------
# deleteVariable( "_tmp_feet_damage" );
# deleteVariable( "_tmp_legs_damage" );
# deleteVariable( "_tmp_body_damage" );
# deleteVariable( "_tmp_head_damage" );
# deleteVariable( "_tmp_left_hand_damage" );
scoreboard objectives remove _tmp.rust.armor_feet_current_damage
scoreboard objectives remove _tmp.rust.armor_legs_current_damage
scoreboard objectives remove _tmp.rust.armor_body_current_damage
scoreboard objectives remove _tmp.rust.armor_head_current_damage
scoreboard objectives remove _tmp.rust.armor_left_hand_current_damage
