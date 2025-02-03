title @a[tag=playing] times 10 1000000 10

scoreboard players set selected= minigameSelect -1

scoreboard players set choosing= minigameSelect 1

scoreboard players set cooldown= minigameSelect 0

tellraw @a[tag=playing,tag=!selectChoose] [{"color":"gray","translate":"select.Choose.Player","with":[{"selector":"@a[tag=selectChoose]"}]}]

tellraw @a[tag=selectChoose] [{"color":"gray","translate":"select.Choose.Player","with":[{"selector":"@a[tag=selectChoose]"}],"bold":true}]
tellraw @a[tag=selectChoose] [{"color":"gray","translate":"select.Choose.Info"}]

execute as @a[tag=playing] at @s run playsound block.note_block.hat master @s ~ ~ ~ 10000 0.75