#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar display while the fireworks are going up.
#   Called By     =   

# Updates the scoreboard
scoreboard objectives add 5display dummy
scoreboard objectives setdisplay sidebar 5display
scoreboard players reset * 5display

function general:scoreboard_init

# Displays specific symbols that represent if the player is dead or alive depending on if they have the 4dead tag
    # Blue team
execute as @a[tag=ingame,team=blue] if entity @e[type=minecraft:slime,tag=firework,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=blue] unless entity @e[type=minecraft:slime,tag=firework,team=blue] run team modify displayline11 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"#0088ff"}]}
    # Red team
execute as @a[tag=ingame,team=red] if entity @e[type=minecraft:slime,tag=firework,team=red] run team modify displayline8 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=red] unless entity @e[type=minecraft:slime,tag=firework,team=red] run team modify displayline8 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"red"}]}
    # Green team
execute as @a[tag=ingame,team=green] if entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline5 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=green] unless entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline5 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"green"}]}
    # Orange team
execute as @a[tag=ingame,team=orange] if entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline2 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gray"}]}
execute as @a[tag=ingame,team=orange] unless entity @e[type=minecraft:slime,tag=firework,team=green] run team modify displayline2 prefix {"translate":"scoreboard.LuckyLaunch","with":[{"translate":"scoreboard.LuckyLaunch.Symbol","color":"gold"}]}