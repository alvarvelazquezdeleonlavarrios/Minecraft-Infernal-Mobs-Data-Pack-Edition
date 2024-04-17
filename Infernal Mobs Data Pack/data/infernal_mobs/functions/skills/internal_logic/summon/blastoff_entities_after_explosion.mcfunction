#******************* Skills --> Internal Logic --> Summon --> Blastoff Entities After Explosion *******************


#++++++++++++++++++++++++++++++ Important Note ++++++++++++++++++++++++++++++++
# All this operations are executed too above into the "space". A place where players usually don't visit or can't access to.
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


#------- Summons an area effect cloud (AEC) with instant damage effect so that can hurt a flying entity like a bat -------
# AEC aec = new AEC("after_explosion");
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,Effects:[{Id:7,Amplifier:0b,Duration:1}],Tags:["after_explosion"]}

#------- Sets this player as the AEC's Owner to force they hurt the bat -------
# aec.owner = this;
execute positioned ~ ~ ~ run data modify entity @e[type=area_effect_cloud,tag=after_explosion,limit=1,sort=nearest,distance=..1] Owner set from entity @s UUID

#------- Summons a bat with low health that will be "hit by the player" using the AEC -------
# Bat bat = new Bat("after_explosion");
summon minecraft:bat ~ ~ ~ {DeathLootTable:"",NoAI:1b,Health:1.0f,Tags:["after_explosion"],PersistenceRequired:1b}
