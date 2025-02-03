playsound minecraft:entity.hoglin.converted_to_zombified master @a ~ ~ ~ 3
playsound minecraft:entity.strider.eat master @a ~ ~ ~ 3
playsound minecraft:entity.strider.eat master @a ~ ~ ~ 3
playsound minecraft:entity.strider.eat master @a ~ ~ ~ 3

tag @s add cum
##tellraw @a[tag=!cum,tag=playing,team=!blue,team=!red,team=!green,team=!orange] {"translate":"board.Tiles.Dino.Eaten","color":"light_purple","bold":true,"with":[{"selector":"@s"}]}
##tellraw @a[tag=!cum,team=blue] {"translate":"board.Tiles.Dino.Eaten","color":"#0088ff","bold":true,"with":[{"selector":"@s"}]}
##tellraw @a[tag=!cum,team=red] {"translate":"board.Tiles.Dino.Eaten","color":"red","bold":true,"with":[{"selector":"@s"}]}
##tellraw @a[tag=!cum,team=green] {"translate":"board.Tiles.Dino.Eaten","color":"green","bold":true,"with":[{"selector":"@s"}]}
##tellraw @a[tag=!cum,team=orange] {"translate":"board.Tiles.Dino.Eaten","color":"gold","bold":true,"with":[{"selector":"@s"}]}
### @s in bold
##tellraw @s[team=blue] {"translate":"board.Tiles.Dino.Eaten","color":"#0088ff","bold":true,"with":[{"selector":"@s","bold":true}]}
##tellraw @s[team=red] {"translate":"board.Tiles.Dino.Eaten","color":"red","bold":true,"with":[{"selector":"@s","bold":true}]}
##tellraw @s[team=green] {"translate":"board.Tiles.Dino.Eaten","color":"green","bold":true,"with":[{"selector":"@s","bold":true}]}
##tellraw @s[team=orange] {"translate":"board.Tiles.Dino.Eaten","color":"gold","bold":true,"with":[{"selector":"@s","bold":true}]}
tellraw @a[tag=!cum,tag=playing,team=!blue,team=!red,team=!green,team=!orange] {"translate":"board.Tiles.Dino.Eaten","color":"gray","bold":false,"with":[{"selector":"@s"}]}
tellraw @a[tag=ingame,tag=!cum] {"translate":"board.Tiles.Dino.Eaten","color":"gray","bold":false,"with":[{"selector":"@s"}]}
tellraw @s {"translate":"board.Tiles.Dino.Eaten","color":"gray","bold":false,"with":[{"selector":"@s","bold":true}]}
tag @s remove cum

gamemode spectator @s

execute at @s run particle minecraft:damage_indicator ~ ~1 ~ 1 1 1 0.5 50 force