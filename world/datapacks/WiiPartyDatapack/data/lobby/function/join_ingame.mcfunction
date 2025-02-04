tag @s add ignore
tellraw @a[tag=!ignore] {"translate":"lobby.Join.Ingame","color":"gray","with":[{"selector":"@s"}]}
tellraw @s {"translate":"lobby.Join.Ingame","color":"gray","with":[{"selector":"@s","bold":true}]}
tag @s remove ignore