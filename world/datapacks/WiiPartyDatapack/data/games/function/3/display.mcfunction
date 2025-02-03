#   Author        =   @ JevinLevin
#   Description   =   Handles the sidebar display while the barrels are dropping. Shows how far each players barrel has fallen
#   Called By     =   games:3/dropping


# Resets all the scores depending on the current time
    # Blue
execute as @a[tag=ingame,team=blue] if score @s 3time matches 1.. run scoreboard players reset §r§7§l||||||||||||||||
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 1..2 run scoreboard players reset §9§l|§7§l||||||||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 3..4 run scoreboard players reset §9§l||§7§l|||||||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 5..6 run scoreboard players reset §9§l|||§7§l||||||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 7..8 run scoreboard players reset §9§l||||§7§l|||||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 9..10 run scoreboard players reset §9§l|||||§7§l||||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 11..12 run scoreboard players reset §9§l||||||§7§l|||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 13..14 run scoreboard players reset §9§l|||||||§7§l||||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 15..16 run scoreboard players reset §9§l||||||||§7§l|||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 17..18 run scoreboard players reset §9§l|||||||||§7§l||||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 19..20 run scoreboard players reset §9§l||||||||||§7§l|||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 21..22 run scoreboard players reset §9§l|||||||||||§7§l||||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 23..24 run scoreboard players reset §9§l||||||||||||§7§l|||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 25..26 run scoreboard players reset §9§l|||||||||||||§7§l||| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 27..28 run scoreboard players reset §9§l||||||||||||||§7§l|| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 29..30 run scoreboard players reset §9§l|||||||||||||||§7§l| 3display
execute as @a[tag=ingame,team=blue] unless score @s 3time matches 31..32 run scoreboard players reset §9§l||||||||||||||||§7§l 3display
execute as @a[tag=ingame,tag=!failed,team=blue] if score @s 3time matches 1.. run scoreboard players reset §r§8§l|||||||||||||||| 3display

    # Red
execute as @a[tag=ingame,team=red] if score @s 3time matches 1.. run scoreboard players reset §r§r§7§l||||||||||||||||
execute as @a[tag=ingame,team=red] unless score @s 3time matches 1..2 run scoreboard players reset §c§l|§7§l||||||||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 3..4 run scoreboard players reset §c§l||§7§l|||||||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 5..6 run scoreboard players reset §c§l|||§7§l||||||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 7..8 run scoreboard players reset §c§l||||§7§l|||||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 9..10 run scoreboard players reset §c§l|||||§7§l||||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 11..12 run scoreboard players reset §c§l||||||§7§l|||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 13..14 run scoreboard players reset §c§l|||||||§7§l||||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 15..16 run scoreboard players reset §c§l||||||||§7§l|||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 17..18 run scoreboard players reset §c§l|||||||||§7§l||||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 19..20 run scoreboard players reset §c§l||||||||||§7§l|||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 21..22 run scoreboard players reset §c§l|||||||||||§7§l||||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 23..24 run scoreboard players reset §c§l||||||||||||§7§l|||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 25..26 run scoreboard players reset §c§l|||||||||||||§7§l||| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 27..28 run scoreboard players reset §c§l||||||||||||||§7§l|| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 29..30 run scoreboard players reset §c§l|||||||||||||||§7§l| 3display
execute as @a[tag=ingame,team=red] unless score @s 3time matches 31..32 run scoreboard players reset §c§l||||||||||||||||§7§l 3display
execute as @a[tag=ingame,tag=!failed,team=red] if score @s 3time matches 1.. run scoreboard players reset §r§r§8§l|||||||||||||||| 3display

    # Green
