#******************* Skills --> Internal Logic --> Summon --> Fiery Small Fireball **********************************


#------- Summons a Small Fireball -------
# SmallFireball small_fireball = new SmallFireball("fiery_small_fireball");
# small_fireball.localPosition = new Vector3(0, 2f, 0);
# small_fireball.motion = new Vector3(0, -8f, 0);
summon small_fireball ~ ~2.5 ~ {direction:[0.0,-1.0,0.0], power:[0.0,-8.0,0.0], Tags:["fiery_small_fireball"]}
