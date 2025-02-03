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
execute as @a[tag=ingame,scores={22goals=0},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"0","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=0},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"0","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=0},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"0","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=0},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"0","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=1},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"1","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=1},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"1","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=1},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"1","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=1},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"1","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=2},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"2","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=2},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"2","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=2},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"2","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=2},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"2","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=3},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"3","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=3},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"3","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=3},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"3","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=3},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"3","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=4},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"4","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=4},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"4","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=4},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"4","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=4},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"4","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=5},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"5","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=5},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"5","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=5},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"5","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=5},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"5","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=6},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"6","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=6},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"6","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=6},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"6","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=6},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"6","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=7},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"7","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=7},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"7","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=7},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"7","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=7},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"7","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=8},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"8","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=8},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"8","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=8},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"8","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=8},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"8","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=9},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"9","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=9},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"9","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=9},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"9","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=9},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"9","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=10},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"10","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=10},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"10","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=10},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"10","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=10},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"10","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=11},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"11","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=11},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"11","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=11},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"11","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=11},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"11","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=12},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"12","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=12},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"12","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=12},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"12","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=12},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"12","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=13},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"13","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=13},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"13","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=13},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"13","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=13},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"13","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=14},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"14","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=14},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"14","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=14},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"14","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=14},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"14","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=15},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"15","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=15},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"15","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=15},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"15","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=15},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"15","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=16},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"16","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=16},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"16","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=16},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"16","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=16},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"16","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=17},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"17","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=17},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"17","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=17},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"17","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=17},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"17","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=18},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"18","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=18},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"18","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=18},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"18","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=18},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"18","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=19},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"19","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=19},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"19","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=19},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"19","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=19},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"19","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=20},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"20","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=20},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"20","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=20},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"20","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=20},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"20","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=21},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"21","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=21},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"21","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=21},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"21","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=21},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"21","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=22},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"22","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=22},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"22","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=22},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"22","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=22},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"22","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=23},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"23","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=23},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"23","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=23},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"23","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=23},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"23","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=24},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"24","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=24},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"24","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=24},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"24","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=24},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"24","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=25},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"25","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=25},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"25","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=25},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"25","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=25},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"25","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=26},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"26","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=26},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"26","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=26},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"26","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=26},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"26","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=27},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"27","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=27},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"27","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=27},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"27","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=27},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"27","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=28},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"28","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=28},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"28","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=28},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"28","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=28},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"28","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=29},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"29","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=29},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"29","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=29},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"29","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=29},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"29","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=30},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"30","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=30},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"30","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=30},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"30","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=30},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"30","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=31},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"31","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=31},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"31","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=31},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"31","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=31},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"31","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=32},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"32","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=32},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"32","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=32},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"32","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=32},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"32","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=33},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"33","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=33},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"33","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=33},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"33","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=33},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"33","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=34},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"34","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=34},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"34","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=34},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"34","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=34},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"34","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=35},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"35","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=35},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"35","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=35},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"35","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=35},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"35","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=36},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"36","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=36},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"36","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=36},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"36","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=36},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"36","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=37},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"37","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=37},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"37","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=37},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"37","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=37},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"37","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=38},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"38","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=38},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"38","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=38},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"38","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=38},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"38","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=39},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"39","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=39},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"39","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=39},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"39","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=39},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"39","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=40},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"40","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=40},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"40","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=40},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"40","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=40},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"40","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=41},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"41","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=41},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"41","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=41},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"41","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=41},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"41","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=42},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"42","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=42},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"42","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=42},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"42","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=42},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"42","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=43},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"43","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=43},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"43","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=43},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"43","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=43},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"43","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=44},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"44","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=44},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"44","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=44},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"44","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=44},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"44","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=45},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"45","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=45},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"45","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=45},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"45","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=45},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"45","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=46},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"46","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=46},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"46","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=46},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"46","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=46},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"46","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=47},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"47","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=47},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"47","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=47},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"47","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=47},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"47","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=48},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"48","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=48},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"48","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=48},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"48","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=48},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"48","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=49},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"49","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=49},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"49","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=49},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"49","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=49},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"49","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=50},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"50","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=50},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"50","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=50},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"50","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=50},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"50","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=51},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"51","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=51},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"51","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=51},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"51","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=51},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"51","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=52},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"52","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=52},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"52","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=52},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"52","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=52},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"52","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=53},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"53","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=53},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"53","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=53},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"53","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=53},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"53","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=54},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"54","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=54},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"54","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=54},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"54","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=54},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"54","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=55},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"55","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=55},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"55","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=55},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"55","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=55},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"55","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=56},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"56","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=56},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"56","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=56},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"56","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=56},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"56","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=57},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"57","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=57},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"57","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=57},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"57","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=57},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"57","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=58},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"58","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=58},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"58","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=58},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"58","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=58},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"58","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=59},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"59","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=59},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"59","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=59},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"59","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=59},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"59","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=60},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"60","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=60},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"60","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=60},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"60","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=60},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"60","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=61},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"61","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=61},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"61","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=61},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"61","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=61},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"61","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=62},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"62","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=62},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"62","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=62},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"62","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=62},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"62","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=63},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"63","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=63},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"63","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=63},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"63","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=63},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"63","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=64},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"64","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=64},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"64","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=64},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"64","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=64},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"64","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=65},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"65","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=65},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"65","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=65},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"65","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=65},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"65","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=66},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"66","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=66},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"66","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=66},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"66","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=66},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"66","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=67},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"67","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=67},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"67","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=67},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"67","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=67},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"67","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=68},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"68","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=68},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"68","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=68},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"68","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=68},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"68","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=69},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"69","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=69},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"69","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=69},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"69","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=69},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"69","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=70},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"70","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=70},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"70","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=70},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"70","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=70},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"70","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=71},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"71","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=71},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"71","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=71},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"71","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=71},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"71","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=72},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"72","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=72},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"72","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=72},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"72","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=72},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"72","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=73},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"73","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=73},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"73","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=73},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"73","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=73},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"73","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=74},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"74","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=74},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"74","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=74},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"74","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=74},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"74","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=75},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"75","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=75},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"75","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=75},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"75","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=75},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"75","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=76},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"76","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=76},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"76","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=76},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"76","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=76},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"76","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=77},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"77","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=77},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"77","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=77},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"77","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=77},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"77","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=78},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"78","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=78},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"78","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=78},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"78","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=78},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"78","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=79},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"79","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=79},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"79","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=79},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"79","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=79},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"79","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=80},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"80","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=80},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"80","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=80},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"80","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=80},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"80","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=81},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"81","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=81},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"81","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=81},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"81","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=81},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"81","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=82},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"82","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=82},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"82","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=82},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"82","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=82},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"82","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=83},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"83","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=83},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"83","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=83},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"83","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=83},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"83","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=84},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"84","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=84},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"84","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=84},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"84","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=84},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"84","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=85},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"85","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=85},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"85","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=85},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"85","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=85},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"85","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=86},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"86","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=86},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"86","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=86},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"86","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=86},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"86","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=87},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"87","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=87},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"87","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=87},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"87","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=87},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"87","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=88},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"88","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=88},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"88","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=88},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"88","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=88},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"88","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=89},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"89","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=89},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"89","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=89},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"89","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=89},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"89","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=90},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"90","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=90},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"90","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=90},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"90","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=90},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"90","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=91},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"91","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=91},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"91","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=91},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"91","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=91},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"91","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=92},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"92","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=92},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"92","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=92},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"92","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=92},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"92","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=93},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"93","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=93},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"93","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=93},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"93","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=93},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"93","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=94},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"94","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=94},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"94","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=94},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"94","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=94},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"94","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=95},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"95","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=95},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"95","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=95},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"95","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=95},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"95","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=96},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"96","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=96},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"96","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=96},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"96","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=96},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"96","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=97},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"97","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=97},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"97","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=97},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"97","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=97},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"97","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=98},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"98","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=98},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"98","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=98},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"98","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=98},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"98","color":"gold","bold":true,"underlined":true}]

execute as @a[tag=ingame,scores={22goals=99},team=blue] run team modify displayline11 prefix [{"text":"      ","color":"#0088ff"},{"text":"99","color":"#0088ff","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=99},team=red] run team modify displayline8 prefix [{"text":"      ","color":"red"},{"text":"99","color":"red","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=99},team=green] run team modify displayline5 prefix [{"text":"      ","color":"green"},{"text":"99","color":"green","bold":true,"underlined":true}]
execute as @a[tag=ingame,scores={22goals=99},team=orange] run team modify displayline2 prefix [{"text":"      ","color":"gold"},{"text":"99","color":"gold","bold":true,"underlined":true}]