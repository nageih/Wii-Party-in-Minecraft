scoreboard players set countdownMinigame= lobby 0
scoreboard players set countdownTimer= lobby 0

execute as @a at @s run playsound block.respawn_anchor.deplete master @s ~ ~ ~ 1 1

title @a times 10 20 10
title @a title {"translate":"lobby.Cancelled","color":"red"}
title @a subtitle ""