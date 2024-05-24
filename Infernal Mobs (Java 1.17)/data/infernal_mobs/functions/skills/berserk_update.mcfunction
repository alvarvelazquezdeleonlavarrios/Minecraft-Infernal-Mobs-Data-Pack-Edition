#******************* Skills --> Berserk (Update) *******************


#++++++++++++++++++++++ Duplicates current mob's Attack Damage ++++++++++++++++++++++++++++
#------- Ensures that the mob has that attribute. Then multiplies it by 2. Finally sets the new value. -------
# if (mob.attributes.Find("minecraft:generic.attack_damage") == true):
#   mob.berserk_current_attack_damage = mob.attack_damage;
#   mob.berserk_current_attack_damage = mob.berserk_current_attack_damage * 2;
#   mob.attack_damage = mob.berserk_current_attack_damage;
execute if data entity @s Attributes[{Name:"minecraft:generic.attack_damage"}] store result score @s _sk.brsk.crtAtk run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base 10
execute if data entity @s Attributes[{Name:"minecraft:generic.attack_damage"}] run scoreboard players operation @s _sk.brsk.crtAtk *= $Constants _const.2
execute if data entity @s Attributes[{Name:"minecraft:generic.attack_damage"}] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.1 run scoreboard players get @s _sk.brsk.crtAtk
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
