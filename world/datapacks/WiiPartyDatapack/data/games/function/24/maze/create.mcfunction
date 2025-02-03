#   Author        =   @ T4Bl3rUs
#   Description   =   Generates a new symetrical maze 
#   Called By     =   games:24/start

scoreboard players operation minlen= 24maze = baselen= 24maze

function games:24/maze/internal/create

scoreboard players set mazeCreated= 24scores 1

function games:24/place_pads

# Spawn fake players
execute as @a[tag=ingame,team=blue,limit=1] positioned 25005.0 17 25011.0 run function games:24/summon_player
execute as @a[tag=ingame,team=red,limit=1] positioned 24970.0 17 24976.0 run function games:24/summon_player
execute as @a[tag=ingame,team=green,limit=1] positioned 25005.0 17 24976.0 run function games:24/summon_player
execute as @a[tag=ingame,team=orange,limit=1] positioned 24970.0 17 25011.0 run function games:24/summon_player
schedule function games:24/set_heads 3t
effect give @e[type=armor_stand,tag=24player] glowing infinite 1 true

#Spawn minecarts
kill @e[type=minecraft:minecart,tag=maze]
execute as @a[tag=ingame,team=blue] run summon minecraft:minecart 24986.0 40 24983 {Rotation:[270f,0f],Tags:["maze","blue"],NoGravity:1b}
execute as @a[tag=ingame,team=red] run summon minecraft:minecart 24987.0 40 24983 {Rotation:[90f,0f],Tags:["maze","red"],NoGravity:1b}
execute as @a[tag=ingame,team=green] run summon minecraft:minecart 24988.0 40 24983 {Rotation:[180f,0f],Tags:["maze","green"],NoGravity:1b}
execute as @a[tag=ingame,team=orange] run summon minecraft:minecart 24989.0 40 24983 {Rotation:[0f,0f],Tags:["maze","orange"],NoGravity:1b}

team join noCollision @e[type=minecraft:minecart,tag=maze]

schedule clear games:24/maze/create