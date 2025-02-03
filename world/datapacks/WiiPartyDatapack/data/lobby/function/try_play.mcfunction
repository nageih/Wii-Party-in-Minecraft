function lobby:main/tp

scoreboard players set temp= lobby 0

execute if score countdownMinigame= lobby matches 1 run return fail

execute unless score countdownMain= lobby matches 1 run scoreboard players set temp= lobby 1
execute unless score countdownMain= lobby matches 1 if function lobby:can_play run function lobby:main/countdown_start


execute if score countdownMain= lobby matches 1 if score temp= lobby matches 0 run function lobby:main/countdown_cancel

scoreboard players reset temp= lobby
