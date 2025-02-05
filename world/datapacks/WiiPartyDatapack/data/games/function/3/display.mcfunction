#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar display while the barrels are dropping. Shows how far each players barrel has fallen
#   Called By     =   games:3/dropping


# Resets the scoreboard and all the scores
scoreboard players reset * 3display

function general:scoreboard_init

# Displays the | symbol to represent how far the players barrel has fell
    # Blue team
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 1.. run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"},{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 1..2 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 3..4 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 5..6 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 7..8 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 9..10 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 11..12 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 13..14 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 15..16 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 17..18 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 19..20 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 21..22 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 23..24 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 25..26 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 27..28 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 29..30 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,team=blue] if score @s 3time matches 31..32 run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"#0088ff"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=blue] unless score @s 3time matches 1.. run team modify displayline11 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"dark_gray"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
    # Red team
execute as @a[tag=ingame,team=red] unless score @s 3time matches 1.. run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 1..2 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 3..4 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 5..6 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 7..8 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 9..10 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 11..12 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 13..14 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 15..16 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 17..18 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 19..20 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 21..22 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 23..24 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 25..26 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 27..28 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 29..30 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,team=red] if score @s 3time matches 31..32 run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"red"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=red] unless score @s 3time matches 1.. run team modify displayline8 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"dark_gray"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
    # Green team
execute as @a[tag=ingame,team=green] unless score @s 3time matches 1.. run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 1..2 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 3..4 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 5..6 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 7..8 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 9..10 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 11..12 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 13..14 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 15..16 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 17..18 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 19..20 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 21..22 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 23..24 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 25..26 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 27..28 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 29..30 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,team=green] if score @s 3time matches 31..32 run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"green"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=green] unless score @s 3time matches 1.. run team modify displayline5 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"dark_gray"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
    # Green team
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 1.. run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 1..2 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 3..4 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 5..6 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 7..8 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 9..10 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 11..12 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 13..14 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 15..16 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.8","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 17..18 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.9","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.7","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 19..20 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.10","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.6","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 21..22 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.11","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.5","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 23..24 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.12","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.4","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 25..26 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.13","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.3","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 27..28 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.14","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.2","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 29..30 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.15","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.1","color":"gray"}]}
execute as @a[tag=ingame,team=orange] if score @s 3time matches 31..32 run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"gold"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
execute as @a[tag=ingame,tag=failed,team=orange] unless score @s 3time matches 1.. run team modify displayline2 prefix {"translate":"scoreboard.BarrelDaredevil","bold":true,"with":[{"translate":"scoreboard.BarrelDaredevil.Symbols.16","color":"dark_gray"},{"translate":"scoreboard.BarrelDaredevil.Symbols.0","color":"gray"}]}
