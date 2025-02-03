
playsound block.note_block.didgeridoo master @a ~ ~ ~ 3 0.75

scoreboard players set @s newBoardPos 44

function general:fade/main

tag @s add jumpFail

function board:dice_roll/prevent/clear_back


scoreboard players set skullTimer= tiles 69
schedule function board:tiles/skull/start 12t append

schedule function board:tiles/jump/reset 12t