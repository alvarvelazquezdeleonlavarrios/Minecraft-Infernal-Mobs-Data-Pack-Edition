#******************* Skills --> Berserk (Update) *******************


#++++++++++++++++++++++ Duplicates current mob's Attack Damage ++++++++++++++++++++++++++++
#------- Ensures that the mob has that attribute. Then multiplies it by 2. Finally sets the new value. -------
# if (mob.attributes.Find("minecraft:generic.attack_damage") == true):
#   mob.berserk_current_attack_damage = mob.attack_damage;
#   mob.berserk_current_attack_damage = mob.berserk_current_attack_damage * 2;
#   mob.attack_damage = mob.berserk_current_attack_damage;
execute if data entity @s attributes[{id:"minecraft:generic.attack_damage"}] store result score @s _skills.berserk.current_attack_damage run data get entity @s attributes[{id:"minecraft:generic.attack_damage"}].base 10
execute if data entity @s attributes[{id:"minecraft:generic.attack_damage"}] run scoreboard players operation @s _skills.berserk.current_attack_damage *= $Constants _const.2
execute if data entity @s attributes[{id:"minecraft:generic.attack_damage"}] store result entity @s attributes[{id:"minecraft:generic.attack_damage"}].base double 0.1 run scoreboard players get @s _skills.berserk.current_attack_damage
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
