#   Author        =   @ JevinLevin
#   Description   =   Ran every tick, constantly makes sure the players hunger is low so that when they become a zombie they stop sprinting
#   Called By     =   games:2/repeating


# Depending on the total hunger of the player, it will either give or remove saturation/hunger from them
# This is to make sure that when a player is converted into a zombie, they can't sprint for very long, giving them a massive advantage
effect give @a[tag=ingame,tag=!dead,scores={2hunger=..7}] minecraft:saturation infinite 1 true
effect give @a[tag=ingame,tag=!dead,scores={2hunger=8..}] minecraft:hunger infinite 255 true
effect clear @a[tag=ingame,tag=!dead,scores={2hunger=..7}] minecraft:hunger
effect clear @a[tag=ingame,tag=!dead,scores={2hunger=8..}] minecraft:saturation
effect give @a[tag=ingame,tag=dead,scores={2hunger=0..1}] minecraft:saturation infinite 1 true
effect give @a[tag=ingame,tag=dead,scores={2hunger=2..6}] minecraft:hunger infinite 255 true
effect clear @a[tag=ingame,tag=dead,scores={2hunger=0..1}] minecraft:hunger
effect clear @a[tag=ingame,tag=dead,scores={2hunger=2..6}] minecraft:saturation