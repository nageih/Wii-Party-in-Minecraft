scoreboard players reset @s endGame

tag @s add endVoted

scoreboard players set val= endGame 1
execute store result score max= endGame if entity @a[tag=ingame]

tellraw @a[tag=playing] {"translate":"lobby.EndGame.Start","color":"gray","with": [{"selector": "@s"},{"score":{"name": "val=","objective": "endGame"},"color":"red"},{"score":{"name": "max=","objective": "endGame"},"color":"green"}]}
tellraw @a[tag=ingame] {"translate":"lobby.EndGame.StartInfo","color":"gray","with":[{"text":"/trigger endGame","bold":true,"color":"light_purple"}]}
execute as @a[tag=playing] at @s run playsound block.note_block.pling master @s ~ ~ ~ 10

scoreboard players set timer= endGame 600