# say play

advancement revoke @s only lobby:minigame_play_l
advancement revoke @s only lobby:minigame_play_r

execute if score countdownMain= lobby matches 1 run return fail

scoreboard players set temp= lobby 0

execute unless score countdownMinigame= lobby matches 1 run scoreboard players set temp= lobby 1

execute unless score countdownMinigame= lobby matches 1 unless score minigame= lobby matches 19 if function lobby:can_play run function lobby:select/countdown_start
execute unless score countdownMinigame= lobby matches 1 if score minigame= lobby matches 19 if function lobby:can_play_1v1 run function lobby:select/countdown_start


execute if score countdownMinigame= lobby matches 1 if score temp= lobby matches 0 run function lobby:select/countdown_cancel

scoreboard players reset temp= lobby