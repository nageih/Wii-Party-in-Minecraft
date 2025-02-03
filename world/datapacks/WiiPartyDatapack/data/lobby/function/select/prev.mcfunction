#say prev

advancement revoke @s only lobby:minigame_prev_l
advancement revoke @s only lobby:minigame_prev_r

execute if score countdownMinigame= lobby matches 1.. run return fail

execute if score minigameSelectTimer= lobby matches 1.. run return fail
scoreboard players operation minigameSelectTimer= lobby = minigameSelectDelay= lobby

scoreboard players remove minigame= lobby 1
execute if score minigame= lobby < minigameMin= lobby run scoreboard players operation minigame= lobby = minigameMax= lobby

function lobby:minis/set

playsound block.note_block.bit master @s ~ ~ ~ 1 0.75