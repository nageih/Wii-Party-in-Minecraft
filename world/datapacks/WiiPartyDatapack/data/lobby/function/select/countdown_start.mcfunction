scoreboard players set countdownMinigame= lobby 1
scoreboard players set countdownTimer= lobby 0

title @a times 20 100 20

title @a title {"translate":"lobby.MinigameStarting","color":"green"}
title @a subtitle ""

execute as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 1 1.25