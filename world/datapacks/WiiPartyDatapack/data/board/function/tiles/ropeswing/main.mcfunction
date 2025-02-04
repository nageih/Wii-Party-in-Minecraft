#ropeswing
execute if score ropeswing= tiles matches 2 if score stage swing matches 9 run tp @e[type=armor_stand,tag=ropeposition] -286 23 26
execute if score ropeswing= tiles matches 2 if score stage swing matches 9 run function board:tiles/ropeswing/release
execute unless score ropeswing= tiles matches 3.. run function board:tiles/ropeswing/stages/controller
execute if entity @e[type=minecraft:armor_stand,tag=ropestand,nbt={OnGround:1b}] run schedule function board:tiles/ropeswing/end 3t append
#execute at @e[type=armor_stand,tag=ropestand] run tp @a[tag=turn] ~ ~ ~
execute unless score ropeswing= tiles matches 3.. run ride @a[tag=turn,limit=1] mount @e[type=armor_stand,tag=ropeposition,limit=1]
ride @a[tag=turn,limit=1] mount @e[type=armor_stand,tag=ropestand,limit=1]

# actionbar
execute if score ropeswing= tiles matches 1 run title @a[tag=turn,team=blue] actionbar {"translate":"board.Tiles.RopeSwing.Info","color":"#0088ff"}
execute if score ropeswing= tiles matches 1 run title @a[tag=turn,team=red] actionbar {"translate":"board.Tiles.RopeSwing.Info","color":"red"}
execute if score ropeswing= tiles matches 1 run title @a[tag=turn,team=green] actionbar {"translate":"board.Tiles.RopeSwing.Info","color":"green"}
execute if score ropeswing= tiles matches 1 run title @a[tag=turn,team=orange] actionbar {"translate":"board.Tiles.RopeSwing.Info","color":"gold"}