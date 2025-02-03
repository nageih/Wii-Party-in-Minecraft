#   Author        =   @ T4Bl3rUs
#   Description   =   Runs the other functions
#   Called By     =   board:dice_roll/main + games/*

execute if score enabled= specOptions matches 1 as @a[gamemode=spectator,tag=playing,tag=!turn] at @s positioned ~1 ~ ~ align x align z positioned ~-.5 ~ ~.5 run function general:spectator/spec
execute as @a[gamemode=!spectator,tag=playing,scores={specCheck=1..}] at @s positioned ~1 ~ ~ align x align z positioned ~-.5 ~ ~.5 run function general:spectator/kill
execute unless entity @a[scores={specCheck=1..}] run scoreboard players reset * specCheck