execute as @a[tag=ingame,team=green] if score @s 3time matches 1.. run scoreboard players reset §r§r§r§7§l||||||||||||||||
execute as @a[tag=ingame,team=green] unless score @s 3time matches 1..2 run scoreboard players reset §a§l|§7§l||||||||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 3..4 run scoreboard players reset §a§l||§7§l|||||||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 5..6 run scoreboard players reset §a§l|||§7§l||||||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 7..8 run scoreboard players reset §a§l||||§7§l|||||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 9..10 run scoreboard players reset §a§l|||||§7§l||||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 11..12 run scoreboard players reset §a§l||||||§7§l|||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 13..14 run scoreboard players reset §a§l|||||||§7§l||||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 15..16 run scoreboard players reset §a§l||||||||§7§l|||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 17..18 run scoreboard players reset §a§l|||||||||§7§l||||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 19..20 run scoreboard players reset §a§l||||||||||§7§l|||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 21..22 run scoreboard players reset §a§l|||||||||||§7§l||||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 23..24 run scoreboard players reset §a§l||||||||||||§7§l|||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 25..26 run scoreboard players reset §a§l|||||||||||||§7§l||| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 27..28 run scoreboard players reset §a§l||||||||||||||§7§l|| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 29..30 run scoreboard players reset §a§l|||||||||||||||§7§l| 3display
execute as @a[tag=ingame,team=green] unless score @s 3time matches 31..32 run scoreboard players reset §a§l||||||||||||||||§7§l 3display
execute as @a[tag=ingame,tag=!failed,team=green] if score @s 3time matches 1.. run scoreboard players reset §r§r§r§8§l|||||||||||||||| 3display

    # Orange
execute as @a[tag=ingame,team=orange] if score @s 3time matches 1.. run scoreboard players reset §r§r§r§r§7§l||||||||||||||||
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 1..2 run scoreboard players reset §6§l|§7§l||||||||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 3..4 run scoreboard players reset §6§l||§7§l|||||||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 5..6 run scoreboard players reset §6§l|||§7§l||||||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 7..8 run scoreboard players reset §6§l||||§7§l|||||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 9..10 run scoreboard players reset §6§l|||||§7§l||||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 11..12 run scoreboard players reset §6§l||||||§7§l|||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 13..14 run scoreboard players reset §6§l|||||||§7§l||||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 15..16 run scoreboard players reset §6§l||||||||§7§l|||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 17..18 run scoreboard players reset §6§l|||||||||§7§l||||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 19..20 run scoreboard players reset §6§l||||||||||§7§l|||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 21..22 run scoreboard players reset §6§l|||||||||||§7§l||||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 23..24 run scoreboard players reset §6§l||||||||||||§7§l|||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 25..26 run scoreboard players reset §6§l|||||||||||||§7§l||| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 27..28 run scoreboard players reset §6§l||||||||||||||§7§l|| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 29..30 run scoreboard players reset §6§l|||||||||||||||§7§l| 3display
execute as @a[tag=ingame,team=orange] unless score @s 3time matches 31..32 run scoreboard players reset §6§l||||||||||||||||§7§l 3display
execute as @a[tag=ingame,tag=!failed,team=orange] if score @s 3time matches 1.. run scoreboard players reset §r§r§r§r§8§l|||||||||||||||| 3display


# Displays the | symbol to represent how far the players barrel has fell
    # Blue team
execute as @a[tag=ingame,team=blue] if score @s 3time matches 1..2 run scoreboard players set §9§l|§7§l||||||||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 3..4 run scoreboard players set §9§l||§7§l|||||||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 5..6 run scoreboard players set §9§l|||§7§l||||||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 7..8 run scoreboard players set §9§l||||§7§l|||||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 9..10 run scoreboard players set §9§l|||||§7§l||||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 11..12 run scoreboard players set §9§l||||||§7§l|||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 13..14 run scoreboard players set §9§l|||||||§7§l||||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 15..16 run scoreboard players set §9§l||||||||§7§l|||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 17..18 run scoreboard players set §9§l|||||||||§7§l||||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 19..20 run scoreboard players set §9§l||||||||||§7§l|||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 21..22 run scoreboard players set §9§l|||||||||||§7§l||||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 23..24 run scoreboard players set §9§l||||||||||||§7§l|||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 25..26 run scoreboard players set §9§l|||||||||||||§7§l||| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 27..28 run scoreboard players set §9§l||||||||||||||§7§l|| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 29..30 run scoreboard players set §9§l|||||||||||||||§7§l| 3display 11
execute as @a[tag=ingame,team=blue] if score @s 3time matches 31..32 run scoreboard players set §9§l||||||||||||||||§7§l 3display 11
execute as @a[tag=ingame,tag=failed,team=blue] unless score @s 3time matches 1.. run scoreboard players set §r§8§l|||||||||||||||| 3display 11
    # Red team
