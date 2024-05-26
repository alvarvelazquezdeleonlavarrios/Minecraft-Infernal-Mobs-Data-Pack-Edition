#******************* Spawning --> Settings --> Names --> Set Name *******************


#------- Creates a sign to generate the custom name for the bossbar -------
# Block sign = setBlock("oak_sign", mob.position);
setblock ~ ~ ~ oak_sign{front_text:{messages:['','','','']}} replace


#+++++++++++++++++++++++++++++++++++++ Skills Name +++++++++++++++++++++++++++++++++++++++++++
#------- If the mob has the "1up" skill, uses it to build its name -------
# if (mob.Tags.Find("1up") == true):
#   sign.text1 = sign.text1 + " 1UP";
execute if entity @s[tag=1up] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" 1UP"}]'

#------- If the mob has the "alchemist" skill, uses it to build its name -------
# if (mob.Tags.Find("alchemist") == true):
#   sign.text1 = sign.text1 + " alchemist";
execute if entity @s[tag=alchemist] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Alchemist"}]'

#------- If the mob has the "berserk" skill, uses it to build its name -------
# if (mob.Tags.Find("berserk") == true):
#   sign.text1 = sign.text1 + " berserk";
execute if entity @s[tag=berserk] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Berserk"}]'

#------- If the mob has the "blastoff" skill, uses it to build its name -------
# if (mob.Tags.Find("blastoff") == true):
#   sign.text1 = sign.text1 + " blastoff";
execute if entity @s[tag=blastoff] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Blastoff"}]'

#------- If the mob has the "bulwark" skill, uses it to build its name -------
# if (mob.Tags.Find("bulwark") == true):
#   sign.text1 = sign.text1 + " bulwark";
execute if entity @s[tag=bulwark] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Bulwark"}]'

#------- If the mob has the "choke" skill, uses it to build its name -------
# if (mob.Tags.Find("choke") == true):
#   sign.text1 = sign.text1 + " choke";
execute if entity @s[tag=choke] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Choke"}]'

#------- If the mob has the "cloacking" skill, uses it to build its name -------
# if (mob.Tags.Find("cloacking") == true):
#   sign.text1 = sign.text1 + " cloacking";
execute if entity @s[tag=cloacking] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Cloacking"}]'

#------- If the mob has the "darkness" skill, uses it to build its name -------
# if (mob.Tags.Find("darkness") == true):
#   sign.text1 = sign.text1 + " darkness";
execute if entity @s[tag=darkness] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Darkness"}]'

#------- If the mob has the "ender" skill, uses it to build its name -------
# if (mob.Tags.Find("ender") == true):
#   sign.text1 = sign.text1 + " ender";
execute if entity @s[tag=ender] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Ender"}]'

#------- If the mob has the "exhaust" skill, uses it to build its name -------
# if (mob.Tags.Find("exhaust") == true):
#   sign.text1 = sign.text1 + " exhaust";
execute if entity @s[tag=exhaust] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Exhaust"}]'

#------- If the mob has the "fiery" skill, uses it to build its name -------
# if (mob.Tags.Find("fiery") == true):
#   sign.text1 = sign.text1 + " fiery";
execute if entity @s[tag=fiery] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Fiery"}]'

#------- If the mob has the "ghastly" skill, uses it to build its name -------
# if (mob.Tags.Find("ghastly") == true):
#   sign.text1 = sign.text1 + " ghastly";
execute if entity @s[tag=ghastly] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Ghastly"}]'

#------- If the mob has the "gravity" skill, uses it to build its name -------
# if (mob.Tags.Find("gravity") == true):
#   sign.text1 = sign.text1 + " gravity";
execute if entity @s[tag=gravity] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Gravity"}]'

#------- If the mob has the "lifesteal" skill, uses it to build its name -------
# if (mob.Tags.Find("lifesteal") == true):
#   sign.text1 = sign.text1 + " lifesteal";
execute if entity @s[tag=lifesteal] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Lifesteal"}]'

#------- If the mob has the "ninja" skill, uses it to build its name -------
# if (mob.Tags.Find("ninja") == true):
#   sign.text1 = sign.text1 + " ninja";
execute if entity @s[tag=ninja] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Ninja"}]'

#------- If the mob has the "poisonous" skill, uses it to build its name -------
# if (mob.Tags.Find("poisonous") == true):
#   sign.text1 = sign.text1 + " poisonous";
execute if entity @s[tag=poisonous] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Poisonous"}]'

#------- If the mob has the "quicksand" skill, uses it to build its name -------
# if (mob.Tags.Find("quicksand") == true):
#   sign.text1 = sign.text1 + " quicksand";
execute if entity @s[tag=quicksand] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Quicksand"}]'

#------- If the mob has the "regen" skill, uses it to build its name -------
# if (mob.Tags.Find("regen") == true):
#   sign.text1 = sign.text1 + " regen";
execute if entity @s[tag=regen] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Regen"}]'

#------- If the mob has the "rust" skill, uses it to build its name -------
# if (mob.Tags.Find("rust") == true):
#   sign.text1 = sign.text1 + " rust";
execute if entity @s[tag=rust] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Rust"}]'

