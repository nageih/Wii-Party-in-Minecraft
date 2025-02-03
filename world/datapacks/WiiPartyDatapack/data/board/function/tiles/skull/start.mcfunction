#   Author        =   @ JevinLevin
#   Description   =   Start the segment to transport the player into the volcano
#   Called By     =   board:dice_roll/tiles


# Summons an area effect cloud at the skull tile the player landed at
execute if score @a[tag=turn,limit=1] newBoardPos matches 33 run summon minecraft:area_effect_cloud -198 27 113 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["skullStart"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 84 run summon minecraft:area_effect_cloud -230 54 50 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["skullStart"]}

# Teleports the spectators around the player
execute if score @a[tag=turn,limit=1] newBoardPos matches 33 run spreadplayers -198 113 5 5 under 28 false @a[tag=!turn,tag=playing]
execute if score @a[tag=turn,limit=1] newBoardPos matches 84 run spreadplayers -230 49 5 5 under 55 false @a[tag=!turn,tag=playing]

# Sets the skull= score to 1 to start running the volcano animation
scoreboard players set skull= tiles 1

# Sets the players skullReturnTile score to be same as the players current score, so that when they exit the volcano they go back to the tile
execute if score @a[tag=turn,limit=1] newBoardPos matches 33 run scoreboard players set @a[tag=turn] skullReturnTile 33
execute if score @a[tag=turn,limit=1] newBoardPos matches 84 run scoreboard players set @a[tag=turn] skullReturnTile 84

execute if score @a[tag=turn,limit=1] newBoardPos matches 44 at @a[tag=turn,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["skullStart"]}
execute if score @a[tag=turn,limit=1] newBoardPos matches 44 run scoreboard players set @a[tag=turn] skullReturnTile 44

# Sets the moving= score to 0 to show that the player is no longer moving across the board
scoreboard players set moving= dice 0

# Removes the players volcano tag if they are no longer there
execute unless score @a[tag=turn,limit=1] boardPos matches 100.. run tag @a[tag=turn] remove volcano

# Clears any more scheduled functions
schedule clear board:tiles/skull/start

# Resets the players speed attribute back to default
attribute @a[tag=turn,limit=1] generic.movement_speed base set 0.1

# Clears everyones skip coas
clear @a[tag=playing] carrot_on_a_stick[custom_data={skip:1b}]

# Resets their sprintdistance score too so that they dont immediately start at a high speed next time
scoreboard players reset @a[tag=turn] sprintDistance