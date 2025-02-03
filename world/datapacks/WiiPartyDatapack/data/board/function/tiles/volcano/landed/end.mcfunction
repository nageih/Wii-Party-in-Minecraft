playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1.25

ride @a[tag=turn,limit=1] dismount 

# Clears the players slow falling
attribute @s minecraft:generic.gravity base set 0.08

# Eliminates the players motion
tp @s @s
# Aligns the player to the middle of the platform
execute at @s align xyz run tp @s ~.5 ~ ~.5
# Checks if the player is underground, if so
execute at @s align xyz unless block ~ ~ ~ minecraft:air run tp @s ~.5 ~1 ~.5
execute at @s align xyz unless block ~ ~ ~ minecraft:air run tp @s ~.5 ~1 ~.5

particle minecraft:angry_villager ~ ~ ~ 1 .5 1 0.01 30

# Summons boat above the player, with area effect clouds in them to stop the player getting inside, and time when the boat should be killed
execute at @s run summon minecraft:boat ~ ~1 ~ {Type:"acacia",Tags:["boostBoat"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:39,Tags:["boostBoat"]},{id:"minecraft:area_effect_cloud",Duration:39}]}
# Gives the player slowness so they cant escape
effect give @a[tag=turn] minecraft:slowness 2 255 true


function board:tiles/volcano/reset
function board:tiles/volcano/landed/reset

scoreboard players remove @s boardPos 4
scoreboard players remove @s newBoardPos 4

scoreboard players set @s[scores={boardPos=..-1}] boardPos 0
scoreboard players set @s[scores={newBoardPos=..-1}] newBoardPos 0

function board:tiles/volcano/landed/redo_check

execute unless score repeatVolcano= tiles matches 1 as @a[tag=turn] run function board:tiles/volcano/landed/true_end

scoreboard players reset repeatVolcano= tiles
