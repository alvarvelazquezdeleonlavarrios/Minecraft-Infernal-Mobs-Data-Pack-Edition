#******************* Skills --> Berserk (Update) *******************


#++++++++++++++++++++++ Duplicates current mob's Attack Damage ++++++++++++++++++++++++++++
#------- Gets the current mob's attack damage value. Then multiplies it by 2. Finally sets the new value -------
# mob.berserk_current_attack_damage = mob.attack_damage;
# mob.berserk_current_attack_damage = mob.berserk_current_attack_damage * 2;
# mob.attack_damage = mob.berserk_current_attack_damage;
execute store result score @s _skills.berserk.current_attack_damage run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players operation @s _skills.berserk.current_attack_damage *= $Constants _const.2
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s _skills.berserk.current_attack_damage
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
