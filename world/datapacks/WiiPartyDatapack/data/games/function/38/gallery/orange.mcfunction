scoreboard players set correct= 38scores 0
scoreboard players set total= 38scores 0

title @a[tag=ingame] title ""

data modify storage minecraft:game38 temp set value []
execute store success score continue= 38scores run data modify storage minecraft:game38 temp set from storage minecraft:game38 orange
data remove storage minecraft:game38 temp
execute if score continue= 38scores matches 1 run function games:38/gallery/internal/orange
execute if score continue= 38scores matches 0 run function games:38/camera/enddisplay