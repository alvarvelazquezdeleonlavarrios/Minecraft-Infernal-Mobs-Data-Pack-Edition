#******************* Spawning --> Settings --> Names --> Set Name *******************


#------- Creates a sign to generate the custom name for the bossbar -------
# Block sign = setBlock("oak_sign", mob.position);
setblock ~ ~ ~ oak_sign{Text1:'{"text":""}'} replace


#+++++++++++++++++++++++++++++++++++++ Skills Name +++++++++++++++++++++++++++++++++++++++++++

#------- If the mob has the "1up" skill, uses it to build its name -------
# if (mob.Tags.Find("1up") == true):
#   sign.text1 = sign.text1 + " 1UP";
execute if entity @s[tag=1up] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" 1UP"}]'

#------- If the mob has the "alchimist" skill, uses it to build its name -------
# if (mob.Tags.Find("alchimist") == true):
#   sign.text1 = sign.text1 + " alchimist";
execute if entity @s[tag=alchimist] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" alchimist"}]'

#------- If the mob has the "berserk" skill, uses it to build its name -------
# if (mob.Tags.Find("berserk") == true):
#   sign.text1 = sign.text1 + " berserk";
execute if entity @s[tag=berserk] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" berserk"}]'

#------- If the mob has the "blastoff" skill, uses it to build its name -------
# if (mob.Tags.Find("blastoff") == true):
#   sign.text1 = sign.text1 + " blastoff";
execute if entity @s[tag=blastoff] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" blastoff"}]'

#------- If the mob has the "bulwark" skill, uses it to build its name -------
# if (mob.Tags.Find("bulwark") == true):
#   sign.text1 = sign.text1 + " bulwark";
execute if entity @s[tag=bulwark] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" bulwark"}]'

#------- If the mob has the "cloacking" skill, uses it to build its name -------
# if (mob.Tags.Find("cloacking") == true):
#   sign.text1 = sign.text1 + " cloacking";
execute if entity @s[tag=cloacking] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" cloacking"}]'

#------- If the mob has the "darkness" skill, uses it to build its name -------
# if (mob.Tags.Find("darkness") == true):
#   sign.text1 = sign.text1 + " darkness";
execute if entity @s[tag=darkness] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" darkness"}]'

#------- If the mob has the "ender" skill, uses it to build its name -------
# if (mob.Tags.Find("ender") == true):
#   sign.text1 = sign.text1 + " ender";
execute if entity @s[tag=ender] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" ender"}]'

#------- If the mob has the "exhaust" skill, uses it to build its name -------
# if (mob.Tags.Find("exhaust") == true):
#   sign.text1 = sign.text1 + " exhaust";
execute if entity @s[tag=exhaust] run data modify block ~ ~ ~ Text1 set value '[{"nbt":"Text1","block":"~ ~ ~","interpret":true},{"text":" exhaust"}]'


#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#+++++++++++++++++++++++++++++++++++++ Variant Mob Name ++++++++++++++++++++++++++++++++++++++
#------- Adds the final text for a rare mob -------
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
