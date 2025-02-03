title @a[tag=playing] title " "
title @a[tag=playing,tag=!ingame] subtitle {"translate":"game.FlagFracas.Intro.2","color":"light_purple","bold":true}
title @a[team=blue] subtitle {"translate":"game.FlagFracas.Intro.2","color":"#0088FF","bold":true}
title @a[team=red] subtitle {"translate":"game.FlagFracas.Intro.2","color":"red","bold":true}
title @a[team=green] subtitle {"translate":"game.FlagFracas.Intro.2","color":"green","bold":true}
title @a[team=orange] subtitle {"translate":"game.FlagFracas.Intro.2","color":"gold","bold":true}
execute as @a[tag=ingame] at @s run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 1 0.7
schedule function games:13/starttimer 1s

