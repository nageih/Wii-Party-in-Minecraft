scoreboard players reset @s endGame

tag @s add endVoted

scoreboard players add val= endGame 1

execute as @a[tag=playing] at @s run playsound block.note_block.pling master @s ~ ~ ~ 10

execute unless score val= endGame = max= endGame run tellraw @a[tag=playing] {"translate":"lobby.EndGame.Vote","color":"gray","with": [{"selector": "@s"},{"score":{"name": "val=","objective": "endGame"},"color":"red"},{"score":{"name": "max=","objective": "endGame"},"color":"green"}]}
execute if score val= endGame = max= endGame run tellraw @a[tag=playing] {"translate":"lobby.EndGame.Vote","color":"gray","with": [{"selector": "@s"},{"score":{"name": "val=","objective": "endGame"},"color":"green"},{"score":{"name": "max=","objective": "endGame"},"color":"green"}]}
execute if score val= endGame = max= endGame run tellraw @a[tag=playing] {"translate":"lobby.EndGame.VoteEnd","color":"red"}

execute if score val= endGame = max= endGame run function general:game/end

execute if score val= endGame = max= endGame run schedule function lobby:end/noise 3t