#say next

advancement revoke @s only lobby:minigame_next_l
advancement revoke @s only lobby:minigame_next_r

execute if score countdownMinigame= lobby matches 1.. run return fail

execute if score minigameSelectTimer= lobby matches 1.. run return fail
scoreboard players operation minigameSelectTimer= lobby = minigameSelectDelay= lobby

scoreboard players add minigame= lobby 1
execute if score minigame= lobby > minigameMax= lobby run scoreboard players operation minigame= lobby = minigameMin= lobby

function lobby:minis/set

playsound block.note_block.bit master @s ~ ~ ~ 1 1.25