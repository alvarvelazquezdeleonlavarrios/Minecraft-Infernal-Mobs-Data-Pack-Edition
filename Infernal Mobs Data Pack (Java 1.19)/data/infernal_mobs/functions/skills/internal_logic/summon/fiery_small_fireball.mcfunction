#******************* Skills --> Internal Logic --> Summon --> Fiery Small Fireball **********************************


#------- Summons a Small Fireball -------
# SmallFireball small_fireball = new SmallFireball("fiery_small_fireball");
# small_fireball.localPosition = new Vector3(0, 2f, 0);
# small_fireball.motion = new Vector3(0, -8f, 0);
summon small_fireball ~ ~2.5 ~ {power:[0.0,-8.0,0.0], Tags:["fiery_small_fireball"]}

#------- Indicates that the owner of the summoned small fireball is the nearest "fiery" mob -------
# small_fireball.owner = mobs.Find("Fiery", nearest);
data modify entity @e[type=small_fireball, tag=fiery_small_fireball, limit=1, sort=nearest, distance=..3] Owner set from entity @e[tag=Infernal_Mob, tag=fiery, limit=1, sort=nearest, distance=..40] UUID
