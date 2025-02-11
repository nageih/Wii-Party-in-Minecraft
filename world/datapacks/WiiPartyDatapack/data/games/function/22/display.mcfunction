#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar scoreboard. Is run at the start and whenever a mole is hit
#   Called By     =   

# Resets the scoreboard and all the scores
scoreboard players reset * 22display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 22display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 22display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 22display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 22display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 22display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 22display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 22display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 22display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 22display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 22display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 22display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 22display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 22display 2

# Shows the number of points the player has

execute as @a[tag=ingame,scores={22goals=0},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"0","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=0},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"0","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=0},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"0","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=0},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"0","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=1},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"1","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=1},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"1","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=1},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"1","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=1},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"1","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=2},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"2","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=2},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"2","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=2},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"2","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=2},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"2","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=3},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"3","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=3},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"3","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=3},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"3","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=3},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"3","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=4},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"4","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=4},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"4","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=4},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"4","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=4},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"4","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=5},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"5","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=5},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"5","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=5},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"5","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=5},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"5","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=6},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"6","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=6},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"6","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=6},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"6","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=6},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"6","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=7},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"7","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=7},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"7","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=7},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"7","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=7},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"7","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=8},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"8","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=8},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"8","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=8},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"8","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=8},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"8","color":"gold","bold":true,"underlined":true}]}

execute as @a[tag=ingame,scores={22goals=9},team=blue] run team modify displayline11 prefix {"translate":"scoreboard.GoalGetters","color":"#0088ff","with":[{"text":"9","color":"#0088ff","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=9},team=red] run team modify displayline8 prefix {"translate":"scoreboard.GoalGetters","color":"red","with":[{"text":"9","color":"red","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=9},team=green] run team modify displayline5 prefix {"translate":"scoreboard.GoalGetters","color":"green","with":[{"text":"9","color":"green","bold":true,"underlined":true}]}
execute as @a[tag=ingame,scores={22goals=9},team=orange] run team modify displayline2 prefix {"translate":"scoreboard.GoalGetters","color":"gold","with":[{"text":"9","color":"gold","bold":true,"underlined":true}]}
