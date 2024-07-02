#******************* Gameplay --> Healthbars --> Kill Unlinked Mobs --> End *******************


#------- Kills all infernal mobs in the End when the first player enters or the last player exits that dimension -------
# if (mob.dimension == "The End"):
#   kill( mob );
kill @e[tag=Infernal_Mob, predicate=infernal_mobs:in_the_end]
