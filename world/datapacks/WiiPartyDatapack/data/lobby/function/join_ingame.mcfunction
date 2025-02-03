tag @s add ignore
tellraw @a[tag=!ignore] {"translate":"join.Ingame","color":"gray","with":[{"selector":"@s"}]}
tellraw @s {"translate":"join.Ingame","color":"gray","with":[{"selector":"@s","bold":true}]}
tag @s remove ignore