
execute if entity @a[tag=turn,team=blue] run tellraw @a[tag=playing] [{"translate":"tiles.Jump.Win","color":"gray","with":[{"selector":"@a[tag=turn]","color":"#0088FF"}]}]
execute if entity @a[tag=turn,team=red] run tellraw @a[tag=playing] [{"translate":"tiles.Jump.Win","color":"gray","with":[{"selector":"@a[tag=turn]","color":"red"}]}]
execute if entity @a[tag=turn,team=green] run tellraw @a[tag=playing] [{"translate":"tiles.Jump.Win","color":"gray","with":[{"selector":"@a[tag=turn]","color":"green"}]}]
execute if entity @a[tag=turn,team=orange] run tellraw @a[tag=playing] [{"translate":"tiles.Jump.Win","color":"gray","with":[{"selector":"@a[tag=turn]","color":"gold"}]}]

scoreboard players set @a[tag=turn] boardPos 44

function board:tiles/jump/reset