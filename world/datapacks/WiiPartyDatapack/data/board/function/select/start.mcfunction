scoreboard objectives add minigameSelect dummy

scoreboard players set game1= minigameSelect 0 
scoreboard players set game2= minigameSelect 0 
scoreboard players set game3= minigameSelect 0 

function board:select/choose_minigames
function board:select/choose_minigames
function board:select/choose_minigames

scoreboard players reset random= minigameSelect
scoreboard players reset valid= minigameSelect

gamemode spectator @a[tag=playing]
tp @a[tag=playing] -218 68 56

summon marker -218 68 56 {Tags:["selectMarker"],"Rotation":[0f,0f]}
summon magma_cube -218 68 56 {Tags:["selectSpectate"],NoAI:1b, Size:6b, Invulnerable:1b, Silent:1b,wasOnGround:1b, NoGravity:1b, HasVisualFire:0b}



execute as @a[tag=playing] at @e[type=marker,tag=selectMarker] run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 100000 0.75

title @a[tag=playing] times 10 40 10

title @a[tag=playing,tag=!ingame] title {"translate":"select.PlayForPosition","color":"light_purple","bold":true}
title @a[tag=ingame,team=blue] title {"translate":"select.PlayForPosition","color":"#0088ff","bold":true}
title @a[tag=ingame,team=red] title {"translate":"select.PlayForPosition","color":"red","bold":true}
title @a[tag=ingame,team=green] title {"translate":"select.PlayForPosition","color":"green","bold":true}
title @a[tag=ingame,team=orange] title {"translate":"select.PlayForPosition","color":"gold","bold":true}

title @a[tag=playing,tag=!ingame] subtitle {"translate":"select.Round","color":"light_purple","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=blue] subtitle {"translate":"select.Round","color":"#0088ff","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=red] subtitle {"translate":"select.Round","color":"red","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=green] subtitle {"translate":"select.Round","color":"green","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=orange] subtitle {"translate":"select.Round","color":"gold","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}


# First 10 rounds randomly select
execute unless score round= game matches 11.. run schedule function board:select/start_select 70t
execute unless score round= game matches 11.. run schedule function board:select/display_minigames 60t
# Let player in last place choose
execute if score round= game matches 11.. run function board:select/last_player
execute if score round= game matches 11 run schedule function board:select/choose_intro 60
execute if score round= game matches 11 run schedule function board:select/display_minigames 120t
execute if score round= game matches 12.. run schedule function board:select/start_choose 59t
execute if score round= game matches 12.. run schedule function board:select/display_minigames 60t

scoreboard players reset timer= minigameSelect
scoreboard players reset final= minigameSelect
scoreboard players reset choosing= minigameSelect
scoreboard players reset cooldown= minigameSelect