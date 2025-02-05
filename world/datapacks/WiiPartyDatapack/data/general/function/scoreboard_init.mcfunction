# If there is an entity on the team, it will add the teams name to the scoreboard
team join t.Blue §l
$execute as @a[tag=ingame,team=blue] run scoreboard players set §l $(num)display 12
team join t.Red §l§l
$execute as @a[tag=ingame,team=red] run scoreboard players set §l§l $(num)display 9
team join t.Green §l§l§l
$execute as @a[tag=ingame,team=green] run scoreboard players set §l§l§l $(num)display 6
team join t.Orange §l§l§l§l
$execute as @a[tag=ingame,team=orange] run scoreboard players set §l§l§l§l $(num)display 3

# Adds the blank lines in the scoreboard depending on if teams are present
$scoreboard players set §r $(num)display 13
$execute as @a[tag=ingame,team=blue] run scoreboard players set §r§r $(num)display 10
$execute as @a[tag=ingame,team=red] run scoreboard players set §r§r§r $(num)display 7
$execute as @a[tag=ingame,team=green] run scoreboard players set §r§r§r§r $(num)display 4
$execute as @a[tag=ingame,team=orange] run scoreboard players set §r§r§r§r§r $(num)display 1

$execute as @a[tag=ingame,team=blue] run scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 $(num)display 11
$execute as @a[tag=ingame,team=red] run scoreboard players set §0§0§0§0§0§0§0§0 $(num)display 8
$execute as @a[tag=ingame,team=green] run scoreboard players set §0§0§0§0§0 $(num)display 5
$execute as @a[tag=ingame,team=orange] run scoreboard players set §0§0 $(num)display 2

team join displayline1 §0
team join displayline2 §0§0
team join displayline3 §0§0§0

team join displayline4 §0§0§0§0
team join displayline5 §0§0§0§0§0
team join displayline6 §0§0§0§0§0§0

team join displayline7 §0§0§0§0§0§0§0
team join displayline8 §0§0§0§0§0§0§0§0
team join displayline9 §0§0§0§0§0§0§0§0§0

team join displayline10 §0§0§0§0§0§0§0§0§0§0
team join displayline11 §0§0§0§0§0§0§0§0§0§0§0
team join displayline12 §0§0§0§0§0§0§0§0§0§0§0§0

$scoreboard players set §0 $(num)display 1
$scoreboard players set §0§0 $(num)display 2
$scoreboard players set §0§0§0 $(num)display 3

$scoreboard players set §0§0§0§0 $(num)display 4
$scoreboard players set §0§0§0§0§0 $(num)display 5
$scoreboard players set §0§0§0§0§0§0 $(num)display 6

$scoreboard players set §0§0§0§0§0§0§0 $(num)display 7
$scoreboard players set §0§0§0§0§0§0§0§0 $(num)display 8
$scoreboard players set §0§0§0§0§0§0§0§0§0 $(num)display 9

$scoreboard players set §0§0§0§0§0§0§0§0§0§0 $(num)display 10
$scoreboard players set §0§0§0§0§0§0§0§0§0§0§0 $(num)display 11
$scoreboard players set §0§0§0§0§0§0§0§0§0§0§0§0 $(num)display 12