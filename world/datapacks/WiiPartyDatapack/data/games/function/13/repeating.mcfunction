#detects if players move or look at the flag at the start
execute if score ingame 13scores matches 2..3 as @a[tag=ingame,tag=!dead,scores={13move1=1..}] at @s run function games:13/disqual
execute if score ingame 13scores matches 2..3 as @a[tag=ingame,tag=!dead,scores={13move2=1..}] at @s run function games:13/disqual
execute if score ingame 13scores matches 2..3 as @a[tag=ingame,tag=!dead,scores={13move3=1..}] at @s run function games:13/disqual
execute if score ingame 13scores matches 2..3 as @a[tag=ingame,tag=!dead] at @s anchored eyes facing 13971 14 14007 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.7] run function games:13/disqual
#warns players if they move or look the wrong way before the start
execute if score ingame 13scores matches 1 as @a[tag=ingame,tag=!warnedm,scores={13move1=1..}] at @s run function games:13/warningm
execute if score ingame 13scores matches 1 as @a[tag=ingame,tag=!warnedm,scores={13move2=1..}] at @s run function games:13/warningm
execute if score ingame 13scores matches 1 as @a[tag=ingame,tag=!warnedm,scores={13move3=1..}] at @s run function games:13/warningm
execute if score ingame 13scores matches 1 as @a[tag=ingame,tag=!warnedl] at @s anchored eyes facing 13971 14 14007 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.7] run function games:13/warningl
execute if score ingame 13scores matches 1 as @a[tag=ingame,tag=warnedl] at @s anchored eyes facing 13971 14 14007 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.7] run tag @s remove warnedl

scoreboard players reset @a 13move1
scoreboard players reset @a 13move2
scoreboard players reset @a 13move3

# #ends the game in the intro if everyone is disqualified
# execute store result score dead 13scores if entity @a[tag=ingame,tag=dead]
# execute store result score players 13scores if entity @a[tag=ingame]
# execute if score ingame 13scores matches 1..3 if score players 13scores matches 4 if score dead 13scores matches 3 as @a[tag=ingame,tag=!dead] run say okay
# execute if score ingame 13scores matches 1..3 if score players 13scores matches 2 if score dead 13scores matches 1 as @a[tag=ingame,tag=!dead] run function games:13/reachend
# execute if score ingame 13scores matches 1..3 if score players 13scores matches 3 if score dead 13scores matches 2 as @a[tag=ingame,tag=!dead] run function games:13/reachend
# execute if score ingame 13scores matches 1..3 if score players 13scores matches 4 if score dead 13scores matches 3 as @a[tag=ingame,tag=!dead] run function games:13/reachend

#random start
execute if score ingame 13scores matches 3 run scoreboard players add start2 13scores 1
execute if score ingame 13scores matches 3 if score start 13scores = start2 13scores run function games:13/begin

#starting teleporting
execute if score ingame 13scores matches 1 run tp @a[team=blue,tag=warnedm] 13970.0 13 13981
execute if score ingame 13scores matches 1 run tp @a[team=red,tag=warnedm] 13971.0 13 13981
execute if score ingame 13scores matches 1 run tp @a[team=green,tag=warnedm] 13972.0 13 13981
execute if score ingame 13scores matches 1 run tp @a[team=orange,tag=warnedm] 13973.0 13 13981
tag @a remove warnedm

#if a player reaches the flag
execute if score ingame 13scores matches 1..4 at @e[type=minecraft:marker,tag=flag] positioned ~-3 ~ ~-0.5 unless entity @a[tag=ingame,tag=1st] as @a[tag=ingame,tag=!dead,dx=5,dy=3,dz=0,limit=1,sort=nearest] run function games:13/reachend

#stops people jumping at the end
#execute if score ending 13scores matches 1 as @a[tag=ingame] at @s at @e[type=minecraft:area_effect_cloud,tag=13end,sort=nearest,limit=1] if entity @s[distance=0.5..] run tp @s ~ ~ ~