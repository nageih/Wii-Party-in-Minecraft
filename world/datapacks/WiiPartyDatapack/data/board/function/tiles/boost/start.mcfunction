#   Author        =   @ JevinLevin
#   Description   =   Starts the boosting segment
#   Called By     =   board:dice_roll/tiles


# Summons a start and end point AEC depending on the players tile
# Regular boosts
execute if score @a[tag=turn,limit=1] newBoardPos matches 1 run summon minecraft:area_effect_cloud -298 13 115 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 1 run summon minecraft:area_effect_cloud -286 21 40 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 7 run summon minecraft:area_effect_cloud -286 20 23 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 7 run summon minecraft:area_effect_cloud -298 13 97 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 11 run summon minecraft:area_effect_cloud -264 16 -21 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 11 run summon minecraft:area_effect_cloud -242 13 -33 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 23 run summon minecraft:area_effect_cloud -128 8 38 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 23 run summon minecraft:area_effect_cloud -151 10 81 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 24 run summon minecraft:area_effect_cloud -119 8 45 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 24 run summon minecraft:area_effect_cloud -149 11 40 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 30 run summon minecraft:area_effect_cloud -166 15 105 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 30 run summon minecraft:area_effect_cloud -207 26 122 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 40 run summon minecraft:area_effect_cloud -247 29 73 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 40 run summon minecraft:area_effect_cloud -230 26 117 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 45 run summon minecraft:area_effect_cloud -204 30 30 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 45 run summon minecraft:area_effect_cloud -231 34 60 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 52 run summon minecraft:area_effect_cloud -205 21 -50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 52 run summon minecraft:area_effect_cloud -158 21 -2 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 54 run summon minecraft:area_effect_cloud -178 21 -16 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 54 run summon minecraft:area_effect_cloud -115 21 16 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 57 run summon minecraft:area_effect_cloud -144 21 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 57 run summon minecraft:area_effect_cloud -213 23 -35 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 63 run summon minecraft:area_effect_cloud -102 18 74 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 63 run summon minecraft:area_effect_cloud -128 14 98 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 74 run summon minecraft:area_effect_cloud -159 26 98 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 74 run summon minecraft:area_effect_cloud -135 18 98 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 77 run summon minecraft:area_effect_cloud -193 32 86 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 77 run summon minecraft:area_effect_cloud -230 45 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 81 run summon minecraft:area_effect_cloud -230 45 75 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 81 run summon minecraft:area_effect_cloud -193 32 86 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 89 run summon minecraft:area_effect_cloud -195 58 48 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 89 run summon minecraft:area_effect_cloud -214 56 34 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
# Yeeters
execute if score @a[tag=turn,limit=1] newBoardPos matches 10 run summon minecraft:area_effect_cloud -262.0 16.5 -10.0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 10 run summon minecraft:area_effect_cloud -119 8 56 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 12 run summon minecraft:area_effect_cloud -265.0 15.5 -35.0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 12 run summon minecraft:area_effect_cloud -119 8 56 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 38 run summon minecraft:area_effect_cloud -266.0 26.5 88.0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostStart","boostAEC"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 38 run summon minecraft:area_effect_cloud -269 16 -24 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["boostEnd","boostAEC"]}

# Checks if the player is on a yeeter, if so sets the boostYeet= score to 1
execute if score @a[tag=turn,limit=1] newBoardPos matches 10 run scoreboard players set boostYeet= tiles 1
execute if score @a[tag=turn,limit=1] newBoardPos matches 12 run scoreboard players set boostYeet= tiles 1
execute if score @a[tag=turn,limit=1] newBoardPos matches 38 run scoreboard players set boostYeet= tiles 1


# Gives the player a high value of slowing falling so that they dont fall
execute if entity @e[type=area_effect_cloud,tag=boostStart] as @a[tag=turn] run attribute @s minecraft:generic.gravity base set 0

# If the player in on a regular boost, it sets the boostTimer= score to 1 to show that the player is getting boosted now
execute if entity @e[type=area_effect_cloud,tag=boostStart] unless score boostYeet= tiles matches 1 run scoreboard players set boostTimer= tiles 1
# If the player in on a yeeter, it sets the yeetTimer= score to 1 to show that the player is getting yeeted now
execute if entity @e[type=area_effect_cloud,tag=boostStart] if score boostYeet= tiles matches 1 run scoreboard players set yeetTimer= tiles 1

