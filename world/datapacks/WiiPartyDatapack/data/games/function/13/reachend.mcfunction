tag @s add 1st
tag @s add finished
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2
execute if entity @s[team=blue] at @s run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;35071],fade_colors:[I;10601471],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=red] at @s run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16727357],fade_colors:[I;16750230],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=green] at @s run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;5439331],fade_colors:[I;9568164],has_trail:1b,has_twinkle:1b}]}},count:1}}
execute if entity @s[team=orange] at @s run summon minecraft:firework_rocket ~ ~3 ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;16760412],fade_colors:[I;16769195],has_trail:1b,has_twinkle:1b}]}},count:1}}
scoreboard players set ending 13scores 1

scoreboard players set ingame 13scores 5


execute at @e[type=marker,tag=flag,limit=1] as @a[tag=ingame,tag=!finished,tag=!dead,sort=nearest] run function games:13/otherend



# Clears the subtitle incase one is already being displayed
title @a[tag=playing] subtitle " "

# Displays FINISH! for all players, the colour dependant on their team
title @a[tag=ingame,team=blue] title {"nbt":"colors.blue","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=red] title {"nbt":"colors.red","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=green] title {"nbt":"colors.green","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=ingame,team=orange] title {"nbt":"colors.orange","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}
title @a[tag=playing,tag=!ingame] title {"nbt":"colors.spectator","storage":"minecraft:config","interpret":true,"extra":[{"translate":"generic.Finish","bold":true}],"source":"storage","type":"nbt"}


# Ping sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[tag=playing] at @s run playsound ouo:finish master @s ~ ~ ~ 1 1

# Schedules the end function for 5 seconds, this function will reset the minigame and take playes back to the island
schedule function games:13/end 5s

# Schedules the fade to black function to happen just before the end to give the true effect
schedule function general:fade/main 88t

# Sets the ingame function to 0 to signify that the game has ended
scoreboard players set ingame 13scores 0

# Gives all the players weakness forever to disable PvP
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Runs the function that shows where the players placed
function general:placements

function games:13/display




execute as @a[tag=ingame] at @s align y run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["13end"]}

schedule clear games:13/title1
schedule clear games:13/title2
schedule clear games:13/starttimer

# Gives all players slowness and jump boost which (pretty much) stops them from moving
effect give @a[tag=ingame,tag=!dead] minecraft:slowness infinite 255 true
execute as @a[tag=ingame,tag=!dead] run attribute @s minecraft:generic.jump_strength base set 0

stopsound @a[tag=playing] voice
