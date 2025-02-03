title @a[tag=playing] title " "
title @a[tag=playing,tag=!ingame] subtitle {"translate":"game.FlagFracas.Intro.1","color":"light_purple","bold":true}
title @a[team=blue] subtitle {"translate":"game.FlagFracas.Intro.1","color":"#0088FF","bold":true}
title @a[team=red] subtitle {"translate":"game.FlagFracas.Intro.1","color":"red","bold":true}
title @a[team=green] subtitle {"translate":"game.FlagFracas.Intro.1","color":"green","bold":true}
title @a[team=orange] subtitle {"translate":"game.FlagFracas.Intro.1","color":"gold","bold":true}
execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.5
schedule function games:13/title2 2s
scoreboard players set ingame 13scores 2
tp @a[team=blue] 13970.0 13 13981 180 0
tp @a[team=red] 13971.0 13 13981 180 0
tp @a[team=green] 13972.0 13 13981 180 0
tp @a[team=orange] 13973.0 13 13981 180 0

data merge entity @e[type=text_display,tag=13info,limit=1] {text:'{"color":"light_purple","translate":"game.FlagFracas.TurnDirection"}'}