#   Author        =   @ JevinLevin
#   Description   =   Sets the sidebar for the start of the game
#   Called By     =   games:3/start


# Resets the scoreboard and all the scores
scoreboard players reset * 3display

# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
execute as @a[tag=ingame,team=blue] run scoreboard players set §l 3display 12
team join t.Red §l§l
execute as @a[tag=ingame,team=red] run scoreboard players set §l§l 3display 9
team join t.Green §l§l§l
execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l 3display 6
team join t.Orange §l§l§l§l
execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l 3display 3

# Adds the blank lines in the scoreboard depending on if teams are present
scoreboard players set §r 3display 13
execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r 3display 10
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r 3display 7
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r 3display 4
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r 3display 1

execute as @a[tag=ingame,team=blue] run scoreboard players set §r§7§l|||||||||||||||| 3display 11
execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§7§l|||||||||||||||| 3display 8
execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§7§l|||||||||||||||| 3display 5
execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§7§l|||||||||||||||| 3display 2


team join 4.displaySpace §r§7§l||||||||||||||||
team join 4.displaySpace §r§r§7§l||||||||||||||||
team join 4.displaySpace §r§r§r§7§l||||||||||||||||
team join 4.displaySpace §r§r§r§r§7§l||||||||||||||||

    # Blue
team join 4.displaySpace §r§7§l||||||||||||||||
team join 4.displaySpace §9§l|§7§l|||||||||||||||
team join 4.displaySpace §9§l||§7§l||||||||||||||
team join 4.displaySpace §9§l|||§7§l|||||||||||||
team join 4.displaySpace §9§l||||§7§l||||||||||||
team join 4.displaySpace §9§l|||||§7§l|||||||||||
team join 4.displaySpace §9§l||||||§7§l||||||||||
team join 4.displaySpace §9§l|||||||§7§l|||||||||
team join 4.displaySpace §9§l||||||||§7§l||||||||
team join 4.displaySpace §9§l|||||||||§7§l|||||||
team join 4.displaySpace §9§l||||||||||§7§l||||||
team join 4.displaySpace §9§l|||||||||||§7§l|||||
team join 4.displaySpace §9§l||||||||||||§7§l||||
team join 4.displaySpace §9§l|||||||||||||§7§l|||
team join 4.displaySpace §9§l||||||||||||||§7§l||
team join 4.displaySpace §9§l|||||||||||||||§7§l|
team join 4.displaySpace §9§l||||||||||||||||§7§l
team join 4.displaySpace §r§8§l||||||||||||||||

    # Red
team join 4.displaySpace §r§r§7§l||||||||||||||||
team join 4.displaySpace §c§l|§7§l|||||||||||||||
team join 4.displaySpace §c§l||§7§l||||||||||||||
team join 4.displaySpace §c§l|||§7§l|||||||||||||
team join 4.displaySpace §c§l||||§7§l||||||||||||
team join 4.displaySpace §c§l|||||§7§l|||||||||||
team join 4.displaySpace §c§l||||||§7§l||||||||||
team join 4.displaySpace §c§l|||||||§7§l|||||||||
team join 4.displaySpace §c§l||||||||§7§l||||||||
team join 4.displaySpace §c§l|||||||||§7§l|||||||
team join 4.displaySpace §c§l||||||||||§7§l||||||
team join 4.displaySpace §c§l|||||||||||§7§l|||||
team join 4.displaySpace §c§l||||||||||||§7§l||||
team join 4.displaySpace §c§l|||||||||||||§7§l|||
team join 4.displaySpace §c§l||||||||||||||§7§l||
team join 4.displaySpace §c§l|||||||||||||||§7§l|
team join 4.displaySpace §c§l||||||||||||||||§7§l
team join 4.displaySpace §r§r§8§l||||||||||||||||
    # Green
team join 4.displaySpace §r§r§r§7§l||||||||||||||||
team join 4.displaySpace §a§l|§7§l|||||||||||||||
team join 4.displaySpace §a§l||§7§l||||||||||||||
team join 4.displaySpace §a§l|||§7§l|||||||||||||
team join 4.displaySpace §a§l||||§7§l||||||||||||
team join 4.displaySpace §a§l|||||§7§l|||||||||||
team join 4.displaySpace §a§l||||||§7§l||||||||||
team join 4.displaySpace §a§l|||||||§7§l|||||||||
team join 4.displaySpace §a§l||||||||§7§l||||||||
team join 4.displaySpace §a§l|||||||||§7§l|||||||
team join 4.displaySpace §a§l||||||||||§7§l||||||
team join 4.displaySpace §a§l|||||||||||§7§l|||||
team join 4.displaySpace §a§l||||||||||||§7§l||||
team join 4.displaySpace §a§l|||||||||||||§7§l|||
team join 4.displaySpace §a§l||||||||||||||§7§l||
team join 4.displaySpace §a§l|||||||||||||||§7§l|
team join 4.displaySpace §a§l||||||||||||||||§7§l
team join 4.displaySpace §r§r§r§8§l||||||||||||||||

    # Orange
team join 4.displaySpace §r§r§r§r§7§l||||||||||||||||
team join 4.displaySpace §6§l|§7§l|||||||||||||||
team join 4.displaySpace §6§l||§7§l||||||||||||||
team join 4.displaySpace §6§l|||§7§l|||||||||||||
team join 4.displaySpace §6§l||||§7§l||||||||||||
team join 4.displaySpace §6§l|||||§7§l|||||||||||
team join 4.displaySpace §6§l||||||§7§l||||||||||
team join 4.displaySpace §6§l|||||||§7§l|||||||||
team join 4.displaySpace §6§l||||||||§7§l||||||||
team join 4.displaySpace §6§l|||||||||§7§l|||||||
team join 4.displaySpace §6§l||||||||||§7§l||||||
team join 4.displaySpace §6§l|||||||||||§7§l|||||
team join 4.displaySpace §6§l||||||||||||§7§l||||
team join 4.displaySpace §6§l|||||||||||||§7§l|||
team join 4.displaySpace §6§l||||||||||||||§7§l||
team join 4.displaySpace §6§l|||||||||||||||§7§l|
team join 4.displaySpace §6§l||||||||||||||||§7§l
team join 4.displaySpace §r§r§r§r§8§l||||||||||||||||