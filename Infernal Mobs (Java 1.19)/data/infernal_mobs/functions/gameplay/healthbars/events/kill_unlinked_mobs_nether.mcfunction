#******************* Gameplay --> Healthbars --> Events --> Kill Unlinked Mobs Nether *******************


#------- When the player gets the advancement "Player Exit The Nether", before the last player exits the Nether dimension, kills all the infernal mobs that could be generated previously because causes a bug where the bossbars have no longer the information of the mob after the player exit the Nether dimension and come back later. -------
# if (GameManager.number_of_players_in_the_nether == 1):
#   kill( mob.getDimension("The Nether") );
execute if score $GameManager _number_of_players.the_nether matches 1 run kill @e[tag=Infernal_Mob, predicate=infernal_mobs:in_the_nether]

#------- Removes the advancement to the player, making they able to receive it later when is hit again -------
# player.advancements.Remove("Player Exit The Nether");
advancement revoke @s only infernal_mobs:gameplay/player_exit_the_nether
