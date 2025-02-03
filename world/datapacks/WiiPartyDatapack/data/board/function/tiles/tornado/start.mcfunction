#   Author        =   @ JevinLevin
#   Description   =   Starts the tornado segment
#   Called By     =   board:dice_roll/tiles

function board:tiles/generic_start

tag @a[scores={newBoardPos=100..}] add volcano

scoreboard players set tornadoTotal= tiles 0

# Checks how many players there are, if there are 3+ then the player needs to roll to choose who goes back, and how far
    # Stores the number of players in the player= score
    execute store result score players= tiles if entity @a[tag=ingame,tag=!volcano,scores={boardPos=1..}]
    # If there are 3 or more players then it schedules the intro function in 1.5 seconds
    execute if score players= tiles matches 3.. run schedule function board:tiles/tornado/intro 1.5s
    # If there are less than 3 players then it schedules the less_than_3 function (what a shit name) in 1.5 seconds
    execute if score players= tiles matches 2 run schedule function board:tiles/tornado/less_than_3 1.5s
    # If there are no available players then it schedules the no_players function in 1.5 seconds
    execute unless score players= tiles matches 2.. run schedule function board:tiles/tornado/no_players 1.5s


function board:dice_roll/board_display
