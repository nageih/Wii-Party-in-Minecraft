tellraw @a[tag=lobbyParkour] {"translate":"lobby.Parkour.Open","color":"gray","bold":true}
execute as @a[tag=lobbyParkour] at @s run playsound entity.wither.spawn master @s -2856 57 -3010 1000


fill -2845 58 -3012 -2845 58 -3008 air
fill -2845 62 -3012 -2845 62 -3008 air

tp @a[tag=lobbyParkour] -2856 57 -3010 -90 0