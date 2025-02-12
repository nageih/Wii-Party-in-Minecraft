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

schedule function board:spawn_spec 3t

title @a[tag=playing] times 10 40 10

title @a[tag=playing,tag=!ingame] title {"translate":"board.GameSelect.PlayForPosition","color":"light_purple","bold":true}
title @a[tag=ingame,team=blue] title {"translate":"board.GameSelect.PlayForPosition","color":"#0088ff","bold":true}
title @a[tag=ingame,team=red] title {"translate":"board.GameSelect.PlayForPosition","color":"red","bold":true}
title @a[tag=ingame,team=green] title {"translate":"board.GameSelect.PlayForPosition","color":"green","bold":true}
title @a[tag=ingame,team=orange] title {"translate":"board.GameSelect.PlayForPosition","color":"gold","bold":true}

title @a[tag=playing,tag=!ingame] subtitle {"translate":"board.GameSelect.Round","color":"light_purple","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=blue] subtitle {"translate":"board.GameSelect.Round","color":"#0088ff","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=red] subtitle {"translate":"board.GameSelect.Round","color":"red","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=green] subtitle {"translate":"board.GameSelect.Round","color":"green","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}
title @a[tag=ingame,team=orange] subtitle {"translate":"board.GameSelect.Round","color":"gold","bold":true,"with":[{"score":{"name": "round=","objective":"game"}}]}


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

execute if score round= game matches 1 run data merge entity @n[type=text_display,tag=graphKey,tag=blue] {text:'""'}
execute if score round= game matches 1 run data merge entity @n[type=text_display,tag=graphKey,tag=red] {text:'""'}
execute if score round= game matches 1 run data merge entity @n[type=text_display,tag=graphKey,tag=green] {text:'""'}
execute if score round= game matches 1 run data merge entity @n[type=text_display,tag=graphKey,tag=orange] {text:'""'}