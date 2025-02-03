#   Author        =   @ JevinLevin
#   Description   =   Ends the dice rolling segment
#   Called By     =   

# Resets the scores
scoreboard players reset total= dice
scoreboard players set rolling= dice 0
scoreboard players set double= dice 0
scoreboard players set moving= dice 0
scoreboard players reset @a[tag=turn] diceRoll
scoreboard players reset double= dice
scoreboard players reset normal= dice
scoreboard players reset golden= dice
scoreboard players reset silver= dice
scoreboard players reset bronze= dice
scoreboard players reset negative= dice
scoreboard players reset dino= dice
scoreboard players reset doubleroll= dice
scoreboard players reset @a diceRoll
scoreboard players reset @s diceTimer
scoreboard players reset timermax= dice
scoreboard players reset speedReset= sprintDistance
scoreboard players reset speedTime= sprintDistance
scoreboard players set double= dice 0
scoreboard players reset @a sprintDistance

execute as @a[tag=ingame] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[tag=ingame] run attribute @s generic.gravity base set 0.08

title @a[tag=turn] actionbar ""

execute as @a[tag=resetpos] run function board:dice_roll/tp_board_pos
execute as @a[tag=resetpos] run gamemode adventure
tag @a[tag=resetpos] remove resetpos

# Removes tags
tag @a[tag=turn] remove turn
tag @a remove startFinal
tag @a remove hadTurn
function general:reset_tags

# Runs both functions that remove the barriers that limit the players movement to prepare for the next round
function board:dice_roll/prevent/clear_too_far
function board:dice_roll/prevent/clear_back

# Kills entities
kill @e[type=minecraft:area_effect_cloud,tag=tileName]
kill @e[type=minecraft:area_effect_cloud,tag=tileCloud] 

### Used for demo
### tag @a remove playing

function board:dice_roll/remove
kill @e[type=minecraft:falling_block,tag=tileGlow]
kill @e[type=minecraft:area_effect_cloud,tag=tileGlow]

function general:island/barrierstostruct

# Clears everyones skip coas
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={skip:1b}]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={dice:1b,normal:1b}]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={dice:1b,golden:1b}]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={dice:1b,silver:1b}]
clear @a minecraft:carrot_on_a_stick[minecraft:custom_data={dice:1b,bronze:1b}]


# Kill all die
execute as @e[type=minecraft:chicken,tag=dicex] run function board:dice_roll/despawn

function board:tiles/end

function general:scoreboard_suffix
scoreboard objectives setdisplay sidebar

# Store positions for graph
execute unless score testing options matches 1 run function graphing:store_pos


execute unless score testing options matches 1.. run function board:select/start