# Summons a turtle to be teleported along the trajectory
execute at @e[type=area_effect_cloud,tag=boostStart] run summon turtle ~ 0 ~ {Invulnerable:1b,Silent:1b,Age:-100000,Tags:["boostStand"],NoAI:1b}
execute at @e[type=area_effect_cloud,tag=boostStart] run tp @e[type=turtle,tag=boostStand] ~ ~1 ~

# Joins the turtle to the noCollision team so that it doesnt nudge around the player
team join noCollision @e[type=turtle,tag=boostStand]

# Gives the turtle invisibility so you cant see it
effect give @e[type=turtle,tag=boostStand] invisibility 1000000 1 true

# Teleports the player to their tile
execute at @e[type=turtle,tag=boostStand,limit=1] run tp @a[tag=turn] ~ ~ ~

# Sets their boardPos to be the same as the tile they just moved to, their newBoard Pos
scoreboard players operation @a[tag=turn] boardPos = @a[tag=turn,limit=1] newBoardPos
# Teleports all spectators to the player
execute as @a[tag=turn] run function board:dice_roll/spectator_tp

# Plays donk sound
execute at @e[type=area_effect_cloud,tag=boostStart] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 100 0

# Checks which type of boost the player is on, and if so sets the boostType score to the relevant value. This is used to show the correct particles.
    # Regular boosts
    execute at @e[type=area_effect_cloud,tag=boostStart] if block ~ ~-1 ~ light_blue_concrete run scoreboard players set boostType= tiles 1
    execute at @e[type=area_effect_cloud,tag=boostStart] if block ~ ~-1 ~ red_concrete run scoreboard players set boostType= tiles 0
    # Yeeters
    execute if score @a[tag=turn,limit=1] newBoardPos matches 10 run scoreboard players set boostType= tiles 1
    execute if score @a[tag=turn,limit=1] newBoardPos matches 13 run scoreboard players set boostType= tiles 1
    execute if score @a[tag=turn,limit=1] newBoardPos matches 38 run scoreboard players set boostType= tiles 0

# Summons the spring at the tile
execute at @e[type=area_effect_cloud,tag=boostStart] unless score boostYeet= tiles matches 1 if score boostType= tiles matches 1 run summon shulker ~ ~ ~ {Silent:1b,NoAI:1b,Peek:30b,AttachFace:0b,Color:3b,Tags:["boostSpring"],Invulnerable:1b}
execute at @e[type=area_effect_cloud,tag=boostStart] unless score boostYeet= tiles matches 1 if score boostType= tiles matches 0 run summon minecraft:shulker ~ ~ ~ {Tags:["boostSpring"],Silent:1b,NoAI:1b,Color:14,Peek:30b,Invulnerable:1b}
execute as @e[type=area_effect_cloud,tag=boostStart] store result entity @s Air double 1 run time query gametime

# Runs the function to get rid of all the blocking barriers
function board:dice_roll/prevent/clear_back
function board:dice_roll/prevent/clear_too_far

# Replaces the barriers in the area around the end and start point with structure voids so that the player doesnt take damage when they go through it
execute at @e[type=area_effect_cloud,tag=boostStart] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 structure_void replace barrier
execute at @e[type=area_effect_cloud,tag=boostEnd] run fill ~-21 ~-8 ~-21 ~21 ~8 ~21 structure_void replace barrier

# Teleports the player to themself to get rid of their motion
tp @a[tag=turn] @a[tag=turn,limit=1]

# Sets the moving= score to 0 to show that the player is no longer moving across the board
scoreboard players set moving= dice 0

# Clears any more scheduled functions
schedule clear board:tiles/boost/start

# Resets the players speed attribute back to default
attribute @a[tag=turn,limit=1] generic.movement_speed base set 0.1

# Remove gravity
attribute @a[tag=turn,limit=1] generic.gravity base set 0.0
attribute @e[type=turtle,tag=boostStand,limit=1] generic.gravity base set 0.0

# Clears everyones skip coas
clear @a[tag=playing] carrot_on_a_stick[custom_data={skip:1b}]

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @a[tag=turn] sprintDistance

function board:dice_roll/board_display