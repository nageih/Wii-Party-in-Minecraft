execute as @a[tag=turn] run function board:dice_roll/give/normal

execute as @a[tag=turn,tag=startFinal,tag=1st] run function board:dice_roll/give/golden
execute as @a[tag=turn,tag=startFinal,tag=2nd] run function board:dice_roll/give/silver
execute as @a[tag=turn,tag=startFinal,tag=3rd] run function board:dice_roll/give/bronze