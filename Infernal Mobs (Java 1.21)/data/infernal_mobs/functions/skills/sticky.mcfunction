#******************* Skills --> Sticky *******************


#------- Summons an empty base item -------
# Item item = new Item("dirt", 50);
summon item ~ ~1 ~ {Item:{id:"minecraft:dirt",count:1}, PickupDelay:50}

#------- Copies the player's selected item data to the base item -------
# if (player.selectedItem != null):
#   item = player.selectedItem;
data modify entity @e[type=item, limit=1, sort=nearest] Item set from entity @p[gamemode=survival, nbt={SelectedItem:{}}, distance=..6] SelectedItem

#------- Removes the original player's selected item -------
# if (player.selectedItem != null):
#   player.selectedItem = null;
item replace entity @p[gamemode=survival, distance=..6, nbt={SelectedItem:{}}] weapon.mainhand with air

#------- Plays a sound indicating that this mob stole the player's selected item -------
# # playsound( "entity.slime.attack" );
playsound entity.slime.attack block @a ~ ~ ~ 1.0 1.0 0.1

#------- After stealing the player's selected item, resets the timer to its initial value -------
# mob.sticky_current_time = mob.sticky_max_time;
scoreboard players operation @s _skills.sticky.current_time = @s _skills.sticky.max_time
