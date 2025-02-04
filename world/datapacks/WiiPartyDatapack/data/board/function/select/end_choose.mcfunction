

scoreboard players reset timer= minigameSelect
scoreboard players reset maxTicks= minigameSelect 
scoreboard players reset currentTicks= minigameSelect 
scoreboard players reset choosing= minigameSelect

execute if score selected= minigameSelect matches 1 run scoreboard players operation final= minigameSelect = game1= minigameSelect
execute if score selected= minigameSelect matches 2 run scoreboard players operation final= minigameSelect = game2= minigameSelect
execute if score selected= minigameSelect matches 3 run scoreboard players operation final= minigameSelect = game3= minigameSelect


execute if score final= minigameSelect matches 1 run data modify storage board:minigame_select name set value "Dicey Descent"
execute if score final= minigameSelect matches 2 run data modify storage board:minigame_select name set value "Zombie Tag"
execute if score final= minigameSelect matches 3 run data modify storage board:minigame_select name set value "Barrel Daredevil"
execute if score final= minigameSelect matches 4 run data modify storage board:minigame_select name set value "Back Attack"
execute if score final= minigameSelect matches 5 run data modify storage board:minigame_select name set value "Lucky Launch"
execute if score final= minigameSelect matches 6 run data modify storage board:minigame_select name set value "Derby Dash"
execute if score final= minigameSelect matches 7 run data modify storage board:minigame_select name set value "Chop Chops"
execute if score final= minigameSelect matches 8 run data modify storage board:minigame_select name set value "Popgun Posse"
execute if score final= minigameSelect matches 9 run data modify storage board:minigame_select name set value "Flag Fracas"
execute if score final= minigameSelect matches 10 run data modify storage board:minigame_select name set value "Friendly Face-Off"
execute if score final= minigameSelect matches 11 run data modify storage board:minigame_select name set value "Goal Getters"
execute if score final= minigameSelect matches 12 run data modify storage board:minigame_select name set value "Risky Railway"
execute if score final= minigameSelect matches 13 run data modify storage board:minigame_select name set value "Hammer Heads"
execute if score final= minigameSelect matches 14 run data modify storage board:minigame_select name set value "Stop Watchers"
execute if score final= minigameSelect matches 15 run data modify storage board:minigame_select name set value "Face Flip"
execute if score final= minigameSelect matches 16 run data modify storage board:minigame_select name set value "Shutterpup"
execute if score final= minigameSelect matches 17 run data modify storage board:minigame_select name set value "Maze Daze"
execute if score final= minigameSelect matches 18 run data modify storage board:minigame_select name set value "Walk-Off"

tellraw @a[tag=playing,tag=!ingame] [{"storage":"board:minigame_select","nbt":"name","color":"light_purple","bold":true},{"text":" "},{"translate":"board.GameSelect.Selected"}]
tellraw @a[tag=ingame,team=blue] [{"storage":"board:minigame_select","nbt":"name","color":"#0088ff","bold":true},{"text":" "},{"translate":"board.GameSelect.Selected"}]
tellraw @a[tag=ingame,team=red] [{"storage":"board:minigame_select","nbt":"name","color":"red","bold":true},{"text":" "},{"translate":"board.GameSelect.Selected"}]
tellraw @a[tag=ingame,team=green] [{"storage":"board:minigame_select","nbt":"name","color":"green","bold":true},{"text":" "},{"translate":"board.GameSelect.Selected"}]
tellraw @a[tag=ingame,team=orange] [{"storage":"board:minigame_select","nbt":"name","color":"gold","bold":true},{"text":" "},{"translate":"board.GameSelect.Selected"}]

title @a[tag=playing] times 0 50 20

execute as @a[tag=playing] at @e[type=marker,tag=selectMarker] run playsound entity.player.levelup master @s ~ ~ ~ 10000 0.75

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={selectstick:1b}]

function board:select/trigger_minigame
schedule function board:select/end 79t
schedule function general:fade/main 68t

# Put any inactive players back in the game
tag @a[tag=inactive,tag=playing] add ingame
tag @a[tag=ingame] remove inactive

# Store in score for future select
scoreboard players operation chosenGame3= minigameSelect = chosenGame2= minigameSelect
scoreboard players operation chosenGame2= minigameSelect = chosenGame1= minigameSelect
scoreboard players operation chosenGame1= minigameSelect = final= minigameSelect