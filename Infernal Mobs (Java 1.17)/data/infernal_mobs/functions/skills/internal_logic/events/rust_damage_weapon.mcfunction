#******************* Skills --> Internal Logic --> Events --> Rust Damage Weapon **********************************


#------- Summons a temporary villager. This will store a copy of the item the player is holding on its main hand -------
# Villager villager = new Villager("rust_player_hit_mob");
summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["rust_player_hit_mob"]}

#------- Creates a copy of the player's selected item (main hand) on the villager's main hand -------
# villager.HandItems["right_hand"] = new Item( player.SelectedItem );
data modify entity @e[type=villager, tag=rust_player_hit_mob, limit=1, sort=nearest] HandItems[0] set from entity @s SelectedItem

#------- Creates a temporary variable for the player to store the current item's damage -------
# int _tmp_damage = new int();
# player.addVariable( _tmp_damage, 0 );
scoreboard objectives add _tmp.rustICrtDm dummy
scoreboard players set @s _tmp.rustICrtDm 0

#------- Increases the damage dealt value, storing it on the temporary variable -------
# player._tmp_damage = player.SelectedItem.damage;
# player._tmp_damage = player._tmp_damage + 6;
execute store result score @s _tmp.rustICrtDm run data get entity @s SelectedItem.tag.Damage
scoreboard players operation @s _tmp.rustICrtDm += $Constants _const.6

#------- Sets the new damage dealt value for the villager's mainhand item -------
# villager.HandItems["right_hand"].damage = player._tmp_damage;
execute store result entity @e[type=villager, tag=rust_player_hit_mob, limit=1, sort=nearest] HandItems[0].tag.Damage int 1 run scoreboard players get @s _tmp.rustICrtDm

#------- Updates the player's selected item with the current villager's mainhand item information -------
# player.SelectedItem = villager.HandItems["right_hand"];
item replace entity @s weapon.mainhand from entity @e[type=villager, tag=rust_player_hit_mob, limit=1, sort=nearest] weapon.mainhand

#------- Kills the temporary villager -------
# villager.kill();
kill @e[type=villager, tag=rust_player_hit_mob, limit=1, sort=nearest]

#------- Removes the temporary variable -------
# deleteVariable( "_tmp_damage" );
scoreboard objectives remove _tmp.rustICrtDm
