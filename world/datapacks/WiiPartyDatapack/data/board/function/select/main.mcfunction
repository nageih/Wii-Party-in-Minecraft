scoreboard players set other= minigameSelect 1
execute if score other= minigameSelect matches 3.. run scoreboard players set other= minigameSelect 1

execute if score other= minigameSelect matches 1 as @e[type=marker,tag=selectMarker] at @s run tp @s ~ ~ ~ ~1 ~
execute if score other= minigameSelect matches 1 as @e[type=marker,tag=selectMarker] at @s positioned ^ ^ ^100 run tp @e[type=magma_cube,tag=selectSpectate] ~ ~ ~ facing entity @s

execute if score other= minigameSelect matches 1 at @e[type=magma_cube,tag=selectSpectate,limit=1] as @a[tag=playing,tag=!selectChoose,distance=1..] at @s run spectate @e[type=magma_cube,tag=selectSpectate,limit=1] @s
execute if score other= minigameSelect matches 1 as @a[tag=selectChoose] at @s unless predicate games:riding run ride @s mount @e[type=magma_cube,tag=selectSpectate,limit=1]



execute if score timer= minigameSelect matches 0.. run function board:select/selecting
execute if score timer= minigameSelect matches 0.. run scoreboard players add timer= minigameSelect 1


execute if score choosing= minigameSelect matches 1 as @a[tag=selectChoose] at @s run function board:select/choosing
execute if score choosing= minigameSelect matches 1 unless entity @a[tag=selectChoose] run schedule function board:select/choose_left 3t append