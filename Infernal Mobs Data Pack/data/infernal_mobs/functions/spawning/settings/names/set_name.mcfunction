#******************* Spawning --> Settings --> Names --> Set Name *******************


#------- Creates a sign to generate the custom name for the bossbar -------
# Block sign = setBlock("oak_sign", mob.position);
setblock ~ ~ ~ oak_sign{Text1:'{"text":""}'} replace


#+++++++++++++++++++++++++++++++++++++ Skills Name +++++++++++++++++++++++++++++++++++++++++++



#------- If the mob has the "alchimist" skill, uses it to build its name -------
# if (mob.Tags.Find("alchimist") == true):
#   sign.text1 = sign.text1 + " alchimist";
execute if entity @s[tag=alchimist] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" alchimist"}]'


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#+++++++++++++++++++++++++++++++++++++ Variant Mob Name ++++++++++++++++++++++++++++++++++++++

#------- Adds the final text for a rare mob name -------
# if (mob.Tags.Find("rare")):
#   sign.text1 = "Rare " + mob.name + sign.text1;
execute if entity @s[tag=rare] run data modify block ~ ~ ~ Text1 set value '[{"text":"Rare "},{"selector":"@e[tag=rare,limit=1,sort=nearest]","interpret":true},{"nbt":"Text1","block":"~ ~ ~","interpret":true}]'


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Temporary stores the built name on the mob's Custom Name field -------
# mob.customName = sign.text1;
data modify entity @s CustomName set from block ~ ~ ~ Text1

#------- Sets this mob a healthbar available on the bossbars list -------
# mob.healthbar = findAvailableHealthbar();
function infernal_mobs:spawning/settings/healthbars/find_available_healthbar

#------- Resets the mob's name to its default value -------
# mob.customName = "";
data modify entity @s CustomName set value ""

#------- Removes the sign generated -------
# deleteBlock( sign );
setblock ~ ~ ~ air replace
