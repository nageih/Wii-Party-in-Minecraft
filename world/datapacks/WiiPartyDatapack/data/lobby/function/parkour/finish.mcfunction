scoreboard players set pFinish= lobby 1

tellraw @a[tag=lobbyParkour] {"translate":"lobby.Parkour.Finish","color":"gray","bold":true}
tellraw @a[tag=lobbyParkour] {"text":"","color":"gray","bold":true}
tellraw @a[tag=lobbyParkour] {"translate":"lobby.Parkour.Beward","color":"gray","bold":true}

particle minecraft:explosion -2785 67 -3003 2 2 2 1 25 force

clone -2748 60 -3063 -2740 70 -3070 -2789 61 -3007

execute as @a[tag=lobbyParkour] at @s run playsound entity.generic.explode master @s ~ ~ ~
execute as @a[tag=lobbyParkour] at @s run playsound entity.ender_dragon.death master @s ~ ~ ~ 0.5 1.25

schedule function lobby:parkour/reset 10s