execute as @a[tag=ingame,team=red] if score @s 3time matches 1..2 run scoreboard players set §c§l|§7§l||||||||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 3..4 run scoreboard players set §c§l||§7§l|||||||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 5..6 run scoreboard players set §c§l|||§7§l||||||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 7..8 run scoreboard players set §c§l||||§7§l|||||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 9..10 run scoreboard players set §c§l|||||§7§l||||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 11..12 run scoreboard players set §c§l||||||§7§l|||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 13..14 run scoreboard players set §c§l|||||||§7§l||||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 15..16 run scoreboard players set §c§l||||||||§7§l|||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 17..18 run scoreboard players set §c§l|||||||||§7§l||||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 19..20 run scoreboard players set §c§l||||||||||§7§l|||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 21..22 run scoreboard players set §c§l|||||||||||§7§l||||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 23..24 run scoreboard players set §c§l||||||||||||§7§l|||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 25..26 run scoreboard players set §c§l|||||||||||||§7§l||| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 27..28 run scoreboard players set §c§l||||||||||||||§7§l|| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 29..30 run scoreboard players set §c§l|||||||||||||||§7§l| 3display 8
execute as @a[tag=ingame,team=red] if score @s 3time matches 31..32 run scoreboard players set §c§l||||||||||||||||§7§l 3display 8
execute as @a[tag=ingame,tag=failed,team=red] unless score @s 3time matches 1.. run scoreboard players set §r§r§8§l|||||||||||||||| 3display 8
    # Green team
execute as @a[tag=ingame,team=green] if score @s 3time matches 1..2 run scoreboard players set §a§l|§7§l||||||||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 3..4 run scoreboard players set §a§l||§7§l|||||||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 5..6 run scoreboard players set §a§l|||§7§l||||||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 7..8 run scoreboard players set §a§l||||§7§l|||||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 9..10 run scoreboard players set §a§l|||||§7§l||||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 11..12 run scoreboard players set §a§l||||||§7§l|||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 13..14 run scoreboard players set §a§l|||||||§7§l||||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 15..16 run scoreboard players set §a§l||||||||§7§l|||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 17..18 run scoreboard players set §a§l|||||||||§7§l||||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 19..20 run scoreboard players set §a§l||||||||||§7§l|||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 21..22 run scoreboard players set §a§l|||||||||||§7§l||||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 23..24 run scoreboard players set §a§l||||||||||||§7§l|||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 25..26 run scoreboard players set §a§l|||||||||||||§7§l||| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 27..28 run scoreboard players set §a§l||||||||||||||§7§l|| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 29..30 run scoreboard players set §a§l|||||||||||||||§7§l| 3display 5
execute as @a[tag=ingame,team=green] if score @s 3time matches 31..32 run scoreboard players set §a§l||||||||||||||||§7§l 3display 5
execute as @a[tag=ingame,tag=failed,team=green] unless score @s 3time matches 1.. run scoreboard players set §r§r§r§8§l|||||||||||||||| 3display 5
    # Green team
execute as @a[tag=ingame,team=orange] if score @s 3time matches 1..2 run scoreboard players set §6§l|§7§l||||||||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 3..4 run scoreboard players set §6§l||§7§l|||||||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 5..6 run scoreboard players set §6§l|||§7§l||||||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 7..8 run scoreboard players set §6§l||||§7§l|||||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 9..10 run scoreboard players set §6§l|||||§7§l||||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 11..12 run scoreboard players set §6§l||||||§7§l|||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 13..14 run scoreboard players set §6§l|||||||§7§l||||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 15..16 run scoreboard players set §6§l||||||||§7§l|||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 17..18 run scoreboard players set §6§l|||||||||§7§l||||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 19..20 run scoreboard players set §6§l||||||||||§7§l|||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 21..22 run scoreboard players set §6§l|||||||||||§7§l||||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 23..24 run scoreboard players set §6§l||||||||||||§7§l|||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 25..26 run scoreboard players set §6§l|||||||||||||§7§l||| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 27..28 run scoreboard players set §6§l||||||||||||||§7§l|| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 29..30 run scoreboard players set §6§l|||||||||||||||§7§l| 3display 2
execute as @a[tag=ingame,team=orange] if score @s 3time matches 31..32 run scoreboard players set §6§l||||||||||||||||§7§l 3display 2
execute as @a[tag=ingame,tag=failed,team=orange] unless score @s 3time matches 1.. run scoreboard players set §r§r§r§r§8§l|||||||||||||||| 3display 2
