# Minecraft Infernal Mobs: Data Pack Edition

![Minecraft Infernal Mobs Data Pack Cover](/src/img/manual/MinecraftInfernalMobsDataPackCover.png)

Welcome! This is a personal project about a data pack for Minecraft (Java Edition only), inspired on the iconic mod of the same name, [Infernal Mobs](https://www.curseforge.com/minecraft/mc-mods/atomicstrykers-infernal-mobs), developed by **AtomicStryker** for CurseForge.

This data pack tries to recreate the same experience of the mod, **without needing the user to install additional software** on the game or PC, just copy the data pack folder when creating a new world or directly on the world's save path.

| Rare Mob | Ultra Mob | Infernal Mob |
| ---- | ---- | ---- |
| ![Rare Mob](/src/img/variants/rare.gif) | ![Ultra Mob](/src/img/variants/ultra.gif) | ![Infernal Mob](/src/img/variants/infernal.gif) |

> [!WARNING]
> This data pack is available **only for Minecraft main releases**, since **v.1.14** and above. So if you try to play in minor releases (like 1.19.3, 1.16.2, etc.) it could cause troubles.

## Data Pack Main Features

The main content of this data pack is the following:

- Natural spawning system for all the hostile (and some neutral) mob variants (random appearing chance for each one).
- Death detection system to generate custom loot when killing a mob variant.
- Random skills for a mob when spawns.
- Custom bossbar name (random prefix and suffix included) and color for each mob.
- Custom death loot table and experience orbs drop for each mob variant.
- Custom particles display for each variant.

### Mob Skills List

As same as the original mod, there are 28 skills implemented for all hostile mobs:

1. 1UP
2. Alchemist
3. Berserk
4. Blastoff
5. Bulwark
6. Choke ***(available since v.1.20 and later)***
7. Cloacking
8. Darkness
9. Ender
10. Exhaust
11. Fiery
12. Ghastly
13. Gravity
14. Lifesteal
15. Ninja
16. Poisonous
17. Quicksand
18. Regen
19. Rust ***(available since v1.17 and later)***
20. Sapper
21. Sprint
22. Sticky
23. Storm
24. Unyielding
25. Vengeance
26. Weakness
27. Webber
28. Wither

For further information about each skill, check the detailed list here: [Skills](/src/Skills.md)

### Mob Variants List

As same as the original mod, there are 3 variants of hostile mobs:

1. Rare ***(a.k.a. Elite)***
2. Ultra
3. Infernal

For further information about each variant (range of random skills, death loot table and spawning chance), check the detailed list here: [Variants](/src/Variants.md)

### Hostile/Neutral Built-in Mobs List

The complete list of the entities that can be set with skills and variants' behaviours is linked here: [Built-in Mobs](/src/Built-in_Mobs.md)

## Manual

### Downloading the Data Pack

1. From this repository webpage, go to the **Releases** section.
2. Select a release and look for its **Assets** section.
3. Download the file **Infernal_Mobs_Java_1.`Minecraft Release`_v.1.`Data Pack Version`.zip** according to the version of the game you're going to play.

### Installing the Data Pack

To install this (and any) data pack into your Minecraft world, you should follow the instructions described in this Minecraft Wiki article: [Installing a data pack](https://minecraft.wiki/w/Tutorials/Installing_a_data_pack)

### Reloading the Data Pack

Inside the game, if your world is allowed to use cheats (commands), then open the chat bar and type the `/reload` command to restart every data pack installed in your world's folder. You'll see a message like this one:

![Minecraft Infernal Mobs Data Pack Reload](/src/img/manual/MinecraftInfernalMobsDataPackReload.png)

## Special Acknowledgments

Thanks to the following people for making this project possible:

- **[AtomicStryker](https://github.com/AtomicStryker):**
The main person of the original idea. Thanks to its [mod's main code](https://github.com/AtomicStryker/atomicstrykers-minecraft-mods/tree/1.19/InfernalMobs), I was able to code the majority of this data pack.

- **[BigPapi13](https://github.com/BigPapi13):**
For giving me the idea to develop some skills that involves physical movements to the player (blastoff and gravity) with the Creepers' explosions method from its [Delta](https://github.com/BigPapi13/Delta) data pack project and its [How to Give Players Motion with Commands | Minecraft Tutorial](https://www.youtube.com/watch?v=c4cnUvu4EJQ) video.

- **[Legitimoose](https://www.youtube.com/@Legitimoose):**
For his [Datapack Tutorial](https://www.youtube.com/playlist?list=PLpjtAMQmETlSOZzZbQOmoU87js78dZGbO) playlist on YouTube, for helping me to understand the syntax of Minecraft commands, mainly about the use of NBT Data.

- **[Cloud Wolf](https://www.youtube.com/@Cl0udWolf):**
For his [Minecraft Tutorials](https://www.youtube.com/playlist?list=PLTRX9BDGoc4eFY8KtR4i4d050jMjPDiGn) playlist on YouTube, mainly helping me to implement the predicates, advancements, and bossbars system.

- **[Timber Forge](https://www.youtube.com/@TimberForge):**
For his [Data Pack Tutorials - Minecraft Java Edition](https://www.youtube.com/playlist?list=PLi7Dhu-qOl8N_lonfnHczcqmDSgEkCvc0) playlist on YouTube, that helped me to develop the natural spawning system and loot tables for the mobs.

- **[MaxStuff](https://www.youtube.com/@TimberForge):**
For his [Minecraft Tutorials](https://www.youtube.com/playlist?list=PLG79zAI7kICwJRGBGMv134TBqIig4Nr-f) YouTube playlist that helped me to create custom bossbars and set them to mobs, getting their current health every moment.

## External References

You can also find this Data Pack in the following web sites:

- [Planet Minecraft](https://www.planetminecraft.com/data-pack/minecraft-infernal-mobs-data-pack-edition/).

## Disclaimer

The Minecraft brand belongs to Xbox Game Studios and Mojang Studios. All another rights reserved by their respective owners.

For terms of use of this project, read its [License](/LICENSE).
