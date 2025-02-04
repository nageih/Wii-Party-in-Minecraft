#   Author        =   @ JevinLevin
#   Description   =   Ran at the very start of the minigame
#   Called By     =   


# Sets the ingame score to 1, indicating that the game is starting
scoreboard players set ingame 2scores 1

# Sets the global minigame score to the current minigame number, this is to ensure that the tick function is being run
scoreboard players set global minigame 2

scoreboard players set start= 2scores 0

scoreboard players set rad= specOptions 25
scoreboard players set x= specOptions 1997
scoreboard players set z= specOptions 2010
scoreboard players set miny= specOptions 11
scoreboard players set maxy= specOptions 30
scoreboard players set enabled= specOptions 1

# These tellraws explain the game
tellraw @a[tag=playing] ""
tellraw @a[team=blue] [{"translate":"game.ZombieTagName","color":"#0088ff","bold":true,"underlined": true}]
tellraw @a[team=red] [{"translate":"game.ZombieTagName","color":"red","bold":true,"underlined": true}]
tellraw @a[team=green] [{"translate":"game.ZombieTagName","color":"green","bold":true,"underlined": true}]
tellraw @a[team=orange] [{"translate":"game.ZombieTagName","color":"gold","bold":true,"underlined": true}]
tellraw @a[tag=playing,tag=!ingame] [{"translate":"game.ZombieTagName","color":"light_purple","bold":true,"underlined": true}]
tellraw @a[tag=playing] ""
tellraw @a[tag=playing] [{"translate":"game.HowToPlay","color":"gray","bold":true}]
tellraw @a[tag=playing] [{"translate":"game.ZombieTag.How.1","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.ZombieTag.How.2","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] [{"translate":"game.ZombieTag.How.3","color":"gray","with":[{"text":"-"}]}]
tellraw @a[tag=playing] ""

# Teleport all players to the minigame
tp @a[tag=playing] 1982 12 2007
spreadplayers 1982 2007 3 3 under 12 true @a[tag=playing]
execute as @a[tag=playing] at @s run tp @s ~ ~ ~ facing 1998.0 13 2010 

# Ding sound effect
execute as @a[tag=playing] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.7

# Give all players the weakness effect to make sure they can't punch other players to throw them off, this effect is cleared when it is their turn to shoot however
effect give @a[tag=ingame] minecraft:weakness infinite 255 true

# Removes all players position tags, just for debugging purposes
function general:reset_tags

# Schedules the next segment, which will display a title
schedule function games:2/starttitle 2s

# Sets the time to midnight to match the theme of the minigame
time set midnight

# Runs the function to open the gate fully
function games:2/gates/1
# Clears any extra gate thats left over
fill 1989 14 2008 1989 11 2012 minecraft:air

# Gives players a tag witht he same name as their team, so that when they leave the team during the game they can be readded to it when the game ends
tag @a[team=blue] add blue
tag @a[team=red] add red
tag @a[team=green] add green
tag @a[team=orange] add orange

tag @a remove dead

# Create zombie team
team add 1zombie
team modify 1zombie collisionRule never
team modify 1zombie color dark_red
team modify 1zombie prefix "[☠] "
team modify 1zombie friendlyFire false

# Sets a sign infront of the main big grave, and says 'Here lies' and then the name of a random player
setblock 1993 11 2010 minecraft:oak_wall_sign[facing=west]{front_text:{messages:['""','{"nbt":"colors.base","storage":"minecraft:config","interpret":true,"extra":[{"translate":"game.ZombieTag.HereLies","bold":true}],"source":"storage","type":"nbt"}','{"selector":"@r","color":"red","underlined":true,"type":"selector"}','""']}} destroy

# Makes the scoreboard visible and updates it
scoreboard objectives setdisplay sidebar 2display
function games:2/display

# Gives every player a unique ID score, for the stupid zombie argo system
execute as @a[tag=ingame] run function games:2/give_id
tag @a[tag=ingame] remove id

# Kill all entities used for the mingame that arent needed anymore
kill @e[type=minecraft:zombie,tag=zombietag]
kill @e[type=minecraft:armor_stand,tag=2flowerpot]