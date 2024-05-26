#******************* Gameplay --> Healthbars --> Kill Unlinked Mobs --> Nether *******************


#------- Kills all infernal mobs in the Nether when the first player enters or the last player exits that dimension -------
# if (mob.dimension == "The Nether"):
#   kill( mob );
kill @e[tag=Infernal_Mob, predicate=infernal_mobs:in_the_nether]
