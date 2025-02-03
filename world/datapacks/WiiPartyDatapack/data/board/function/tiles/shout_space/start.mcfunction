#   Author        =   @ JevinLevin
#   Description   =   Starts the shout space segment
#   Called By     =   board:dice_roll/tiles


# Summons an area effect cloud at the skull tile the player landed at
execute if score @a[tag=turn,limit=1] newBoardPos matches 106 run summon minecraft:area_effect_cloud -653 66 -682 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["shoutStart"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 110.. run summon minecraft:area_effect_cloud -667 65 -667 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["shoutStart"]}

# Teleports the spectators around the tile
execute if score @a[tag=turn,limit=1] newBoardPos matches 106 run spreadplayers -653 -682 5 5 under 28 false @a[tag=!turn,tag=playing]
execute if score @a[tag=turn,limit=1] newBoardPos matches 110.. run spreadplayers -667 -667 5 5 under 55 false @a[tag=!turn,tag=playing]

# Checks the players skullReturnTile and summons an area effect cloud at the tile they are returning to
execute if score @a[tag=turn,limit=1] skullReturnTile matches 33 run forceload add -198 113
execute if score @a[tag=turn,limit=1] skullReturnTile matches 84 run forceload add -230 50
execute if score @a[tag=turn,limit=1] skullReturnTile matches 44 run forceload add -211 40
execute if score @a[tag=turn,limit=1] skullReturnTile matches 33 run summon minecraft:area_effect_cloud -198 27 113 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["shoutEnd"]}
execute if score @a[tag=turn,limit=1] skullReturnTile matches 84 run summon minecraft:area_effect_cloud -230 54 50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["shoutEnd"]}
execute if score @a[tag=turn,limit=1] skullReturnTile matches 44 run summon minecraft:area_effect_cloud -211 33 40 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["shoutEnd"]}

# Teleports the spectators to the right Y level
execute as @a[tag=!turn,tag=playing] at @s run tp @s ~ 67 ~ facing entity @a[tag=turn,limit=1]

# Sets the skull= score to 1 to start running the volcano animation
scoreboard players set shout= tiles 1

# Sets the moving= score to 0 to stop tile starts triggering
scoreboard players set moving= dice 0

# Resets the players speed attribute back to default
attribute @a[tag=turn,limit=1] generic.movement_speed base set 0.1

# Clears everyones skip coas
clear @a[tag=playing] carrot_on_a_stick[custom_data={skip:1b}]

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @a[tag=turn] sprintDistance