#------- If the mob has the "sapper" skill, uses it to build its name -------
# if (mob.Tags.Find("sapper") == true):
#   sign.text1 = sign.text1 + " sapper";
execute if entity @s[tag=sapper] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Sapper"}]'

#------- If the mob has the "sprint" skill, uses it to build its name -------
# if (mob.Tags.Find("sprint") == true):
#   sign.text1 = sign.text1 + " sprint";
execute if entity @s[tag=sprint] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Sprint"}]'

#------- If the mob has the "sticky" skill, uses it to build its name -------
# if (mob.Tags.Find("sticky") == true):
#   sign.text1 = sign.text1 + " sticky";
execute if entity @s[tag=sticky] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Sticky"}]'

#------- If the mob has the "storm" skill, uses it to build its name -------
# if (mob.Tags.Find("storm") == true):
#   sign.text1 = sign.text1 + " storm";
execute if entity @s[tag=storm] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Storm"}]'

#------- If the mob has the "unyielding" skill, uses it to build its name -------
# if (mob.Tags.Find("unyielding") == true):
#   sign.text1 = sign.text1 + " unyielding";
execute if entity @s[tag=unyielding] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Unyielding"}]'

#------- If the mob has the "vengeance" skill, uses it to build its name -------
# if (mob.Tags.Find("vengeance") == true):
#   sign.text1 = sign.text1 + " vengeance";
execute if entity @s[tag=vengeance] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Vengeance"}]'

#------- If the mob has the "weakness" skill, uses it to build its name -------
# if (mob.Tags.Find("weakness") == true):
#   sign.text1 = sign.text1 + " weakness";
execute if entity @s[tag=weakness] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Weakness"}]'

#------- If the mob has the "webber" skill, uses it to build its name -------
# if (mob.Tags.Find("webber") == true):
#   sign.text1 = sign.text1 + " webber";
execute if entity @s[tag=webber] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Webber"}]'

#------- If the mob has the "wither" skill, uses it to build its name -------
# if (mob.Tags.Find("wither") == true):
#   sign.text1 = sign.text1 + " wither";
execute if entity @s[tag=wither] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"text":" Wither"}]'
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#+++++++++++++++++++++++++++++++++++++ Variant Mob Name ++++++++++++++++++++++++++++++++++++++
#------- Sets random suffix for this mob's name -------
# sign.text2 = setRandomSuffix();
function infernal_mobs:spawning/settings/names/set_random_suffix

#------- Concatenates the mob's original name with the suffix -------
# sign.text2 = mob.name + sign.text2;
data modify block ~ ~ ~ front_text.messages[1] set value '[{"selector":"@e[tag=Infernal_Mob,limit=1,sort=nearest]","interpret":true},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}]'

#------- Sets random prefix for this mob's name -------
# sign.text2 = setRandomPrefix() + sign.text2;
function infernal_mobs:spawning/settings/names/set_random_prefix

#------- Adds the final text for a rare mob -------
# if (mob.Tags.Find("rare")):
#   sign.text1 = "Rare " + sign.text2 + sign.text1;
execute if entity @s[tag=rare] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"text":"Rare ","color":"#4FE2FF"},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true,"color":"#4FE2FF"},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true,"color":"#F5F5F5"}]'

#------- Adds the final text for a ultra mob -------
# if (mob.Tags.Find("ultra")):
#   sign.text1 = "Ultra " + sign.text2 + sign.text1;
execute if entity @s[tag=ultra] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"text":"Ultra ","color":"#FFFF4A"},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true,"color":"#FFFF4A"},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true,"color":"#F5F5F5"}]'

#------- Adds the final text for a infernal mob -------
# if (mob.Tags.Find("infernal")):
#   sign.text1 = "Infernal " + sign.text2 + sign.text1;
execute if entity @s[tag=infernal] run data modify block ~ ~ ~ front_text.messages[0] set value '[{"text":"Infernal ","color":"#FF913D"},{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true,"color":"#FF913D"},{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true,"color":"#F5F5F5"}]'
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#+++++++++++++++++++++++++++++++++++++ Mob's Healthbar Name ++++++++++++++++++++++++++++++++++++++
#------- Temporary stores the built name on the mob's Custom Name field -------
# mob.customName = sign.text1;
data modify entity @s CustomName set from block ~ ~ ~ front_text.messages[0]

#------- Sets this mob a healthbar available on the bossbars list -------
# mob.healthbar = findAvailableHealthbar();
function infernal_mobs:spawning/settings/healthbars/find_available_healthbar

#------- Resets the mob's name to its default value -------
# mob.customName = "";
data modify entity @s CustomName set value ""

#------- Removes the sign generated -------
# deleteBlock( sign );
setblock ~ ~ ~ air replace
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



#------- If there wasn't found any available healthbar, automatically kills this mob teleporting it to the void. -------
# if (healthbar.already_found == false):
#   mob.position = mob.position - new Vector3(0, 1000, 0);
#   kill( mob );
execute if score $Healthbars _healthbar.already_found matches 0 run tp @s ~ ~-1000 ~
execute if score $Healthbars _healthbar.already_found matches 0 run kill @s
